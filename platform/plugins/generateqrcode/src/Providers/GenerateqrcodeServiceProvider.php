<?php

namespace Botble\Generateqrcode\Providers;

use Botble\Generateqrcode\Models\Generateqrcode;
use Illuminate\Support\ServiceProvider;
use Botble\Generateqrcode\Repositories\Caches\GenerateqrcodeCacheDecorator;
use Botble\Generateqrcode\Repositories\Eloquent\GenerateqrcodeRepository;
use Botble\Generateqrcode\Repositories\Interfaces\GenerateqrcodeInterface;
use Botble\Base\Supports\Helper;
use Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class GenerateqrcodeServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(GenerateqrcodeInterface::class, function () {
            return new GenerateqrcodeCacheDecorator(new GenerateqrcodeRepository(new Generateqrcode));
        });

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    public function boot()
    {
        $this->setNamespace('plugins/generateqrcode')
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadRoutes(['web']);

        Event::listen(RouteMatched::class, function () {
//            if (defined('LANGUAGE_MODULE_SCREEN_NAME')) {
//                \Language::registerModule([Generateqrcode::class]);
//            }

            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-generateqrcode',
                'priority'    => 5,
                'parent_id'   => 'cms-plugins-gotap',
                'name'        => 'plugins/generateqrcode::generateqrcode.name',
                'icon'        => 'fa  fa-qrcode',
                'url'         => route('generateqrcode.index'),
                'permissions' => ['generateqrcode.index'],
            ]);
        });
    }
}
