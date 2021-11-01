<?php

namespace Botble\Social\Providers;

use Botble\Social\Models\Social;
use Illuminate\Support\ServiceProvider;
use Botble\Social\Repositories\Caches\SocialCacheDecorator;
use Botble\Social\Repositories\Eloquent\SocialRepository;
use Botble\Social\Repositories\Interfaces\SocialInterface;
use Botble\Base\Supports\Helper;
use Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class SocialServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(SocialInterface::class, function () {
            return new SocialCacheDecorator(new SocialRepository(new Social));
        });

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    public function boot()
    {
        $this->setNamespace('plugins/social')
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadRoutes(['web']);

        Event::listen(RouteMatched::class, function () {
            /*if (defined('LANGUAGE_MODULE_SCREEN_NAME')) {
                \Language::registerModule([Social::class]);
            }*/

            dashboard_menu()
                ->registerItem([
                'id'          => 'cms-plugins-social',
                'priority'    => 5,
                'parent_id'   => 'cms-plugins-gotap',
                'name'        => 'plugins/social::social.name',
                'icon'        => 'fas fa-share-alt-square',
                'url'         => route('social.index'),
                'permissions' => ['social.index'],
            ]);
        });
    }
}
