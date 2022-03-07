<?php

namespace Botble\Icon\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Icon\Http\Requests\IconRequest;
use Botble\Icon\Repositories\Interfaces\IconInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Icon\Tables\IconTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Icon\Forms\IconForm;
use Botble\Base\Forms\FormBuilder;

class IconController extends BaseController
{
    /**
     * @var IconInterface
     */
    protected $iconRepository;

    /**
     * @param IconInterface $iconRepository
     */
    public function __construct(IconInterface $iconRepository)
    {
        $this->iconRepository = $iconRepository;
    }

    /**
     * @param IconTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @throws \Throwable
     */
    public function index(IconTable $table)
    {
        page_title()->setTitle(trans('plugins/icon::icon.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/icon::icon.create'));

        return $formBuilder->create(IconForm::class)->renderForm();
    }

    /**
     * @param IconRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(IconRequest $request, BaseHttpResponse $response)
    {
        $icon = $this->iconRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(ICON_MODULE_SCREEN_NAME, $request, $icon));

        return $response
            ->setPreviousUrl(route('icon.index'))
            ->setNextUrl(route('icon.edit', $icon->id))
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
        $icon = $this->iconRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $icon));

        page_title()->setTitle(trans('plugins/icon::icon.edit') . ' "' . $icon->name . '"');

        return $formBuilder->create(IconForm::class, ['model' => $icon])->renderForm();
    }

    /**
     * @param $id
     * @param IconRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, IconRequest $request, BaseHttpResponse $response)
    {
        $icon = $this->iconRepository->findOrFail($id);

        $icon->fill($request->input());

        $this->iconRepository->createOrUpdate($icon);

        event(new UpdatedContentEvent(ICON_MODULE_SCREEN_NAME, $request, $icon));

        return $response
            ->setPreviousUrl(route('icon.index'))
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
            $icon = $this->iconRepository->findOrFail($id);

            $this->iconRepository->delete($icon);

            event(new DeletedContentEvent(ICON_MODULE_SCREEN_NAME, $request, $icon));

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
            $icon = $this->iconRepository->findOrFail($id);
            $this->iconRepository->delete($icon);
            event(new DeletedContentEvent(ICON_MODULE_SCREEN_NAME, $request, $icon));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
