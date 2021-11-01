<?php

namespace Theme\Gotap\Http\Controllers;

use Assets;
use Botble\Account\Models\SocialItem;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Media\Services\ThumbnailService;
use Botble\Member\Http\Resources\ActivityLogResource;
use Botble\Social\Models\Social;
use Botble\SocialTheme\Models\SocialTheme;
use Botble\Theme\Facades\Response;
use File;
use Illuminate\Http\RedirectResponse;
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

const FACEBOOK    = 'facebook';
const INSTAGRAM   = 'instagram';
const GITHUB      = 'github';
const YOUTUBE     = 'youtube';
const TIKTOK      = 'tiktok';
const PINTEREST   = 'pinterest';
const LINKEDIN      = 'linkedin';
const TWITTER     = 'twitter';
const SNAPCHAT    = 'snapchat';
const ZALO        = 'zalo';
const PHONE       = 'phone';
const SMS         = 'sms';
const EMAIL       = 'email';
const SOUNDCLOUD  = 'soundcloud';
const TELEGRAM    = 'telegram';
const WHATSAPP    = 'whatsapp';
const SKYPE       = 'skype';
const MOMO        = 'momo';
const GAPO        = 'gapo';
const LOTUS       = 'lotus';
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
     * @return Response|\Response
     */
    public function getDashboard()
    {
        $user = Auth::guard('member')->user()->load(['account' => function($q) {
            $q->with(['items' => function($q) {
                $theme_id = Auth::guard('member')->user()->load('account')->account->theme_id;
                $q->with(['social' => function($query) use($theme_id) {
                    $query->with(['icons' => function($query) use($theme_id) {
                        $query->where('theme_id', $theme_id);
                    }]);
                }]);
            }]);
        }]);

        $theme = Theme::uses()->layout('gotap');

        $title = $user->account ? $user->account->fullname . ' - ' .__('Profile') . ' - ' . theme_option('site_title') : __('Profile') . ' - ' . theme_option('site_title');

        SeoHelper::setTitle($title);
        Theme::asset()->serve('custom-css-user');
        return $theme->scope('gotap.profile.index', compact('user'))->render();
    }

    public function editProfile()
    {
        $user = Auth::guard('member')->user()->load('account');

        $theme = Theme::uses()->layout('gotap');
        Theme::asset()->serve('crop-image');
        return $theme->scope('gotap.profile.edit', compact('user'))->render();
    }

    public function updateProfile(Request $request)
    {
        $user = Auth::guard('member')->user()->load('account');
        $request->validate([
            'avatar'        =>  'required|string',
            'cover'        =>  'required|string',
            'fullname'      =>  'required|string',
            'username'      =>  'required|string|' . Rule::unique('accounts', 'username')->ignore($user->account->id),
            'description'   =>  'required|string',
            'address'       =>  'required|string',
        ]);
        $user->account()->update($request->only(['avatar','cover', 'fullname', 'username', 'description', 'address']));

        return redirect()->route('public.member.profile.index');
    }

    public function indexProfileSocial()
    {
        $user = Auth::guard('member')
            ->user()
            ->load(['account' => function($q) {
                $q->with(['items' => function($q) {
                    $theme_id = Auth::guard('member')->user()->load('account')->account->theme_id;
                    $q->with(['social' => function($query) use($theme_id) {
                        $query->with(['icons' => function($query) use($theme_id) {
                            $query->where('theme_id', $theme_id);
                        }]);
                    }]);
                }]);
            }]);

        $theme = Theme::uses()->layout('gotap');

        return $theme->scope('gotap.social.index', compact('user'))->render();
    }

    public function addProfileSocial()
    {
        $theme = Theme::uses()->layout('gotap');

        $theme_id = Auth::guard('member')->user()->load('account')->account->theme_id;

        $socials = Social::query()
            ->where('status', BaseStatusEnum::PUBLISHED)
            ->with(['icons' => function($query) use($theme_id) {
                $query->where('theme_id', $theme_id);
            }])->get();

        Theme::asset()->serve('select2-tailwind');
        Theme::asset()->serve('social-add-js');

        return $theme->scope('gotap.social.create', compact('socials'))->render();
    }

    public function storeProfileSocial(Request $request)
    {
        $request->validate([
            'social_id' =>  'required|numeric',
            'name'      =>  'required|string',
            'social_value'  =>  'required|string'
        ]);

        $data = $request->only(['social_id', 'name', 'social_value']);

        $social = Social::findOrFail($data['social_id']);

        $data['social_app'] = $this->RegexSocial($data['social_value'], $social->type);

        $data['description'] = $request->social_value;

        $item = new SocialItem($data);

        Auth::guard('member')->user()->load('account')->account->items()->save($item);

        return redirect()->route('public.member.profile.social');
    }

    public function editProfileSocial($id)
    {
        $theme = Theme::uses()->layout('gotap');

        $theme_id = Auth::guard('member')->user()->load('account')->account->theme_id;

        $socials = Social::query()
            ->where('status', BaseStatusEnum::PUBLISHED)
            ->with(['icons' => function($query) use($theme_id) {
                $query->where('theme_id', $theme_id);
            }])->get();

        $item = SocialItem::query()
            ->where('id', $id)
            ->with(['social' => function($query) use($theme_id) {
                $query->with(['icons' => function($query) use($theme_id) {
                    $query->where('theme_id', $theme_id);
                }]);
            }])
            ->firstOrFail();

        Theme::asset()->serve('select2-tailwind');
        Theme::asset()->serve('social-edit-js');

        return $theme->scope('gotap.social.edit', compact('socials', 'item'))->render();
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

        $data = $request->only(['social_id', 'name', 'social_value']);

        $social = Social::findOrFail($data['social_id']);

        $data['social_app'] = $this->RegexSocial($data['social_value'], $social->type);

        $data['description'] = $request->social_value;

        $item->update($data);

        return redirect()->route('public.member.profile.social');
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

    public function storeAvatar(Request $request)
    {
        $request->validate([
            'avatar' => 'required|file|image'
        ]);

        $url = RvMedia::handleUpload($request->file('avatar'), 0, 'avatars');

        return response()->json($url);
    }

    public function storeCover(Request $request)
    {
        $request->validate([
            'cover' => 'required|file|image'
        ]);

        $url = RvMedia::handleUpload($request->file('cover'), 0, 'covers');

        return response()->json($url);
    }

    /**
     * @throws Exception
     */
    public function deleteSocialItem($id): RedirectResponse
    {
        SocialItem::where('id', $id)->where('account_id', Auth::guard('member')->user()->load('account')->account->id)->firstOrFail()->delete();

        return redirect()->route('public.member.profile.social');
    }

    public function listLayout()
    {
        $theme = Theme::uses()->layout('gotap');

        $theme_id = Auth::guard('member')->user()->load('account')->account->theme_id;

        $themes = SocialTheme::where('status', BaseStatusEnum::PUBLISHED)->get();

        return $theme->scope('gotap.layout.index', compact('theme_id', 'themes'))->render();
    }

    public function updateLayout($id)
    {
        $theme = SocialTheme::where('status', BaseStatusEnum::PUBLISHED)->where('id', $id)->firstOrFail();

        Auth::guard('member')->user()->account()->update(['theme_id' => $theme->id]);

        return redirect()->back();
    }

    public function getGeneral()
    {
        $theme = Theme::uses()->layout('gotap');

        $user = Auth::guard('member')->user()->load('account');

        return $theme->scope('gotap.general.index', compact('user'))->render();
    }

    public function getQR($uuid)
    {
        $theme = Theme::uses()->layout('gotap');

        Theme::asset()->serve('qr');

        $url = route('public.member.tap.index', ['uuid' => $uuid]);

        return $theme->scope('gotap.qr.index', compact('url', 'uuid'))->render();
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
     * @return BaseHttpResponse|RedirectResponse
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
    
    /*
     * Get User ID of social network
     */
    public function RegexSocial($url, $type)
    {
        switch ($type) {
            case FACEBOOK:

                $facebookPatternId = '/(?:https?:)?\/\/(?:www\.)facebook.com\/(?:profile.php\?id=)?(?P<id>[0-9]+)/m';

                preg_match($facebookPatternId, $url, $id);

                $facebookPatternUsername = '/(?:(?:http|https):\/\/)?(?:www.)?facebook.com\/(?:(?:\w)*#!\/)?(?:pages\/)?(?:[?\w\-]*\/)?(?:profile.php\?id=(?=\d.*))?([\w\-]*)?/m';

                preg_match($facebookPatternUsername, $url, $username);

                return $profile = $id[1] ?? $username[1] ?? null;

            case INSTAGRAM:

                $instagramPattern = '/(?:https?:)?\/\/(?:www\.)?(?:instagram\.com|instagr\.am)\/(?P<username>[A-Za-z0-9_](?:(?:[A-Za-z0-9_]|(?:\.(?!\.))){0,28}(?:[A-Za-z0-9_]))?)/m';

                preg_match($instagramPattern, $url, $id);

                return $id[1] ?? null;

            case GITHUB:

                $githubPattern = '/(?:https?:)?\/\/(?:www\.)?github\.com\/(?P<login>[A-z0-9_-]+)\/?/m';

                preg_match($githubPattern, $url, $id);

                return $id[1] ?? null;

            case YOUTUBE:

                $youtubePatternChannel = '/(?:https?:)?\/\/(?:[A-z]+\.)?youtube.com\/channel\/(?P<id>[A-z0-9-\_]+)\/?/m';

                preg_match($youtubePatternChannel, $url, $channel);

                $youtubePatternUser = '/(?:https?:)?\/\/(?:[A-z]+\.)?youtube.com\/user\/(?P<username>[A-z0-9]+)\/?/m';

                preg_match($youtubePatternUser, $url, $user);

                $youtubePatternVideo = '/(?:https?:)?\/\/(?:(?:www\.)?youtube\.com\/(?:watch\?v=|embed\/)|youtu\.be\/)(?P<id>[A-z0-9\-\_]+)/m';

                preg_match($youtubePatternVideo, $url, $video);

                return $channel[1] ?? $user[1] ?? $video[1] ?? null;

            case TIKTOK:

                return $url;
                // Pattern: (?:http|https)?\/\/(?:[A-z]+\.)?tiktok\.com\/@?(?!video|share|privacy|tos)(?P<username>[A-z0-9_]+)\/?
//                $tiktokPattern = '/(?:http|https)?\/\/(?:[A-z]+\.)?tiktok\.com\/@?(?!video|share|privacy|tos)(?P<username>[A-z0-9_]+)\/?';
//
//                preg_match($tiktokPattern, $url, $user);
//
//                return $user[1] ?? $url;

            case PINTEREST:

                $pinterestPattern = '/(?:(?:http|https):\/\/)?(?:www.)?pinterest.com\/(?:(?:\w)*#!\/)?(?:[?\w\-]*\/)?([\w\-]*)?/m';

                preg_match($pinterestPattern, $url, $username);

                return $username[1] ?? null;

            case LINKEDIN:

                $linkinPattern = '/(?:https?:)?\/\/(?:[\w]+\.)?linkedin.com\/in\/(?P<permalink>[\w\-\_À-ÿ%]+)\/?/m';

                preg_match($linkinPattern, $url, $username);

                return $username[1] ?? null;

            case TWITTER:

                $twitterPattern = '/(?:https?:)?\/\/(?:[A-z]+\.)?twitter\.com\/@?(?!home|share|privacy|tos)(?P<username>[A-z0-9_]+)\/?/m';

                preg_match($twitterPattern, $url, $username);

                return $username[1] ?? null;

            case SNAPCHAT:

                $snapchatPattern = '/(?:https?:)?\/\/(?:www\.)?snapchat\.com\/add\/(?P<username>[A-z0-9\.\_\-]+)\/?/m';

                preg_match($snapchatPattern, $url, $username);

                return $username[1] ?? null;

            case ZALO:

                $zaloPattern = '/(?:https?:)?\/\/(?:www\.)?zalo\.me\/(?P<username>[A-z0-9\.\_\-]+)\/?/m';

                preg_match($zaloPattern, $url, $username);

                return $username[1] ?? null;
            case GAPO:

                $gapoPattern = '/(?:https?:)?\/\/(?:www\.)?gapo\.vn\/(?P<username>[A-z0-9\.\_\-]+)\/?/m';

                preg_match($gapoPattern, $url, $username);

                return $username[1] ?? null;

                case LOTUS:

                $lotusPattern = '(?:https?:)?\/\/(?:www\.)?lotus\.vn\/w\/profile\/(?P<username>[A-z0-9\.\_\-]+)\/?\.htm';

                preg_match($lotusPattern, $url, $username);

                return $username[1] ?? null;

            case PHONE:

                return $url;

            case SMS:

                return $url;

            case EMAIL:

                $emailPattern = '/(?:mailto:)?(?P<email>[A-z0-9_.+-]+@[A-z0-9_.-]+\.[A-z]+)/m';

                preg_match($emailPattern, $url, $username);

                return $username[1] ?? null;

            case SOUNDCLOUD:
                $soundcloudPattern = '/(?:https?:)?\/\/(?:www\.)?soundcloud.com\/(?P<username>[A-z0-9\.\_\-]+)\/?/m';

                preg_match($soundcloudPattern, $url, $username);

                return $username[1] ?? null;

            case TELEGRAM:

                $telegramPattern = '/(?:https?:)?\/\/(?:t(?:elegram)?\.me|telegram\.org)\/(?P<username>[a-z0-9\_]{5,32})\/?/m';

                preg_match($telegramPattern, $url, $username);

                return $username[1] ?? null;

            case WHATSAPP:

                $whatsappPattern = '/(?:https?:)?\/\/(?:www\.)?wa\.me\/(?P<username>[A-z0-9\.\_\-]+)\/?/m';

                preg_match($whatsappPattern, $url, $username);

                return $username[1] ?? null;

            case SKYPE:

                return $url;

            case MOMO:

                $momoPattern = '/(?:https?:)?\/\/(?:www\.)?nhantien\.momo\.vn\/(?P<username>[A-z0-9\.\_\-]+)\/?/m';

                preg_match($momoPattern, $url, $username);

                return $username[1] ?? null;

            default: return null;
        }
    }
}
