<?php

namespace Botble\Review\Providers;

use Botble\Review\Models\Review;
use Illuminate\Support\ServiceProvider;
use Botble\Review\Repositories\Caches\ReviewCacheDecorator;
use Botble\Review\Repositories\Eloquent\ReviewRepository;
use Botble\Review\Repositories\Interfaces\ReviewInterface;
use Botble\Base\Supports\Helper;
use Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class ReviewServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(ReviewInterface::class, function () {
            return new ReviewCacheDecorator(new ReviewRepository(new Review));
        });

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    public function boot()
    {
        $this->setNamespace('plugins/review')
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadRoutes(['web']);

        Event::listen(RouteMatched::class, function () {
//            if (defined('LANGUAGE_MODULE_SCREEN_NAME')) {
//                \Language::registerModule([Review::class]);
//            }

            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-review',
                'priority'    => 5,
                'parent_id'   => 'cms-plugins-gotap',
                'name'        => 'plugins/review::review.name',
                'icon'        => 'fa fa-list',
                'url'         => route('review.index'),
                'permissions' => ['review.index'],
            ]);
        });
    }
}
