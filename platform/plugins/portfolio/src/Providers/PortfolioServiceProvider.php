<?php

namespace Botble\Portfolio\Providers;

use Botble\Portfolio\Models\Portfolio;
use Illuminate\Support\ServiceProvider;
use Botble\Portfolio\Repositories\Caches\PortfolioCacheDecorator;
use Botble\Portfolio\Repositories\Eloquent\PortfolioRepository;
use Botble\Portfolio\Repositories\Interfaces\PortfolioInterface;
use Botble\Base\Supports\Helper;
use Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class PortfolioServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(PortfolioInterface::class, function () {
            return new PortfolioCacheDecorator(new PortfolioRepository(new Portfolio));
        });

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    public function boot()
    {
        $this->setNamespace('plugins/portfolio')
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadRoutes(['web']);

        Event::listen(RouteMatched::class, function () {
            /*if (defined('LANGUAGE_MODULE_SCREEN_NAME')) {
                \Language::registerModule([Portfolio::class]);
            }*/

            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-portfolio',
                'priority'    => 5,
                'parent_id'   => 'cms-plugins-gotap',
                'name'        => 'plugins/portfolio::portfolio.name',
                'icon'        => 'fa fa-list',
                'url'         => route('portfolio.index'),
                'permissions' => ['portfolio.index'],
            ]);
        });
    }
}
