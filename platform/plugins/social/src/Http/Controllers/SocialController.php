<?php

namespace Botble\Social\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Social\Http\Requests\SocialRequest;
use Botble\Social\Repositories\Interfaces\SocialInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Social\Tables\SocialTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Social\Forms\SocialForm;
use Botble\Base\Forms\FormBuilder;

class SocialController extends BaseController
{
    /**
     * @var SocialInterface
     */
    protected $socialRepository;

    /**
     * @param SocialInterface $socialRepository
     */
    public function __construct(SocialInterface $socialRepository)
    {
        $this->socialRepository = $socialRepository;
    }

    /**
     * @param SocialTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @throws \Throwable
     */
    public function index(SocialTable $table)
    {
        page_title()->setTitle(trans('plugins/social::social.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/social::social.create'));

        return $formBuilder->create(SocialForm::class)->renderForm();
    }

    /**
     * @param SocialRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(SocialRequest $request, BaseHttpResponse $response)
    {
        $social = $this->socialRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(SOCIAL_MODULE_SCREEN_NAME, $request, $social));

        return $response
            ->setPreviousUrl(route('social.index'))
            ->setNextUrl(route('social.edit', $social->id))
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
        $social = $this->socialRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $social));

        page_title()->setTitle(trans('plugins/social::social.edit') . ' "' . $social->name . '"');

        return $formBuilder->create(SocialForm::class, ['model' => $social])->renderForm();
    }

    /**
     * @param $id
     * @param SocialRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, SocialRequest $request, BaseHttpResponse $response)
    {
        $social = $this->socialRepository->findOrFail($id);

        $social->fill($request->input());

        $this->socialRepository->createOrUpdate($social);

        event(new UpdatedContentEvent(SOCIAL_MODULE_SCREEN_NAME, $request, $social));

        return $response
            ->setPreviousUrl(route('social.index'))
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
            $social = $this->socialRepository->findOrFail($id);

            $this->socialRepository->delete($social);

            event(new DeletedContentEvent(SOCIAL_MODULE_SCREEN_NAME, $request, $social));

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
            $social = $this->socialRepository->findOrFail($id);
            $this->socialRepository->delete($social);
            event(new DeletedContentEvent(SOCIAL_MODULE_SCREEN_NAME, $request, $social));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
