<?php

namespace Botble\ProductCard\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\ProductCard\Http\Requests\ProductCardRequest;
use Botble\ProductCard\Repositories\Interfaces\ProductCardInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\ProductCard\Tables\ProductCardTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\ProductCard\Forms\ProductCardForm;
use Botble\Base\Forms\FormBuilder;

class ProductCardController extends BaseController
{
    /**
     * @var ProductCardInterface
     */
    protected $productCardRepository;

    /**
     * @param ProductCardInterface $productCardRepository
     */
    public function __construct(ProductCardInterface $productCardRepository)
    {
        $this->productCardRepository = $productCardRepository;
    }

    /**
     * @param ProductCardTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @throws \Throwable
     */
    public function index(ProductCardTable $table)
    {
        page_title()->setTitle(trans('plugins/product-card::product-card.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/product-card::product-card.create'));

        return $formBuilder->create(ProductCardForm::class)->renderForm();
    }

    /**
     * @param ProductCardRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(ProductCardRequest $request, BaseHttpResponse $response)
    {
        $productCard = $this->productCardRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(PRODUCT_CARD_MODULE_SCREEN_NAME, $request, $productCard));

        return $response
            ->setPreviousUrl(route('product-card.index'))
            ->setNextUrl(route('product-card.edit', $productCard->id))
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
        $productCard = $this->productCardRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $productCard));

        page_title()->setTitle(trans('plugins/product-card::product-card.edit') . ' "' . $productCard->name . '"');

        return $formBuilder->create(ProductCardForm::class, ['model' => $productCard])->renderForm();
    }

    /**
     * @param $id
     * @param ProductCardRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, ProductCardRequest $request, BaseHttpResponse $response)
    {
        $productCard = $this->productCardRepository->findOrFail($id);

        $productCard->fill($request->input());

        $this->productCardRepository->createOrUpdate($productCard);

        event(new UpdatedContentEvent(PRODUCT_CARD_MODULE_SCREEN_NAME, $request, $productCard));

        return $response
            ->setPreviousUrl(route('product-card.index'))
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
            $productCard = $this->productCardRepository->findOrFail($id);

            $this->productCardRepository->delete($productCard);

            event(new DeletedContentEvent(PRODUCT_CARD_MODULE_SCREEN_NAME, $request, $productCard));

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
            $productCard = $this->productCardRepository->findOrFail($id);
            $this->productCardRepository->delete($productCard);
            event(new DeletedContentEvent(PRODUCT_CARD_MODULE_SCREEN_NAME, $request, $productCard));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
