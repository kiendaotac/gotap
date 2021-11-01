<?php

namespace Botble\Section\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Section\Http\Requests\SectionRequest;
use Botble\Section\Repositories\Interfaces\SectionInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Section\Tables\SectionTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Section\Forms\SectionForm;
use Botble\Base\Forms\FormBuilder;

class SectionController extends BaseController
{
    /**
     * @var SectionInterface
     */
    protected $sectionRepository;

    /**
     * @param SectionInterface $sectionRepository
     */
    public function __construct(SectionInterface $sectionRepository)
    {
        $this->sectionRepository = $sectionRepository;
    }

    /**
     * @param SectionTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @throws \Throwable
     */
    public function index(SectionTable $table)
    {
        page_title()->setTitle(trans('plugins/section::section.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/section::section.create'));

        return $formBuilder->create(SectionForm::class)->renderForm();
    }

    /**
     * @param SectionRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(SectionRequest $request, BaseHttpResponse $response)
    {
        $section = $this->sectionRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(SECTION_MODULE_SCREEN_NAME, $request, $section));

        return $response
            ->setPreviousUrl(route('section.index'))
            ->setNextUrl(route('section.edit', $section->id))
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
        $section = $this->sectionRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $section));

        page_title()->setTitle(trans('plugins/section::section.edit') . ' "' . $section->name . '"');

        return $formBuilder->create(SectionForm::class, ['model' => $section])->renderForm();
    }

    /**
     * @param $id
     * @param SectionRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, SectionRequest $request, BaseHttpResponse $response)
    {
        $section = $this->sectionRepository->findOrFail($id);

        $section->fill($request->input());

        $this->sectionRepository->createOrUpdate($section);

        event(new UpdatedContentEvent(SECTION_MODULE_SCREEN_NAME, $request, $section));

        return $response
            ->setPreviousUrl(route('section.index'))
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
            $section = $this->sectionRepository->findOrFail($id);

            $this->sectionRepository->delete($section);

            event(new DeletedContentEvent(SECTION_MODULE_SCREEN_NAME, $request, $section));

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
            $section = $this->sectionRepository->findOrFail($id);
            $this->sectionRepository->delete($section);
            event(new DeletedContentEvent(SECTION_MODULE_SCREEN_NAME, $request, $section));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
