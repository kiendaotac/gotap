<?php

namespace Botble\ProductCard\Providers;

use Botble\ProductCard\Models\ProductCard;
use Illuminate\Support\ServiceProvider;
use Botble\ProductCard\Repositories\Caches\ProductCardCacheDecorator;
use Botble\ProductCard\Repositories\Eloquent\ProductCardRepository;
use Botble\ProductCard\Repositories\Interfaces\ProductCardInterface;
use Botble\Base\Supports\Helper;
use Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class ProductCardServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(ProductCardInterface::class, function () {
            return new ProductCardCacheDecorator(new ProductCardRepository(new ProductCard));
        });

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    public function boot()
    {
        $this->setNamespace('plugins/product-card')
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadRoutes(['web']);

        Event::listen(RouteMatched::class, function () {
            if (defined('LANGUAGE_MODULE_SCREEN_NAME')) {
                \Language::registerModule([ProductCard::class]);
            }

            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-product-card',
                'priority'    => 5,
                'parent_id'   => 'cms-plugins-gotap',
                'name'        => 'plugins/product-card::product-card.name',
                'icon'        => 'fa fa-list',
                'url'         => route('product-card.index'),
                'permissions' => ['product-card.index'],
            ]);
        });
    }
}
