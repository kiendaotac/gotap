<?php

namespace Botble\Icon\Providers;

use Botble\Icon\Models\Icon;
use Illuminate\Support\ServiceProvider;
use Botble\Icon\Repositories\Caches\IconCacheDecorator;
use Botble\Icon\Repositories\Eloquent\IconRepository;
use Botble\Icon\Repositories\Interfaces\IconInterface;
use Botble\Base\Supports\Helper;
use Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class IconServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(IconInterface::class, function () {
            return new IconCacheDecorator(new IconRepository(new Icon));
        });

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    public function boot()
    {
        $this->setNamespace('plugins/icon')
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadRoutes(['web']);

        Event::listen(RouteMatched::class, function () {
            /*if (defined('LANGUAGE_MODULE_SCREEN_NAME')) {
                \Language::registerModule([Icon::class]);
            }*/

            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-icon',
                'priority'    => 5,
                'parent_id'   => 'cms-plugins-gotap',
                'name'        => 'plugins/icon::icon.name',
                'icon'        => 'fa fa-list',
                'url'         => route('icon.index'),
                'permissions' => ['icon.index'],
            ]);
        });
    }
}
