<?php

namespace Botble\Question\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Question\Http\Requests\QuestionRequest;
use Botble\Question\Repositories\Interfaces\QuestionInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Question\Tables\QuestionTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Question\Forms\QuestionForm;
use Botble\Base\Forms\FormBuilder;

class QuestionController extends BaseController
{
    /**
     * @var QuestionInterface
     */
    protected $questionRepository;

    /**
     * @param QuestionInterface $questionRepository
     */
    public function __construct(QuestionInterface $questionRepository)
    {
        $this->questionRepository = $questionRepository;
    }

    /**
     * @param QuestionTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @throws \Throwable
     */
    public function index(QuestionTable $table)
    {
        page_title()->setTitle(trans('plugins/question::question.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/question::question.create'));

        return $formBuilder->create(QuestionForm::class)->renderForm();
    }

    /**
     * @param QuestionRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(QuestionRequest $request, BaseHttpResponse $response)
    {
        $question = $this->questionRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(QUESTION_MODULE_SCREEN_NAME, $request, $question));

        return $response
            ->setPreviousUrl(route('question.index'))
            ->setNextUrl(route('question.edit', $question->id))
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
        $question = $this->questionRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $question));

        page_title()->setTitle(trans('plugins/question::question.edit') . ' "' . $question->name . '"');

        return $formBuilder->create(QuestionForm::class, ['model' => $question])->renderForm();
    }

    /**
     * @param $id
     * @param QuestionRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, QuestionRequest $request, BaseHttpResponse $response)
    {
        $question = $this->questionRepository->findOrFail($id);

        $question->fill($request->input());

        $this->questionRepository->createOrUpdate($question);

        event(new UpdatedContentEvent(QUESTION_MODULE_SCREEN_NAME, $request, $question));

        return $response
            ->setPreviousUrl(route('question.index'))
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
            $question = $this->questionRepository->findOrFail($id);

            $this->questionRepository->delete($question);

            event(new DeletedContentEvent(QUESTION_MODULE_SCREEN_NAME, $request, $question));

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
            $question = $this->questionRepository->findOrFail($id);
            $this->questionRepository->delete($question);
            event(new DeletedContentEvent(QUESTION_MODULE_SCREEN_NAME, $request, $question));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
