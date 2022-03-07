<?php

namespace Botble\Review\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Review\Http\Requests\ReviewRequest;
use Botble\Review\Repositories\Interfaces\ReviewInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Review\Tables\ReviewTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Review\Forms\ReviewForm;
use Botble\Base\Forms\FormBuilder;

class ReviewController extends BaseController
{
    /**
     * @var ReviewInterface
     */
    protected $reviewRepository;

    /**
     * @param ReviewInterface $reviewRepository
     */
    public function __construct(ReviewInterface $reviewRepository)
    {
        $this->reviewRepository = $reviewRepository;
    }

    /**
     * @param ReviewTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @throws \Throwable
     */
    public function index(ReviewTable $table)
    {
        page_title()->setTitle(trans('plugins/review::review.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/review::review.create'));

        return $formBuilder->create(ReviewForm::class)->renderForm();
    }

    /**
     * @param ReviewRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(ReviewRequest $request, BaseHttpResponse $response)
    {
        $review = $this->reviewRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(REVIEW_MODULE_SCREEN_NAME, $request, $review));

        return $response
            ->setPreviousUrl(route('review.index'))
            ->setNextUrl(route('review.edit', $review->id))
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
        $review = $this->reviewRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $review));

        page_title()->setTitle(trans('plugins/review::review.edit') . ' "' . $review->name . '"');

        return $formBuilder->create(ReviewForm::class, ['model' => $review])->renderForm();
    }

    /**
     * @param $id
     * @param ReviewRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, ReviewRequest $request, BaseHttpResponse $response)
    {
        $review = $this->reviewRepository->findOrFail($id);

        $review->fill($request->input());

        $this->reviewRepository->createOrUpdate($review);

        event(new UpdatedContentEvent(REVIEW_MODULE_SCREEN_NAME, $request, $review));

        return $response
            ->setPreviousUrl(route('review.index'))
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
            $review = $this->reviewRepository->findOrFail($id);

            $this->reviewRepository->delete($review);

            event(new DeletedContentEvent(REVIEW_MODULE_SCREEN_NAME, $request, $review));

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
            $review = $this->reviewRepository->findOrFail($id);
            $this->reviewRepository->delete($review);
            event(new DeletedContentEvent(REVIEW_MODULE_SCREEN_NAME, $request, $review));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
