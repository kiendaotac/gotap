<?php

namespace Theme\Gotap\Http\Controllers;

use Assets;
use Botble\Account\Models\SocialItem;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Media\Services\ThumbnailService;
use Botble\Member\Http\Resources\ActivityLogResource;
use Botble\Social\Models\Social;
use File;
use Illuminate\Http\Request;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Media\Repositories\Interfaces\MediaFileInterface;
use Botble\Member\Http\Requests\AvatarRequest;
use Botble\Member\Http\Requests\SettingRequest;
use Botble\Member\Http\Requests\UpdatePasswordRequest;
use Botble\Member\Repositories\Interfaces\MemberActivityLogInterface;
use Botble\Member\Repositories\Interfaces\MemberInterface;
use Exception;
use Illuminate\Contracts\Config\Repository;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\Rule;
use RvMedia;
use SeoHelper;
use Theme;
use Illuminate\Support\Facades\Validator;

class PublicController extends Controller
{
    /**
     * @var MemberInterface
     */
    protected $memberRepository;

    /**
     * @var MemberActivityLogInterface
     */
    protected $activityLogRepository;

    /**
     * @var MediaFileInterface
     */
    protected $fileRepository;

    /**
     * PublicController constructor.
     * @param Repository $config
     * @param MemberInterface $memberRepository
     * @param MemberActivityLogInterface $memberActivityLogRepository
     * @param MediaFileInterface $fileRepository
     */
    public function __construct(
        Repository $config,
        MemberInterface $memberRepository,
        MemberActivityLogInterface $memberActivityLogRepository,
        MediaFileInterface $fileRepository
    ) {
        $this->memberRepository = $memberRepository;
        $this->activityLogRepository = $memberActivityLogRepository;
        $this->fileRepository = $fileRepository;

        Assets::setConfig($config->get('plugins.member.assets', []));
    }

    /**
     * @return \Botble\Theme\Facades\Response|\Illuminate\Http\JsonResponse|\Illuminate\View\View|\Response
     */
    public function getDashboard()
    {
        $user = Auth::guard('member')->user()->load(['account' => function($q) {
            $q->with(['items' => function($q) {
                $q->with('social');
            }]);
        }]);

        $theme = Theme::uses()->layout('tappi-profile');

        SeoHelper::setTitle($user->account->fullname . ' - ' .__('Profile') . ' - ' . theme_option('site_title'));

        return $theme->scope('tappi.profile', compact('user'))->render();
    }

    public function editProfile()
    {
        $user = Auth::guard('member')->user()->load('account');

        $theme = Theme::uses()->layout('tappi-master');

        return $theme->scope('tappi.profile.edit', compact('user'))->render();
    }

    public function updateProfile(Request $request)
    {
        $user = Auth::guard('member')->user()->load('account');
        $request->validate([
            'avatar'        =>  'required|string',
            'fullname'      =>  'required|string',
            'username'      =>  'required|string|' . Rule::unique('accounts', 'username')->ignore($user->account->id),
            'description'   =>  'required|string',
            'address'       =>  'required|string',
        ]);
        $user->account()->update($request->only(['avatar', 'fullname', 'username', 'description', 'address']));

        return redirect()->route('public.member.profile.index');
    }

    public function indexProfileSocial()
    {
        $user = Auth::guard('member')->user()->load(['account' => function($q) {
            $q->with(['items' => function($q) {
                $q->with('social');
            }]);
        }]);

        $theme = Theme::uses()->layout('tappi-master');

        return $theme->scope('tappi.profile.social', compact('user'))->render();
    }

    public function addProfileSocial()
    {
        $theme = Theme::uses()->layout('tappi-add');

        $socials = Social::where('status', BaseStatusEnum::PUBLISHED)->get();

        return $theme->scope('tappi.profile.social-add', compact('socials'))->render();
    }

    public function storeProfileSocial(Request $request)
    {
        $request->validate([
            'social_id' =>  'required|numeric',
            'name'      =>  'required|string',
            'social_value'  =>  'required|string'
        ]);

        $data = $request->only(['social_id', 'name', 'social_value']);
        $data['social_app'] = $request->social_value;
        $data['description'] = $request->social_value;
        $item = new SocialItem($data);
        Auth::guard('member')->user()->load('account')->account->items()->save($item);

        return redirect()->route('public.member.profile.index');
    }

    public function editProfileSocial($id)
    {
        $theme = Theme::uses()->layout('tappi-add');

        $socials = Social::where('status', BaseStatusEnum::PUBLISHED)->get();

        $item = SocialItem::findOrFail($id);

        return $theme->scope('tappi.profile.social-edit', compact('socials', 'item'))->render();
    }

