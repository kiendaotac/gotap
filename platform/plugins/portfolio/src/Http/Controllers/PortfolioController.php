<?php

namespace Botble\Portfolio\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Portfolio\Http\Requests\PortfolioRequest;
use Botble\Portfolio\Repositories\Interfaces\PortfolioInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Portfolio\Tables\PortfolioTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Portfolio\Forms\PortfolioForm;
use Botble\Base\Forms\FormBuilder;

class PortfolioController extends BaseController
{
    /**
     * @var PortfolioInterface
     */
    protected $portfolioRepository;

    /**
     * @param PortfolioInterface $portfolioRepository
     */
    public function __construct(PortfolioInterface $portfolioRepository)
    {
        $this->portfolioRepository = $portfolioRepository;
    }

    /**
     * @param PortfolioTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @throws \Throwable
     */
    public function index(PortfolioTable $table)
    {
        page_title()->setTitle(trans('plugins/portfolio::portfolio.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/portfolio::portfolio.create'));

        return $formBuilder->create(PortfolioForm::class)->renderForm();
    }

    /**
     * @param PortfolioRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(PortfolioRequest $request, BaseHttpResponse $response)
    {
        $portfolio = $this->portfolioRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(PORTFOLIO_MODULE_SCREEN_NAME, $request, $portfolio));

        return $response
            ->setPreviousUrl(route('portfolio.index'))
            ->setNextUrl(route('portfolio.edit', $portfolio->id))
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
        $portfolio = $this->portfolioRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $portfolio));

        page_title()->setTitle(trans('plugins/portfolio::portfolio.edit') . ' "' . $portfolio->name . '"');

        return $formBuilder->create(PortfolioForm::class, ['model' => $portfolio])->renderForm();
    }

    /**
     * @param $id
     * @param PortfolioRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, PortfolioRequest $request, BaseHttpResponse $response)
    {
        $portfolio = $this->portfolioRepository->findOrFail($id);

        $portfolio->fill($request->input());

        $this->portfolioRepository->createOrUpdate($portfolio);

        event(new UpdatedContentEvent(PORTFOLIO_MODULE_SCREEN_NAME, $request, $portfolio));

        return $response
            ->setPreviousUrl(route('portfolio.index'))
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
            $portfolio = $this->portfolioRepository->findOrFail($id);

            $this->portfolioRepository->delete($portfolio);

            event(new DeletedContentEvent(PORTFOLIO_MODULE_SCREEN_NAME, $request, $portfolio));

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
            $portfolio = $this->portfolioRepository->findOrFail($id);
            $this->portfolioRepository->delete($portfolio);
            event(new DeletedContentEvent(PORTFOLIO_MODULE_SCREEN_NAME, $request, $portfolio));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
