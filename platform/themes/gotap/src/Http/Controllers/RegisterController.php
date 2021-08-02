<?php

namespace Theme\Gotap\Http\Controllers;

use App\Http\Controllers\Controller;
use Botble\Account\Models\Account;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Member\Models\Member;
use Botble\Member\Repositories\Interfaces\MemberInterface;
use Illuminate\Auth\Events\Registered;
use Botble\ACL\Traits\RegistersUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;
use SeoHelper;
use URL;
use Theme;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after login / registration.
     *
     * @var string
     */
    protected $redirectTo = null;

    /**
     * @var MemberInterface
     */
    protected $memberRepository;

    /**
     * Create a new controller instance.
     *
     * @param MemberInterface $memberRepository
     */
    public function __construct(MemberInterface $memberRepository)
    {
        $this->memberRepository = $memberRepository;
        $this->redirectTo = route('public.member.register');
    }

    /**
     * Show the application registration form.
     *
     * @return \Botble\Theme\Facades\Response|\Illuminate\Contracts\View\Factory|\Illuminate\View\View|\Response
     * @throws \Illuminate\Contracts\Filesystem\FileNotFoundException
     */
    public function showRegistrationForm()
    {
        $theme = Theme::uses()->layout('tappi-auth');

        SeoHelper::setTitle(__('Register') . ' - ' . theme_option('site_title'));

        return $theme->scope('tappi.register')->render();

    }

    /**
     * Confirm a user with a given confirmation code.
     *
     * @param $email
     * @param Request $request
     * @param BaseHttpResponse $response
     * @param MemberInterface $memberRepository
     * @return BaseHttpResponse
     */
    public function confirm($email, Request $request, BaseHttpResponse $response, MemberInterface $memberRepository)
    {
        if (!URL::hasValidSignature($request)) {
            abort(404);
        }

        $member = $memberRepository->getFirstBy(['email' => $email]);

        if (!$member) {
            abort(404);
        }

        $member->confirmed_at = now();
        $this->memberRepository->createOrUpdate($member);

        $this->guard()->login($member);

        return $response
            ->setNextUrl(route('public.member.dashboard'))
            ->setMessage(trans('plugins/member::member.confirmation_successful'));
    }

    /**
     * Get the guard to be used during registration.
     *
     * @return \Illuminate\Contracts\Auth\StatefulGuard
     */
    protected function guard()
    {
        return auth('member');
    }

    /**
     * Resend a confirmation code to a user.
     *
     * @param  \Illuminate\Http\Request $request
     * @param MemberInterface $memberRepository
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function resendConfirmation(Request $request, MemberInterface $memberRepository, BaseHttpResponse $response)
    {
        $member = $memberRepository->getFirstBy(['email' => $request->input('email')]);
        if (!$member) {
            return $response
                ->setError()
                ->setMessage(__('Cannot find this account!'));
        }

        $this->sendConfirmationToUser($member);

        return $response
            ->setMessage(trans('plugins/member::member.confirmation_resent'));
    }

    /**
     * Send the confirmation code to a user.
     *
     * @param Member $member
     */
    protected function sendConfirmationToUser($member)
    {
        // Notify the user
        $notificationConfig = config('plugins.member.general.notification');
        if ($notificationConfig) {
            $notification = app($notificationConfig);
            $member->notify($notification);
        }
    }

    /**
     * Handle a registration request for the application.
     *
     * @param \Illuminate\Http\Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function register(Request $request, BaseHttpResponse $response)
    {
        $data = $request->input();

        $this->validator($data)->validate();

        $account = Account::where('uuid', $data['uuid'])->where('code', Str::upper($data['code']))->where('status', BaseStatusEnum::PENDING)->first();

        if (!$account) {
            return redirect()->back()->withInput()->withErrors(['code'=>'Code is not valid']);
        }
        event(new Registered($member = $this->create($data, $account)));

        if (setting('verify_account_email', config('plugins.member.general.verify_email'))) {
            $this->sendConfirmationToUser($member);
            return $this->registered($request, $member)
                ?: $response->setNextUrl($this->redirectPath())->setMessage(trans('plugins/member::member.confirmation_info'));
        }

        $member->confirmed_at = now();
        $this->memberRepository->createOrUpdate($member);
        $this->guard()->login($member);
        return $this->registered($request, $member)
            ?: $response->setNextUrl($this->redirectPath());
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'first_name' => 'required|max:120',
            'last_name'  => 'required|max:120',
            'email'      => 'required|email|max:255|unique:members',
            'password'   => 'required|min:6|confirmed',
            'uuid'      =>  'required|string|'.Rule::exists('accounts', 'uuid'),
            'code'      =>  'required|string',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array $data
     * @return Member
     */
    protected function create(array $data, $account)
    {
        $user =  $this->memberRepository->create([
            'first_name' => $data['first_name'],
            'last_name'  => $data['last_name'],
            'email'      => $data['email'],
            'password'   => bcrypt($data['password']),
        ]);

        $account->update(['member_id' => $user->id, 'status' => BaseStatusEnum::PUBLISHED]);
        return $user;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getVerify()
    {
        return view('plugins/member::auth.verify');
    }
}
