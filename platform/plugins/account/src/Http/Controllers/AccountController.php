<?php

namespace Botble\Account\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Account\Http\Requests\AccountRequest;
use Botble\Account\Repositories\Interfaces\AccountInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Account\Tables\AccountTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Account\Forms\AccountForm;
use Botble\Base\Forms\FormBuilder;
use Illuminate\Support\Str;

class AccountController extends BaseController
{
    /**
     * @var AccountInterface
     */
    protected $accountRepository;

    /**
     * @param AccountInterface $accountRepository
     */
    public function __construct(AccountInterface $accountRepository)
    {
        $this->accountRepository = $accountRepository;
    }

    /**
     * @param AccountTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * @throws \Throwable
     */
    public function index(AccountTable $table)
    {
        page_title()->setTitle(trans('plugins/account::account.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/account::account.create'));

        return $formBuilder->create(AccountForm::class)->renderForm();
    }

    /**
     * @param AccountRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(AccountRequest $request, BaseHttpResponse $response)
    {
        $data = $request->input();

        $data['code'] = Str::upper(Str::random(4));

        $data['uuid'] = Str::uuid();

        $account = $this->accountRepository->createOrUpdate($data);

        event(new CreatedContentEvent(ACCOUNT_MODULE_SCREEN_NAME, $request, $account));

        return $response
            ->setPreviousUrl(route('account.index'))
            ->setNextUrl(route('account.edit', $account->id))
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
        $account = $this->accountRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $account));

        page_title()->setTitle(trans('plugins/account::account.edit') . ' "' . $account->name . '"');

        return $formBuilder->create(AccountForm::class, ['model' => $account])->renderForm();
    }

    /**
     * @param $id
     * @param AccountRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, AccountRequest $request, BaseHttpResponse $response)
    {
        $account = $this->accountRepository->findOrFail($id);

        $account->fill($request->input());

        $this->accountRepository->createOrUpdate($account);

        event(new UpdatedContentEvent(ACCOUNT_MODULE_SCREEN_NAME, $request, $account));

        return $response
            ->setPreviousUrl(route('account.index'))
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
            $account = $this->accountRepository->findOrFail($id);

            $this->accountRepository->delete($account);

            event(new DeletedContentEvent(ACCOUNT_MODULE_SCREEN_NAME, $request, $account));

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
            $account = $this->accountRepository->findOrFail($id);
            $this->accountRepository->delete($account);
            event(new DeletedContentEvent(ACCOUNT_MODULE_SCREEN_NAME, $request, $account));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