    public function updateProfileSocial(Request $request, $id)
    {
        $request->validate([
            'social_id' =>  'required|numeric',
            'name'      =>  'required|string',
            'social_value'  =>  'required|string'
        ]);
        $item = SocialItem::where('account_id', Auth::guard('member')->user()->load('account')->account->id)
            ->where('id', $id)->firstOrFail();
        $item->name = $request->name;
        $item->social_id = $request->social_id;
        $item->social_value = $request->social_value;
        $item->social_app = $request->social_value;
        $item->description = $request->social_value;
        $item->save();

        return redirect()->route('public.member.profile.index');
    }

    public function updatePositionSocial(Request $request)
    {
        $socials = explode( ',', $request->socials);
        if (!$socials) return redirect()->back();

        $items = SocialItem::where('account_id', Auth::guard('member')->user()->load('account')->account->id)
            ->whereIn('id', $socials)->get();
        foreach ($socials as $index => $social) {
            $items->find($social)->update(['order' => $index]);
        }

        return redirect()->route('public.member.profile.index');
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     *
     * @throws \Illuminate\Contracts\Filesystem\FileNotFoundException
     */
    public function getSettings()
    {
        SeoHelper::setTitle(__('Account settings'));

        $user = auth('member')->user();

        return view('plugins/member::settings.index', compact('user'));
    }

    /**
     * @param SettingRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse|\Illuminate\Http\RedirectResponse
     */
    public function postSettings(SettingRequest $request, BaseHttpResponse $response)
    {
        $year = $request->input('year');
        $month = $request->input('month');
        $day = $request->input('day');

        if ($year && $month && $day) {
            $request->merge(['dob' => implode('-', [$year, $month, $day])]);

            $validator = Validator::make($request->input(), [
                'dob' => 'nullable|date',
            ]);

            if ($validator->fails()) {
                return redirect()->route('public.member.settings');
            }
        }

        $this->memberRepository->createOrUpdate($request->except('email'),
            ['id' => auth('member')->user()->getAuthIdentifier()]);

        $this->activityLogRepository->createOrUpdate(['action' => 'update_setting']);

        return $response
            ->setNextUrl(route('public.member.settings'))
            ->setMessage(__('Update profile successfully!'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     *
     * @throws \Illuminate\Contracts\Filesystem\FileNotFoundException
     */
    public function getSecurity()
    {
        SeoHelper::setTitle(__('Security'));

        return view('plugins/member::settings.security');
    }

    /**
     * @param UpdatePasswordRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function postSecurity(UpdatePasswordRequest $request, BaseHttpResponse $response)
    {
        $this->memberRepository->update(['id' => auth('member')->user()->getAuthIdentifier()], [
            'password' => bcrypt($request->input('password')),
        ]);

        $this->activityLogRepository->createOrUpdate(['action' => 'update_security']);

        return $response->setMessage(trans('plugins/member::dashboard.password_update_success'));
    }

    /**
     * @param AvatarRequest $request
     * @param ThumbnailService $thumbnailService
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function postAvatar(AvatarRequest $request, ThumbnailService $thumbnailService, BaseHttpResponse $response)
    {
        try {
            $account = auth('member')->user();

            $result = RvMedia::handleUpload($request->file('avatar_file'), 0, 'members');

            if ($result['error'] != false) {
                return $response->setError()->setMessage($result['message']);
            }

            $avatarData = json_decode($request->input('avatar_data'));

            $file = $result['data'];

            $thumbnailService
                ->setImage(RvMedia::getRealPath($file->url))
                ->setSize((int)$avatarData->width, (int)$avatarData->height)
                ->setCoordinates((int)$avatarData->x, (int)$avatarData->y)
                ->setDestinationPath(File::dirname($file->url))
                ->setFileName(File::name($file->url) . '.' . File::extension($file->url))
                ->save('crop');

            $this->fileRepository->forceDelete(['id' => $account->avatar_id]);

            $account->avatar_id = $file->id;

            $this->memberRepository->createOrUpdate($account);

            $this->activityLogRepository->createOrUpdate([
                'action' => 'changed_avatar',
            ]);

            return $response
                ->setMessage(trans('plugins/member::dashboard.update_avatar_success'))
                ->setData(['url' => RvMedia::url($file->url)]);
        } catch (Exception $exception) {
            return $response
                ->setError()
                ->setMessage($exception->getMessage());
        }
    }

    /**
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function getActivityLogs(BaseHttpResponse $response)
    {
        $activities = $this->activityLogRepository->getAllLogs(auth('member')->user()->getAuthIdentifier());

        return $response->setData(ActivityLogResource::collection($activities))->toApiResponse();
    }

    /**
     * @param Request $request
     * @return mixed
     * @throws \Illuminate\Contracts\Filesystem\FileNotFoundException
     */
    public function postUpload(Request $request)
    {
        return RvMedia::uploadFromEditor($request);
    }
}
