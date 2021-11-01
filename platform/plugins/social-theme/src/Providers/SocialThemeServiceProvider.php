<?php

namespace Botble\SocialTheme\Providers;

use Botble\SocialTheme\Models\SocialTheme;
use Illuminate\Support\ServiceProvider;
use Botble\SocialTheme\Repositories\Caches\SocialThemeCacheDecorator;
use Botble\SocialTheme\Repositories\Eloquent\SocialThemeRepository;
use Botble\SocialTheme\Repositories\Interfaces\SocialThemeInterface;
use Botble\Base\Supports\Helper;
use Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class SocialThemeServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(SocialThemeInterface::class, function () {
            return new SocialThemeCacheDecorator(new SocialThemeRepository(new SocialTheme));
        });

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    public function boot()
    {
        $this->setNamespace('plugins/social-theme')
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadRoutes(['web']);

        Event::listen(RouteMatched::class, function () {
            /*if (defined('LANGUAGE_MODULE_SCREEN_NAME')) {
                \Language::registerModule([SocialTheme::class]);
            }*/

            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-social-theme',
                'priority'    => 5,
                'parent_id'   => 'cms-plugins-gotap',
                'name'        => 'plugins/social-theme::social-theme.name',
                'icon'        => 'fa fa-list',
                'url'         => route('social-theme.index'),
                'permissions' => ['social-theme.index'],
            ]);
        });
    }
}
