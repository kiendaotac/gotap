<?php

namespace Botble\Introduction\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Introduction\Http\Requests\IntroductionRequest;
use Botble\Introduction\Repositories\Interfaces\IntroductionInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Introduction\Tables\IntroductionTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Introduction\Forms\IntroductionForm;
use Botble\Base\Forms\FormBuilder;

class IntroductionController extends BaseController
{
    /**
     * @var IntroductionInterface
     */
    protected $introductionRepository;

    /**
     * @param IntroductionInterface $introductionRepository
     */
    public function __construct(IntroductionInterface $introductionRepository)
    {
        $this->introductionRepository = $introductionRepository;
    }

    /**
     * @param IntroductionTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @throws \Throwable
     */
    public function index(IntroductionTable $table)
    {
        page_title()->setTitle(trans('plugins/introduction::introduction.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/introduction::introduction.create'));

        return $formBuilder->create(IntroductionForm::class)->renderForm();
    }

    /**
     * @param IntroductionRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(IntroductionRequest $request, BaseHttpResponse $response)
    {
        $introduction = $this->introductionRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(INTRODUCTION_MODULE_SCREEN_NAME, $request, $introduction));

        return $response
            ->setPreviousUrl(route('introduction.index'))
            ->setNextUrl(route('introduction.edit', $introduction->id))
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
        $introduction = $this->introductionRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $introduction));

        page_title()->setTitle(trans('plugins/introduction::introduction.edit') . ' "' . $introduction->name . '"');

        return $formBuilder->create(IntroductionForm::class, ['model' => $introduction])->renderForm();
    }

    /**
     * @param $id
     * @param IntroductionRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, IntroductionRequest $request, BaseHttpResponse $response)
    {
        $introduction = $this->introductionRepository->findOrFail($id);

        $introduction->fill($request->input());

        $this->introductionRepository->createOrUpdate($introduction);

        event(new UpdatedContentEvent(INTRODUCTION_MODULE_SCREEN_NAME, $request, $introduction));

        return $response
            ->setPreviousUrl(route('introduction.index'))
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
            $introduction = $this->introductionRepository->findOrFail($id);

            $this->introductionRepository->delete($introduction);

            event(new DeletedContentEvent(INTRODUCTION_MODULE_SCREEN_NAME, $request, $introduction));

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
            $introduction = $this->introductionRepository->findOrFail($id);
            $this->introductionRepository->delete($introduction);
            event(new DeletedContentEvent(INTRODUCTION_MODULE_SCREEN_NAME, $request, $introduction));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
