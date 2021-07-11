<?php

namespace Botble\Card\Providers;

use Botble\Card\Models\Card;
use Illuminate\Support\ServiceProvider;
use Botble\Card\Repositories\Caches\CardCacheDecorator;
use Botble\Card\Repositories\Eloquent\CardRepository;
use Botble\Card\Repositories\Interfaces\CardInterface;
use Botble\Base\Supports\Helper;
use Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class CardServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(CardInterface::class, function () {
            return new CardCacheDecorator(new CardRepository(new Card));
        });

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    public function boot()
    {
        $this->setNamespace('plugins/card')
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadRoutes(['web']);

        Event::listen(RouteMatched::class, function () {
            if (defined('LANGUAGE_MODULE_SCREEN_NAME')) {
                \Language::registerModule([Card::class]);
            }

            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-gotap',
                'priority'    => 5,
                'parent_id'   => null,
                'name'        => 'plugins/card::card.app_name',
                'icon'        => 'fa fa-tags',
                'url'         => null,
                'permissions' => ['card.index'],
            ])->registerItem([
                'id'          => 'cms-plugins-card',
                'priority'    => 5,
                'parent_id'   => 'cms-plugins-gotap',
                'name'        => 'plugins/card::card.name',
                'icon'        => 'fa fa-id-card',
                'url'         => route('card.index'),
                'permissions' => ['card.index'],
            ]);
        });
    }
}
