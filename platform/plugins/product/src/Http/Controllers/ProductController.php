<?php

namespace Botble\Product\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Product\Http\Requests\ProductRequest;
use Botble\Product\Repositories\Interfaces\ProductInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Product\Tables\ProductTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Product\Forms\ProductForm;
use Botble\Base\Forms\FormBuilder;

class ProductController extends BaseController
{
    /**
     * @var ProductInterface
     */
    protected $productRepository;

    /**
     * @param ProductInterface $productRepository
     */
    public function __construct(ProductInterface $productRepository)
    {
        $this->productRepository = $productRepository;
    }

    /**
     * @param ProductTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @throws \Throwable
     */
    public function index(ProductTable $table)
    {
        page_title()->setTitle(trans('plugins/product::product.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/product::product.create'));

        return $formBuilder->create(ProductForm::class)->renderForm();
    }

    /**
     * @param ProductRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(ProductRequest $request, BaseHttpResponse $response)
    {
        $product = $this->productRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(PRODUCT_MODULE_SCREEN_NAME, $request, $product));

        return $response
            ->setPreviousUrl(route('product.index'))
            ->setNextUrl(route('product.edit', $product->id))
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
        $product = $this->productRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $product));

        page_title()->setTitle(trans('plugins/product::product.edit') . ' "' . $product->name . '"');

        return $formBuilder->create(ProductForm::class, ['model' => $product])->renderForm();
    }

    /**
     * @param $id
     * @param ProductRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, ProductRequest $request, BaseHttpResponse $response)
    {
        $product = $this->productRepository->findOrFail($id);

        $product->fill($request->input());

        $this->productRepository->createOrUpdate($product);

        event(new UpdatedContentEvent(PRODUCT_MODULE_SCREEN_NAME, $request, $product));

        return $response
            ->setPreviousUrl(route('product.index'))
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
            $product = $this->productRepository->findOrFail($id);

            $this->productRepository->delete($product);

            event(new DeletedContentEvent(PRODUCT_MODULE_SCREEN_NAME, $request, $product));

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
            $product = $this->productRepository->findOrFail($id);
            $this->productRepository->delete($product);
            event(new DeletedContentEvent(PRODUCT_MODULE_SCREEN_NAME, $request, $product));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
