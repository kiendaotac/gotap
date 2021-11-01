<?php

namespace Botble\SocialTheme\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\SocialTheme\Http\Requests\SocialThemeRequest;
use Botble\SocialTheme\Repositories\Interfaces\SocialThemeInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\SocialTheme\Tables\SocialThemeTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\SocialTheme\Forms\SocialThemeForm;
use Botble\Base\Forms\FormBuilder;

class SocialThemeController extends BaseController
{
    /**
     * @var SocialThemeInterface
     */
    protected $socialThemeRepository;

    /**
     * @param SocialThemeInterface $socialThemeRepository
     */
    public function __construct(SocialThemeInterface $socialThemeRepository)
    {
        $this->socialThemeRepository = $socialThemeRepository;
    }

    /**
     * @param SocialThemeTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @throws \Throwable
     */
    public function index(SocialThemeTable $table)
    {
        page_title()->setTitle(trans('plugins/social-theme::social-theme.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/social-theme::social-theme.create'));

        return $formBuilder->create(SocialThemeForm::class)->renderForm();
    }

    /**
     * @param SocialThemeRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(SocialThemeRequest $request, BaseHttpResponse $response)
    {
        $socialTheme = $this->socialThemeRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(SOCIAL_THEME_MODULE_SCREEN_NAME, $request, $socialTheme));

        return $response
            ->setPreviousUrl(route('social-theme.index'))
            ->setNextUrl(route('social-theme.edit', $socialTheme->id))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    /**
     * @param $id
     * @param Request $request
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function edit($id, FormBuilder $formBuilder, Request $request)
    {
        $socialTheme = $this->socialThemeRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $socialTheme));

        page_title()->setTitle(trans('plugins/social-theme::social-theme.edit') . ' "' . $socialTheme->name . '"');

        return $formBuilder->create(SocialThemeForm::class, ['model' => $socialTheme])->renderForm();
    }

    /**
     * @param $id
     * @param SocialThemeRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, SocialThemeRequest $request, BaseHttpResponse $response)
    {
        $socialTheme = $this->socialThemeRepository->findOrFail($id);

        $socialTheme->fill($request->input());

        $this->socialThemeRepository->createOrUpdate($socialTheme);

        event(new UpdatedContentEvent(SOCIAL_THEME_MODULE_SCREEN_NAME, $request, $socialTheme));

        return $response
            ->setPreviousUrl(route('social-theme.index'))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    /**
     * @param $id
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function destroy(Request $request, $id, BaseHttpResponse $response)
    {
        try {
            $socialTheme = $this->socialThemeRepository->findOrFail($id);

            $this->socialThemeRepository->delete($socialTheme);

            event(new DeletedContentEvent(SOCIAL_THEME_MODULE_SCREEN_NAME, $request, $socialTheme));

            return $response->setMessage(trans('core/base::notices.delete_success_message'));
        } catch (Exception $exception) {
            return $response
                ->setError()
                ->setMessage($exception->getMessage());
        }
    }

    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     * @throws Exception
     */
    public function deletes(Request $request, BaseHttpResponse $response)
    {
        $ids = $request->input('ids');
        if (empty($ids)) {
            return $response
                ->setError()
                ->setMessage(trans('core/base::notices.no_select'));
        }

        foreach ($ids as $id) {
            $socialTheme = $this->socialThemeRepository->findOrFail($id);
            $this->socialThemeRepository->delete($socialTheme);
            event(new DeletedContentEvent(SOCIAL_THEME_MODULE_SCREEN_NAME, $request, $socialTheme));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
