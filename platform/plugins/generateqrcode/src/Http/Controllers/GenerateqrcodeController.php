<?php

namespace Botble\Generateqrcode\Http\Controllers;

use App\Jobs\GenerateQrCode;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Generateqrcode\Http\Requests\GenerateqrcodeRequest;
use Botble\Generateqrcode\Repositories\Interfaces\GenerateqrcodeInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Generateqrcode\Tables\GenerateqrcodeTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Generateqrcode\Forms\GenerateqrcodeForm;
use Botble\Base\Forms\FormBuilder;

class GenerateqrcodeController extends BaseController
{
    /**
     * @var GenerateqrcodeInterface
     */
    protected $generateqrcodeRepository;

    /**
     * @param GenerateqrcodeInterface $generateqrcodeRepository
     */
    public function __construct(GenerateqrcodeInterface $generateqrcodeRepository)
    {
        $this->generateqrcodeRepository = $generateqrcodeRepository;
    }

    /**
     * @param GenerateqrcodeTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @throws \Throwable
     */
    public function index(GenerateqrcodeTable $table)
    {
        page_title()->setTitle(trans('plugins/generateqrcode::generateqrcode.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/generateqrcode::generateqrcode.create'));

        return $formBuilder->create(GenerateqrcodeForm::class)->renderForm();
    }

    /**
     * @param GenerateqrcodeRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(GenerateqrcodeRequest $request, BaseHttpResponse $response)
    {
        $data = $request->input();
        $data['status'] = BaseStatusEnum::PENDING;

        $generateqrcode = $this->generateqrcodeRepository->createOrUpdate($data);

        event(new CreatedContentEvent(GENERATEQRCODE_MODULE_SCREEN_NAME, $request, $generateqrcode));

        GenerateQrCode::dispatch($generateqrcode);

        return $response
            ->setPreviousUrl(route('generateqrcode.index'))
//            ->setNextUrl(route('generateqrcode.edit', $generateqrcode->id))
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
        $generateqrcode = $this->generateqrcodeRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $generateqrcode));

        page_title()->setTitle(trans('plugins/generateqrcode::generateqrcode.edit') . ' "' . $generateqrcode->name . '"');

        return $formBuilder->create(GenerateqrcodeForm::class, ['model' => $generateqrcode])->renderForm();
    }

    /**
     * @param $id
     * @param GenerateqrcodeRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, GenerateqrcodeRequest $request, BaseHttpResponse $response)
    {
        $generateqrcode = $this->generateqrcodeRepository->findOrFail($id);

        $generateqrcode->fill($request->input());

        $this->generateqrcodeRepository->createOrUpdate($generateqrcode);

        event(new UpdatedContentEvent(GENERATEQRCODE_MODULE_SCREEN_NAME, $request, $generateqrcode));

        return $response
            ->setPreviousUrl(route('generateqrcode.index'))
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
            $generateqrcode = $this->generateqrcodeRepository->findOrFail($id);

            $this->generateqrcodeRepository->delete($generateqrcode);

            event(new DeletedContentEvent(GENERATEQRCODE_MODULE_SCREEN_NAME, $request, $generateqrcode));

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
            $generateqrcode = $this->generateqrcodeRepository->findOrFail($id);
            $this->generateqrcodeRepository->delete($generateqrcode);
            event(new DeletedContentEvent(GENERATEQRCODE_MODULE_SCREEN_NAME, $request, $generateqrcode));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
