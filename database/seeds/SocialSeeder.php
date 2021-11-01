<?php

use Botble\Icon\Models\Icon;
use Botble\Social\Models\Social;
use Botble\SocialTheme\Models\SocialTheme;
use Illuminate\Database\Seeder;
use Botble\Media\Models\MediaFile;
use Botble\Media\Models\MediaFolder;
use Mimey\MimeTypes;

class SocialSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $folder = 'social-icons';

        File::deleteDirectory(config('filesystems.disks.public.root') . '/' . $folder);

        MediaFile::where('url', 'LIKE', $folder . '/%')->forceDelete();

        MediaFolder::where('name', $folder)->forceDelete();

        $mimeType = new MimeTypes;

        $folderSocialIcon = \Botble\Media\Models\MediaFolder::create([
            'user_id' => 0,
            'name' => $folder,
            'slug' => \Illuminate\Support\Str::slug($folder),
        ]);
        $folderSocialThem = \Botble\Media\Models\MediaFolder::create([
            'user_id' => 0,
            'name' => '1',
            'slug' => '1',
            'parent_id' => $folderSocialIcon->id
        ]);
        foreach (File::allFiles(database_path('seeds/' . $folder)) as $file) {

            $type = $mimeType->getMimeType(File::extension($file));

            RvMedia::uploadFromPath($file, $folderSocialThem->id, '1', $type);

        }

        Schema::disableForeignKeyConstraints();

        Social::truncate();

        SocialTheme::truncate();

        Icon::truncate();

        Schema::enableForeignKeyConstraints();

        SocialTheme::create([
            'name' => 'Default',
            'description' => 'Default'
        ]);
        $data = [
            'facebook' => [
                'name'      => 'Facebook',
                'type'      => 'facebook',
                'hint'      => 'https://www.facebook.com/kiendaotac',
                'icon'      => 'social-icons/1/facebook.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'instagram' => [
                'name'      => 'Instagram',
                'type'      => 'instagram',
                'hint'      => 'https://www.instagram.com/kiendaotac',
                'icon'      => 'social-icons/1/instagram.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'github' => [
                'name'      => 'Github',
                'type'      => 'github',
                'hint'      => 'https://github.com/kiendaotac',
                'icon'      => 'social-icons/1/github.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'youtube' => [
                'name'      => 'Youtube',
                'type'      => 'youtube',
                'hint'      => 'https://www.youtube.com/channel/UC_XPKXLZLSnQ8Mh26OKQphA',
                'icon'      => 'social-icons/1/youtube.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'tiktok' => [
                'name'      => 'Tiktok',
                'type'      => 'tiktok',
                'hint'      => 'https://www.tiktok.com/@kiendaotac',
                'icon'      => 'social-icons/1/tiktok.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'pinterest' => [
                'name'      => 'Pinterest',
                'type'      => 'pinterest',
                'hint'      => 'https://www.pinterest.com/hoangkien151092',
                'icon'      => 'social-icons/1/pinterest.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'linkedin' => [
                'name'      => 'LinkedIn',
                'type'      => 'linkedin',
                'hint'      => 'https://www.linkedin.com/in/kiendaotac',
                'icon'      => 'social-icons/1/linkedin.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'twitter' => [
                'name'      => 'Twitter',
                'type'      => 'twitter',
                'hint'      => 'https://twitter.com/kiendaotac',
                'icon'      => 'social-icons/1/twitter.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'snapchat' => [
                'name'      => 'Snapchat',
                'type'      => 'snapchat',
                'hint'      => 'https://snapchat.com/add/kiendaotac',
                'icon'      => 'social-icons/1/snapchat.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'soundcloud' => [
                'name'      => 'Soundcloud',
                'type'      => 'soundcloud',
                'hint'      => 'https://soundcloud.com/kiendaotac',
                'icon'      => 'social-icons/1/soundcloud.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'skype' => [
                'name'      => 'Skype',
                'type'      => 'skype',
                'hint'      => 'live:kiendaotac',
                'icon'      => 'social-icons/1/skype.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'telegram' => [
                'name'      => 'Telegram',
                'type'      => 'telegram',
                'hint'      => 'https://t.me/kiendaotac',
                'icon'      => 'social-icons/1/telegram.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'whatsapp' => [
                'name'      => 'Whatsapp',
                'type'      => 'whatsapp',
                'hint'      => 'https://wa.me/kiendaotac',
                'icon'      => 'social-icons/1/whatsapp.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'momo' => [
                'name'      => 'MoMo',
                'type'      => 'momo',
                'hint'      => 'https://nhantien.momo.vn/0985108032',
                'icon'      => 'social-icons/1/momo.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'zalo' => [
                'name'      => 'Zalo',
                'type'      => 'zalo',
                'hint'      => 'https://zalo.me/0985108032',
                'icon'      => 'social-icons/1/zalo.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'gapo' => [
                'name'      => 'Gapo',
                'type'      => 'gapo',
                'hint'      => 'https://www.gapo.vn/176702037',
                'icon'      => 'social-icons/1/gapo.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'lotus' => [
                'name'      => 'Lotus',
                'type'      => 'lotus',
                'hint'      => 'https://lotus.vn/w/profile/86827842448398099.htm',
                'icon'      => 'social-icons/1/lotus.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'link' => [
                'name'      => 'Link',
                'type'      => 'link',
                'hint'      => 'https://example.com',
                'icon'      => 'social-icons/1/link.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'phone' => [
                'name'      => 'Phone',
                'type'      => 'phone',
                'hint'      => '0985108032',
                'icon'      => 'social-icons/1/phone.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'sms' => [
                'name'      => 'SMS',
                'type'      => 'sms',
                'hint'      => '0985108032',
                'icon'      => 'social-icons/1/sms.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'email' => [
                'name'      => 'Email',
                'type'      => 'email',
                'hint'      => 'hoangkien151092@gmail.com',
                'icon'      => 'social-icons/1/email.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'agribank' => [
                'name'      => 'Agribank',
                'type'      => 'agribank',
                'hint'      => '000001103280',
                'icon'      => 'social-icons/1/agribank.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ],
            'bidv' => [
                'name'      => 'BIDV',
                'type'      => 'bidv',
                'hint'      => '000001103280',
                'icon'      => 'social-icons/1/bidv.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ],
            'mbbank' => [
                'name'      => 'MB Bank',
                'type'      => 'mbbank',
                'hint'      => '000001103280',
                'icon'      => 'social-icons/1/mbbank.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ],
            'vpbank' => [
                'name'      => 'VP Bank',
                'type'      => 'vpbank',
                'hint'      => '000001103280',
                'icon'      => 'social-icons/1/vpbank.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ],
            'tpbank' => [
                'name'      => 'TP Bank',
                'type'      => 'tpbank',
                'hint'      => '000001103280',
                'icon'      => 'social-icons/1/tpbank.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ],
            'msbbank' => [
                'name'      => 'MSB Bank',
                'type'      => 'msbbank',
                'hint'      => '000001103280',
                'icon'      => 'social-icons/1/msbbank.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ],
            'acbbank' => [
                'name'      => 'ACB Bank',
                'type'      => 'acbbank',
                'hint'      => '000001103280',
                'icon'      => 'social-icons/1/acbbank.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ],
            'vibbank' => [
                'name'      => 'VIB Bank',
                'type'      => 'vibbank',
                'hint'      => '000001103280',
                'icon'      => 'social-icons/1/vibbank.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ],
            'techcombank' => [
                'name'      => 'Techcombank',
                'type'      => 'techcombank',
                'hint'      => '000001103280',
                'icon'      => 'social-icons/1/techcombank.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ],
            'vietcombank' => [
                'name'      => 'Vietcombank',
                'type'      => 'vietcombank',
                'hint'      => '000001103280',
                'icon'      => 'social-icons/1/vietcombank.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ],
            'vietinbank' => [
                'name'      => 'Vietinbank',
                'type'      => 'vietinbank',
                'hint'      => '000001103280',
                'icon'      => 'social-icons/1/vietinbank.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ],
            'seabank' => [
                'name'      => 'Seabank',
                'type'      => 'seabank',
                'hint'      => '000001103280',
                'icon'      => 'social-icons/1/seabank.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ]
        ];
        foreach ($data as $item) {
            $social = Social::create([
                'name' => $item['name'],
                'type' => $item['type'],
                'is_bank' => $item['is_bank'],
                'hint' => $item['hint'],
                'status' => $item['status'],
            ]);
            $social->icons()->create([
                'name'      =>  $item['name'],
                'image'     =>  $item['icon'],
                'theme_id'  =>  1
            ]);
        }
    }
}
