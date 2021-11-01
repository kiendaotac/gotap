<?php

namespace Botble\Section\Providers;

use Botble\Section\Models\Section;
use Illuminate\Support\ServiceProvider;
use Botble\Section\Repositories\Caches\SectionCacheDecorator;
use Botble\Section\Repositories\Eloquent\SectionRepository;
use Botble\Section\Repositories\Interfaces\SectionInterface;
use Botble\Base\Supports\Helper;
use Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class SectionServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(SectionInterface::class, function () {
            return new SectionCacheDecorator(new SectionRepository(new Section));
        });

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    public function boot()
    {
        $this->setNamespace('plugins/section')
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadRoutes(['web']);

        Event::listen(RouteMatched::class, function () {
            if (defined('LANGUAGE_MODULE_SCREEN_NAME')) {
                \Language::registerModule([Section::class]);
            }

            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-section',
                'priority'    => 5,
                'parent_id'   => 'cms-plugins-gotap',
                'name'        => 'plugins/section::section.name',
                'icon'        => 'fa fa-list',
                'url'         => route('section.index'),
                'permissions' => ['section.index'],
            ]);
        });
    }
}
