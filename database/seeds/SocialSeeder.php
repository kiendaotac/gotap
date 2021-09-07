<?php

use Botble\Social\Models\Social;
use Illuminate\Database\Seeder;

class SocialSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            'facebook' => [
                'name'      => 'Facebook',
                'type'      => 'facebook',
                'hint'      => 'https://www.facebook.com/kiendaotac',
                'icon'      => 'social-icon/facebook.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'instagram' => [
                'name'      => 'Instagram',
                'type'      => 'instagram',
                'hint'      => 'https://www.instagram.com/kiendaotac',
                'icon'      => 'social-icon/instagram.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'github' => [
                'name'      => 'Github',
                'type'      => 'github',
                'hint'      => 'https://github.com/kiendaotac',
                'icon'      => 'social-icon/github.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'youtube' => [
                'name'      => 'Youtube',
                'type'      => 'youtube',
                'hint'      => 'https://www.youtube.com/channel/UC_XPKXLZLSnQ8Mh26OKQphA',
                'icon'      => 'social-icon/youtube.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'tiktok' => [
                'name'      => 'Tiktok',
                'type'      => 'tiktok',
                'hint'      => 'https://www.tiktok.com/@kiendaotac',
                'icon'      => 'social-icon/tiktok.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'pinterest' => [
                'name'      => 'Pinterest',
                'type'      => 'pinterest',
                'hint'      => 'https://www.pinterest.com/hoangkien151092',
                'icon'      => 'social-icon/pinterest.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'linkedin' => [
                'name'      => 'LinkedIn',
                'type'      => 'linkedin',
                'hint'      => 'https://www.linkedin.com/in/kiendaotac',
                'icon'      => 'social-icon/linkedin.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'twitter' => [
                'name'      => 'Twitter',
                'type'      => 'twitter',
                'hint'      => 'https://twitter.com/kiendaotac',
                'icon'      => 'social-icon/twitter.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'snapchat' => [
                'name'      => 'Snapchat',
                'type'      => 'snapchat',
                'hint'      => 'https://snapchat.com/add/kiendaotac',
                'icon'      => 'social-icon/snapchat.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'soundcloud' => [
                'name'      => 'Soundcloud',
                'type'      => 'soundcloud',
                'hint'      => 'https://soundcloud.com/kiendaotac',
                'icon'      => 'social-icon/soundcloud.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'skype' => [
                'name'      => 'Skype',
                'type'      => 'skype',
                'hint'      => 'live:kiendaotac',
                'icon'      => 'social-icon/skype.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'telegram' => [
                'name'      => 'Telegram',
                'type'      => 'telegram',
                'hint'      => 'https://t.me/kiendaotac',
                'icon'      => 'social-icon/telegram.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'whatsapp' => [
                'name'      => 'Whatsapp',
                'type'      => 'whatsapp',
                'hint'      => 'https://wa.me/kiendaotac',
                'icon'      => 'social-icon/whatsapp.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'momo' => [
                'name'      => 'MoMo',
                'type'      => 'momo',
                'hint'      => 'https://nhantien.momo.vn/0985108032',
                'icon'      => 'social-icon/momo.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'zalo' => [
                'name'      => 'Zalo',
                'type'      => 'zalo',
                'hint'      => 'https://zalo.me/0985108032',
                'icon'      => 'social-icon/zalo.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'phone' => [
                'name'      => 'Phone',
                'type'      => 'phone',
                'hint'      => '0985108032',
                'icon'      => 'social-icon/phone.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'sms' => [
                'name'      => 'SMS',
                'type'      => 'sms',
                'hint'      => '0985108032',
                'icon'      => 'social-icon/sms.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'email' => [
                'name'      => 'Email',
                'type'      => 'email',
                'hint'      => 'hoangkien151092@gmail.com',
                'icon'      => 'social-icon/email.png',
                'is_bank'   => 0,
                'status'    => 'published'
            ],
            'agribank' => [
                'name'      => 'Agribank',
                'type'      => 'agribank',
                'hint'      => '000001103280',
                'icon'      => 'social-icon/agribank.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ],
            'bidv' => [
                'name'      => 'BIDV',
                'type'      => 'bidv',
                'hint'      => '000001103280',
                'icon'      => 'social-icon/bidv.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ],
            'mbbank' => [
                'name'      => 'MB Bank',
                'type'      => 'mbbank',
                'hint'      => '000001103280',
                'icon'      => 'social-icon/mbbank.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ],
            'vpbank' => [
                'name'      => 'VP Bank',
                'type'      => 'vpbank',
                'hint'      => '000001103280',
                'icon'      => 'social-icon/vpbank.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ],
            'tpbank' => [
                'name'      => 'TP Bank',
                'type'      => 'tpbank',
                'hint'      => '000001103280',
                'icon'      => 'social-icon/tpbank.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ],
            'msbbank' => [
                'name'      => 'MSB Bank',
                'type'      => 'msbbank',
                'hint'      => '000001103280',
                'icon'      => 'social-icon/msbbank.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ],
            'acbbank' => [
                'name'      => 'ACB Bank',
                'type'      => 'acbbank',
                'hint'      => '000001103280',
                'icon'      => 'social-icon/acbbank.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ],
            'vibbank' => [
                'name'      => 'VIB Bank',
                'type'      => 'vibbank',
                'hint'      => '000001103280',
                'icon'      => 'social-icon/vibbank.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ],
            'techcombank' => [
                'name'      => 'Techcombank',
                'type'      => 'techcombank',
                'hint'      => '000001103280',
                'icon'      => 'social-icon/techcombank.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ],
            'vietcombank' => [
                'name'      => 'Vietcombank',
                'type'      => 'vietcombank',
                'hint'      => '000001103280',
                'icon'      => 'social-icon/vietcombank.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ],
            'vietinbank' => [
                'name'      => 'Vietinbank',
                'type'      => 'vietinbank',
                'hint'      => '000001103280',
                'icon'      => 'social-icon/vietinbank.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ],
            'seabank' => [
                'name'      => 'Seabank',
                'type'      => 'seabank',
                'hint'      => '000001103280',
                'icon'      => 'social-icon/seabank.png',
                'is_bank'   => 1,
                'status'    => 'published'
            ]
        ];
        foreach ($data as $item) {
            Social::create($item);
        }
    }
}
