<?php

namespace Botble\Product\Providers;

use Botble\Product\Models\Product;
use Illuminate\Support\ServiceProvider;
use Botble\Product\Repositories\Caches\ProductCacheDecorator;
use Botble\Product\Repositories\Eloquent\ProductRepository;
use Botble\Product\Repositories\Interfaces\ProductInterface;
use Botble\Base\Supports\Helper;
use Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class ProductServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(ProductInterface::class, function () {
            return new ProductCacheDecorator(new ProductRepository(new Product));
        });

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    public function boot()
    {
        $this->setNamespace('plugins/product')
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadRoutes(['web']);

        Event::listen(RouteMatched::class, function () {
            if (defined('LANGUAGE_MODULE_SCREEN_NAME')) {
                \Language::registerModule([Product::class]);
            }

            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-product',
                'priority'    => 5,
                'parent_id'   => 'cms-plugins-gotap',
                'name'        => 'plugins/product::product.name',
                'icon'        => 'fa fa-list',
                'url'         => route('product.index'),
                'permissions' => ['product.index'],
            ]);
        });
    }
}
