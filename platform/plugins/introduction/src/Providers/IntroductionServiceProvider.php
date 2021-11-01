<?php

namespace Botble\Introduction\Providers;

use Botble\Introduction\Models\Introduction;
use Illuminate\Support\ServiceProvider;
use Botble\Introduction\Repositories\Caches\IntroductionCacheDecorator;
use Botble\Introduction\Repositories\Eloquent\IntroductionRepository;
use Botble\Introduction\Repositories\Interfaces\IntroductionInterface;
use Botble\Base\Supports\Helper;
use Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class IntroductionServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(IntroductionInterface::class, function () {
            return new IntroductionCacheDecorator(new IntroductionRepository(new Introduction));
        });

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    public function boot()
    {
        $this->setNamespace('plugins/introduction')
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadRoutes(['web']);

        Event::listen(RouteMatched::class, function () {
            if (defined('LANGUAGE_MODULE_SCREEN_NAME')) {
                \Language::registerModule([Introduction::class]);
            }

            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-introduction',
                'priority'    => 5,
                'parent_id'   => 'cms-plugins-gotap',
                'name'        => 'plugins/introduction::introduction.name',
                'icon'        => 'fa fa-list',
                'url'         => route('introduction.index'),
                'permissions' => ['introduction.index'],
            ]);
        });
    }
}
