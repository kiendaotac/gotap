<?php

namespace Theme\Gotap\Http\Controllers;

use App\Http\Controllers\Controller;
use Botble\ACL\Traits\ResetsPasswords;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Password;
use SeoHelper;
use Theme;

class ResetPasswordController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Password Reset Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling password reset requests
    | and uses a simple trait to include this behavior. You're free to
    | explore this trait and override any methods you wish to tweak.
    |
    */

    use ResetsPasswords;

    /**
     * Where to redirect users after login / registration.
     *
     * @var string
     */
    public $redirectTo = null;


    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->redirectTo = route('public.member.profile.index');
    }

    /**
     * Display the password reset view for the given token.
     *
     * If no token is present, display the link request form.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  string|null $token
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @throws \Illuminate\Contracts\Filesystem\FileNotFoundException
     */
    public function showResetForm(Request $request, $token = null)
    {
        SeoHelper::setTitle(__('Reset Password'));

        return view('plugins/member::auth.passwords.reset', ['token' => $token, 'email' => $request->email]);
    }

    /**
     * Get the broker to be used during password reset.
     *
     * @return \Illuminate\Contracts\Auth\PasswordBroker
     */
    public function broker()
    {
        return Password::broker('members');
    }

    /**
     * Get the guard to be used during password reset.
     *
     * @return \Illuminate\Contracts\Auth\StatefulGuard
     */
    protected function guard()
    {
        return auth('member');
    }

    public function showChangePasswordForm()
    {
        $theme = Theme::uses()->layout('gotap');

        return $theme->scope('gotap.changepassword.index')->render();
    }

    public function storePassword(Request $request)
    {
        $request->validate([
            'password' =>   'required',
            'newpassword' => 'required|min:6|confirmed'
        ]);
        $user = Auth::guard('member')->user();
        if (!(Hash::check($request->get('password'), $user->password))) {
            return redirect()->back()->withErrors(['password' => "Sai mật khẩu"]);
        }

        if(strcmp($request->get('password'), $request->get('newpassword')) == 0){
            return redirect()->back()->withErrors(['newpassword' => "Mật khẩu mới không được trùng mật khẩu cũ"]);
        }

        $user->password = bcrypt($request->get('newpassword'));
        $user->save();

        return redirect()->back()->with("success","Đổi mật khẩu thành công !");
    }
}
