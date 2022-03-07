<?php

register_page_template([
    'default' => 'Default',
    'gotap' => 'Gotap',
    'homepage' => 'Homepage'
]);

register_sidebar([
    'id'          => 'second_sidebar',
    'name'        => 'Second sidebar',
    'description' => 'This is a sample sidebar for gotap theme',
]);

theme_option()
    ->setField([
        "id" => "logo-qr",
        "type" => "mediaImage",
        "label" => "Logo QR Code",
        "attributes" => [
          "name" => "logo-qr",
          "value" => null,
        ],
        "section_id" => "opt-text-subsection-logo",
        "priority" => 11,
        'helper' => __('Logo in QR Code'),
    ])
    ->setField([
        'id'         => 'copyright',
        'section_id' => 'opt-text-subsection-general',
        'type'       => 'text',
        'label'      => __('Copyright'),
        'attributes' => [
            'name'    => 'copyright',
            'value'   => '© 2020 Botble Technologies. All right reserved.',
            'options' => [
                'class'        => 'form-control',
                'placeholder'  => __('Change copyright'),
                'data-counter' => 250,
            ]
        ],
        'helper' => __('Copyright on footer of site'),
    ])
    ->setField([
        'id'         => 'primary_font',
        'section_id' => 'opt-text-subsection-general',
        'type'       => 'googleFonts',
        'label'      => __('Primary font'),
        'attributes' => [
            'name'  => 'primary_font',
            'value' => 'Roboto',
        ],
    ])
    ->setField([
        'id'         => 'primary_color',
        'section_id' => 'opt-text-subsection-general',
        'type'       => 'customColor',
        'label'      => __('Primary color'),
        'attributes' => [
            'name'  => 'primary_color',
            'value' => '#ff2b4a',
        ],
    ])
    ->setField([
        'id'         => 'default-avatar',
        'section_id' => 'opt-text-subsection-general',
        'type'       => 'mediaImage',
        'label'      => __('Default avatar'),
        'attributes' => [
            'name'  => 'default-avatar',
            'value' => 'avatars/default-avatar.png',
        ],
        'helper' => __('Avatar mặc định của user'),
        "priority" => 20,
    ])->setField([
        'id'         => 'default-cover',
        'section_id' => 'opt-text-subsection-general',
        'type'       => 'mediaImage',
        'label'      => __('Default Cover'),
        'attributes' => [
            'name'  => 'default-cover',
            'value' => 'covers/default-cover.png',
        ],
        'helper' => __('Cover mặc định của user'),
        "priority" => 21,
    ])->setField([
        'id'         => 'login-background',
        'section_id' => 'opt-text-subsection-general',
        'type'       => 'mediaImage',
        'label'      => __('Login Background'),
        'attributes' => [
            'name'  => 'login-background',
        ],
        'helper' => __('Hình nên login'),
        "priority" => 22,
    ])->setField([
        'id'         => 'video-header',
        'section_id' => 'opt-text-subsection-general',
        'type'       => 'mediaFile',
        'label'      => __('Video Header'),
        'attributes' => [
            'name'  => 'video-header',
        ],
        'helper' => __('Video background trên header'),
        "priority" => 23,
    ])->setField([
        'id'         => 'video-background',
        'section_id' => 'opt-text-subsection-general',
        'type'       => 'mediaFile',
        'label'      => __('Video Background'),
        'attributes' => [
            'name'  => 'video-background',
        ],
        'helper' => __('Video background ngoài màn hình nền'),
        "priority" => 24,
    ])
    ->setSection([
        'title'      => __('Social'),
        'desc'       => __('Social links'),
        'id'         => 'opt-text-subsection-social',
        'subsection' => true,
        'icon'       => 'fa fa-share-alt',
    ])
    ->setField([
        'id'         => 'facebook',
        'section_id' => 'opt-text-subsection-social',
        'type'       => 'text',
        'label'      => 'Facebook',
        'attributes' => [
            'name'    => 'facebook',
            'value'   => null,
            'options' => [
                'class'       => 'form-control',
                'placeholder' => 'https://facebook.com/@username',
            ],
        ],
    ])
    ->setField([
        'id'         => 'shopee',
        'section_id' => 'opt-text-subsection-social',
        'type'       => 'text',
        'label'      => 'Shopee',
        'attributes' => [
            'name'    => 'shopee',
            'value'   => null,
            'options' => [
                'class'       => 'form-control',
                'placeholder' => 'https://shopee.vn/@username',
            ],
        ],
    ])
    ->setField([
        'id'         => 'youtube',
        'section_id' => 'opt-text-subsection-social',
        'type'       => 'text',
        'label'      => 'Youtube',
        'attributes' => [
            'name'    => 'youtube',
            'value'   => null,
            'options' => [
                'class'       => 'form-control',
                'placeholder' => 'https://youtube.com/@channel-url',
            ],
        ],
    ])
    ->setField([
        'id'         => 'instagram',
        'section_id' => 'opt-text-subsection-social',
        'type'       => 'text',
        'label'      => 'Instagram',
        'attributes' => [
            'name'    => 'instagram',
            'value'   => null,
            'options' => [
                'class'       => 'form-control',
                'placeholder' => 'https://www.instagram.com/@username',
            ],
        ],
    ])
    ->setField([
        'id'         => 'tiktok',
        'section_id' => 'opt-text-subsection-social',
        'type'       => 'text',
        'label'      => 'Tiktok',
        'attributes' => [
            'name'    => 'tiktok',
            'value'   => null,
            'options' => [
                'class'       => 'form-control',
                'placeholder' => 'https://www.tiktok.com/@username',
            ],
        ],
    ])
    ->setSection([
        'title'      => __('Site Information'),
        'desc'       => __('Site Information'),
        'id'         => 'opt-text-subsection-information',
        'subsection' => true,
        'icon'       => 'fa fa-info',
    ])
    ->setField([
        'id'         => 'address',
        'section_id' => 'opt-text-subsection-information',
        'type'       => 'text',
        'label'      => __('Address'),
        'attributes' => [
            'name'    => 'address',
            'value'   => null,
            'options' => [
                'class'       => 'form-control',
                'placeholder' => __('Address'),
            ],
        ],
    ])
    ->setField([
        'id'         => 'phone',
        'section_id' => 'opt-text-subsection-information',
        'type'       => 'text',
        'label'      => __('Phone'),
        'attributes' => [
            'name'    => 'phone',
            'value'   => null,
            'options' => [
                'class'       => 'form-control',
                'placeholder' => __('Phone'),
            ],
        ],
    ])
    ->setField([
        'id'         => 'email',
        'section_id' => 'opt-text-subsection-information',
        'type'       => 'text',
        'label'      => __('Email'),
        'attributes' => [
            'name'    => 'email',
            'value'   => null,
            'options' => [
                'class'       => 'form-control',
                'placeholder' => __('Email'),
            ],
        ],
    ])
    ->setField([
        'id'         => 'bank-info',
        'section_id' => 'opt-text-subsection-information',
        'type'       => 'editor',
        'label'      => __('Bank information'),
        'attributes' => [
            'name'    => 'bank-info',
            'value'   => null,
            'options' => [
                'class'       => 'form-control',
                'placeholder' => __('Bank information'),
            ],
        ],
    ])
;
add_action('init', function () {
    config(['filesystems.disks.public.root' => public_path('storage')]);
}, 124);

add_filter('language', function ($options) {
    $path = Theme::scope('card.switcher')->location(true);
    $factory = app(\Illuminate\Contracts\View\Factory::class);


    return $factory->make($path);
    return 1;
    return Theme::scope('card.switcher')->render();
});

Menu::addMenuLocation('main-menu-home-page', 'Main menu in home page');
