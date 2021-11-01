<?php

namespace Botble\Order\Providers;

use Botble\Order\Models\Order;
use Illuminate\Support\ServiceProvider;
use Botble\Order\Repositories\Caches\OrderCacheDecorator;
use Botble\Order\Repositories\Eloquent\OrderRepository;
use Botble\Order\Repositories\Interfaces\OrderInterface;
use Botble\Base\Supports\Helper;
use Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class OrderServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(OrderInterface::class, function () {
            return new OrderCacheDecorator(new OrderRepository(new Order));
        });

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    public function boot()
    {
        $this->setNamespace('plugins/order')
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishViews()
            ->loadAndPublishTranslations()
            ->loadRoutes(['web']);

        Event::listen(RouteMatched::class, function () {
//            if (defined('LANGUAGE_MODULE_SCREEN_NAME')) {
//                \Language::registerModule([Order::class]);
//            }

            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-order',
                'priority'    => 5,
                'parent_id'   => 'cms-plugins-gotap',
                'name'        => 'plugins/order::order.name',
                'icon'        => 'fa fa-list',
                'url'         => route('order.index'),
                'permissions' => ['order.index'],
            ]);
        });

//        $this->app->booted(function () {
//            $this->app->register(HookServiceProvider::class);
//        });
    }
}
