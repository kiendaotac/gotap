<?php

namespace Botble\Question\Providers;

use Botble\Question\Models\Question;
use Illuminate\Support\ServiceProvider;
use Botble\Question\Repositories\Caches\QuestionCacheDecorator;
use Botble\Question\Repositories\Eloquent\QuestionRepository;
use Botble\Question\Repositories\Interfaces\QuestionInterface;
use Botble\Base\Supports\Helper;
use Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;

class QuestionServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(QuestionInterface::class, function () {
            return new QuestionCacheDecorator(new QuestionRepository(new Question));
        });

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    public function boot()
    {
        $this->setNamespace('plugins/question')
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadRoutes(['web']);

        Event::listen(RouteMatched::class, function () {
            if (defined('LANGUAGE_MODULE_SCREEN_NAME')) {
                \Language::registerModule([Question::class]);
            }

            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-question',
                'priority'    => 5,
                'parent_id'   => 'cms-plugins-gotap',
                'name'        => 'plugins/question::question.name',
                'icon'        => 'fa fa-list',
                'url'         => route('question.index'),
                'permissions' => ['question.index'],
            ]);
        });
    }
}
