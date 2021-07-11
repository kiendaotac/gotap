<?php

namespace Botble\Card\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Card\Http\Requests\CardRequest;
use Botble\Card\Repositories\Interfaces\CardInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Card\Tables\CardTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Card\Forms\CardForm;
use Botble\Base\Forms\FormBuilder;
use Illuminate\Support\Str;

class CardController extends BaseController
{
    /**
     * @var CardInterface
     */
    protected $cardRepository;

    /**
     * @param CardInterface $cardRepository
     */
    public function __construct(CardInterface $cardRepository)
    {
        $this->cardRepository = $cardRepository;
    }

    /**
     * @param CardTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @throws \Throwable
     */
    public function index(CardTable $table)
    {
        page_title()->setTitle(trans('plugins/card::card.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/card::card.create'));

        return $formBuilder->create(CardForm::class)->renderForm();
    }

    /**
     * @param CardRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(CardRequest $request, BaseHttpResponse $response)
    {
        $data = $request->input();

        $data['uuid'] = Str::uuid();

        $data['code'] = Str::upper(Str::random(4));

        $card = $this->cardRepository->createOrUpdate($data);

        event(new CreatedContentEvent(CARD_MODULE_SCREEN_NAME, $request, $card));

        return $response
            ->setPreviousUrl(route('card.index'))
            ->setNextUrl(route('card.edit', $card->id))
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
        $card = $this->cardRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $card));

        page_title()->setTitle(trans('plugins/card::card.edit') . ' "' . $card->name . '"');

        return $formBuilder->create(CardForm::class, ['model' => $card])->renderForm();
    }

    /**
     * @param $id
     * @param CardRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, CardRequest $request, BaseHttpResponse $response)
    {
        $card = $this->cardRepository->findOrFail($id);

        $card->fill($request->input());

        $this->cardRepository->createOrUpdate($card);

        event(new UpdatedContentEvent(CARD_MODULE_SCREEN_NAME, $request, $card));

        return $response
            ->setPreviousUrl(route('card.index'))
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
            $card = $this->cardRepository->findOrFail($id);

            $this->cardRepository->delete($card);

            event(new DeletedContentEvent(CARD_MODULE_SCREEN_NAME, $request, $card));

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
            $card = $this->cardRepository->findOrFail($id);
            $this->cardRepository->delete($card);
            event(new DeletedContentEvent(CARD_MODULE_SCREEN_NAME, $request, $card));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
