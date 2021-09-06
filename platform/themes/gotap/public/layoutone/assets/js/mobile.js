$(document).ready(function (){
    $(document).on('click tap', '.is_bank', function (){
        if ($(this).hasClass('flip')) {
            $(this).removeClass('flip')
        } else {
            $(this).addClass('flip');
        }
    })
    $(document).on('click tap', '.is_social', function (){
        let data = $(this).data('social')

        const FACEBOOK = 'facebook'
        const INSTAGRAM = 'instagram'
        const GITHUB = 'github'
        const YOUTUBE = 'youtube'
        const TIKTOK = 'tiktok'
        const PINTEREST = 'pinterest'
        const LINKEDIN = 'linkedin'
        const TWITTER = 'twitter'
        const SNAPCHAT = 'snapchat'
        const ZALO = 'zalo'
        const TEL = 'tel'
        const SMS = 'sms'
        const EMAIL = 'email'
        const SOUNDCLOUD = 'soundcloud'
        const TELEGRAM = 'telegram'
        const WHATSAPP = 'whatsapp'
        const SKYPE = 'skype'
        const MOMO = 'momo'

        let scheme = null, url = data.social_value;
        switch (data.social.type) {
            case FACEBOOK:
                if (data.social_app) {
                    if (navJS.isIOS()) {
                        scheme = `fb://profile?id=${data.social_app}`
                    }
                    if (navJS.isAndroid()) {
                        scheme = `fb://facewebmodal/f?href=https://www.facebook.com/${data.social_app}`
                    }
                }
                openMobileApp(scheme, url);
                break;
            case INSTAGRAM:
                if (data.social_app) {
                    if (navJS.isIOS()) {
                        scheme = `instagram://user?username=${data.social_app}`
                    }
                    if (navJS.isAndroid()) {
                        scheme = `instagram://user?username=${data.social_app}`
                    }
                }
                openMobileApp(scheme, url);
                break;
            case GITHUB:
                openMobileApp(null, url);
                break;

            case YOUTUBE:
                openMobileApp(null, url);
                break;

            case TIKTOK:
                openMobileApp(null, url);
                break;

            case PINTEREST:
                if (data.social_app) {
                    if (navJS.isIOS()) {
                        scheme = `pinterest://user/${data.social_app}`
                    }
                    if (navJS.isIOS()) {
                        scheme = `pinterest://user/${data.social_app}`
                    }
                }
                openMobileApp(scheme, url);
                break;
            case LINKEDIN:
                if (data.social_app) {
                    if (navJS.isIOS()) {
                        scheme = `linkedin://profile/${data.social_app}`
                    }
                    if (navJS.isIOS()) {
                        scheme = `linkedin://profile/${data.social_app}`
                    }
                }
                openMobileApp(scheme, url);
                break;
            case TWITTER:
                if (data.social_app) {
                    if (navJS.isIOS()) {
                        scheme = `twitter://user?screen_name=${data.social_app}`
                    }
                    if (navJS.isIOS()) {
                        scheme = `twitter://user?screen_name=${data.social_app}`
                    }
                }
                openMobileApp(scheme, url);
                break;
            case SNAPCHAT:
                if (data.social_app) {
                    if (navJS.isIOS()) {
                        scheme = `snapchat://add/${data.social_app}`
                    }
                    if (navJS.isIOS()) {
                        scheme = `snapchat://add/${data.social_app}`
                    }
                }
                openMobileApp(scheme, url);
                break;

            case ZALO:
                openMobileApp(null, url);
                break;

            case TEL:
                scheme = `tel:${data.social_app}`;
                openMobileApp(scheme, null);
                break;
            case SMS:
                scheme = `sms:${data.social_app}`;
                openMobileApp(scheme, null)
                break;
            case EMAIL:
                scheme = `mailto:${data.social_app}`;
                openMobileApp(scheme, null);
                break;
            case SOUNDCLOUD:
                if (data.social_app) {
                    if (navJS.isIOS()) {
                        scheme = `soundcloud://users/${data.social_app}`
                    }
                    if (navJS.isIOS()) {
                        scheme = `soundcloud://users/${data.social_app}`
                    }
                }
                openMobileApp(scheme, url);
                break;
            case TELEGRAM:
                if (data.social_app) {
                    if (navJS.isIOS()) {
                        scheme = `tg://msg?to=${data.social_app}`
                    }
                    if (navJS.isIOS()) {
                        scheme = `tg://msg?to=${data.social_app}`
                    }
                }
                openMobileApp(scheme, url);
                break;
            case WHATSAPP:
                if (data.social_app) {
                    if (navJS.isIOS()) {
                        scheme = `whatsapp://send?phone=${data.social_app}`
                    }
                    if (navJS.isIOS()) {
                        scheme = `whatsapp://send?phone=${data.social_app}`
                    }
                }
                openMobileApp(scheme, url);
                break;
            case SKYPE:
                if (data.social_app) {
                    if (navJS.isIOS()) {
                        scheme = `skype:${data.social_app}?userinfo`
                    }
                    if (navJS.isIOS()) {
                        scheme = `skype:${data.social_app}?userinfo`
                    }
                }
                openMobileApp(scheme, url);
                break;

            case MOMO:
                openMobileApp(null, url);
                break;
            default:
                openMobileApp(null, url);
        }
    })

    function openMobileApp(scheme, url) {
        if (scheme) {
            try {
                window.location.replace(scheme);
            } catch (error) {
                window.location.replace(url);
            }
            // setTimeout(() => {
            //    window.location.replace(url);
            // }, 10000);
        } else {
            window.location.replace(url);
        }
    }
});