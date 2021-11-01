<?php

namespace Botble\Account\Providers;

use Botble\Account\Models\Account;
use Illuminate\Support\ServiceProvider;
use Botble\Account\Repositories\Caches\AccountCacheDecorator;
use Botble\Account\Repositories\Eloquent\AccountRepository;
use Botble\Account\Repositories\Interfaces\AccountInterface;
use Botble\Base\Supports\Helper;
use Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class AccountServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(AccountInterface::class, function () {
            return new AccountCacheDecorator(new AccountRepository(new Account));
        });

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    public function boot()
    {
        $this->setNamespace('plugins/account')
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadAndPublishViews()
            ->loadRoutes(['web']);

        Event::listen(RouteMatched::class, function () {
            /*if (defined('LANGUAGE_MODULE_SCREEN_NAME')) {
                \Language::registerModule([Account::class]);
            }*/

            dashboard_menu()
                ->registerItem([
                    'id'          => 'cms-plugins-gotap',
                    'priority'    => 5,
                    'parent_id'   => null,
                    'name'        => 'Gotap!',
                    'icon'        => 'fa fa-list',
                    'url'         => '',
                    'permissions' => ['social.index', 'account.index'],
                ])

                ->registerItem([
                'id'          => 'cms-plugins-account',
                'priority'    => 1,
                'parent_id'   => 'cms-plugins-gotap',
                'name'        => 'plugins/account::account.name',
                'icon'        => 'far fa-id-card',
                'url'         => route('account.index'),
                'permissions' => ['account.index'],
            ]);
        });
    }
}
