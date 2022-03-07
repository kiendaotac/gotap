<?php

namespace Botble\Account\Tables;

use Auth;
use BaseHelper;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Account\Repositories\Interfaces\AccountInterface;
use Botble\Table\Abstracts\TableAbstract;
use Illuminate\Contracts\Routing\UrlGenerator;
use Yajra\DataTables\DataTables;
use Botble\Account\Models\Account;
use Html;

class AccountTable extends TableAbstract
{

    /**
     * @var bool
     */
    protected $hasActions = true;

    /**
     * @var bool
     */
    protected $hasFilter = true;

    /**
     * AccountTable constructor.
     * @param DataTables $table
     * @param UrlGenerator $urlGenerator
     * @param AccountInterface $accountRepository
     */
    public function __construct(DataTables $table, UrlGenerator $urlGenerator, AccountInterface $accountRepository)
    {
        $this->repository = $accountRepository;
        $this->setOption('id', 'plugins-account-table');
        parent::__construct($table, $urlGenerator);

        if (!Auth::user()->hasAnyPermission(['account.edit', 'account.destroy'])) {
            $this->hasOperations = false;
            $this->hasActions = false;
        }
    }

    /**
     * {@inheritDoc}
     */
    public function ajax()
    {
        $data = $this->table
            ->eloquent($this->query())
            ->editColumn('fullname', function ($item) {
                if (!Auth::user()->hasPermission('account.edit')) {
                    return $item->fullname;
                }
                return Html::link(route('account.edit', $item->id), $item->fullname ? $item->fullname : 'Chưa đặt tên');
            })
            ->editColumn('checkbox', function ($item) {
                return $this->getCheckbox($item->id);
            })
            ->editColumn('avatar', function ($item) {
                return $item->avatar ? '<img src="' . \RvMedia::getImageUrl($item->avatar) . '" alt="' . $item->fullname . '" style="width: 50px">' :  '<img src="' . \RvMedia::getImageUrl('/avatars/default-avatar.png') . '" alt="' . $item->fullname . '" style="width: 50px">';;
            })
            ->addColumn('link', function ($item) {
                return Html::link(route('public.member.qr.index', $item->uuid), 'QR Code', ['target' => '_blank']);
            })
            ->addColumn('download', function ($item) {
                return Html::link(route('account.download', $item->uuid), 'Download', ['target' => '_blank']);
            })
            ->editColumn('created_at', function ($item) {
                return BaseHelper::formatDate($item->created_at);
            })
            ->editColumn('status', function ($item) {
                return $item->status->toHtml();
            });

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, $this->repository->getModel())
            ->addColumn('operations', function ($item) {
                return $this->getOperations('account.edit', 'account.destroy', $item);
            })
            ->escapeColumns([])
            ->make(true);
    }

    /**
     * {@inheritDoc}
     */
    public function query()
    {
        $model = $this->repository->getModel();
        $select = [
            'accounts.id',
            'accounts.avatar',
            'accounts.fullname',
            'accounts.username',
            'accounts.description',
            'accounts.uuid',
            'accounts.code',
            'accounts.status',
        ];

        $query = $model->select($select);

        return $this->applyScopes(apply_filters(BASE_FILTER_TABLE_QUERY, $query, $model, $select));
    }

    /**
     * {@inheritDoc}
     */
    public function columns()
    {
        return [
            'id' => [
                'name'  => 'accounts.id',
                'title' => trans('core/base::tables.id'),
                'width' => '20px',
            ],
            'avatar' => [
                'name'  => 'accounts.avatar',
                'title' => __('Avatar'),
                'class' => 'text-center',
            ],
            'fullname' => [
                'name'  => 'accounts.fullname',
                'title' => __('Full Name'),
                'class' => 'text-left',
            ],
            'username' => [
                'name'  => 'accounts.username',
                'title' => __('User Name'),
                'class' => 'text-left',
            ],
            'description' => [
                'name'  => 'accounts.description',
                'title' => __('Description'),
                'class' => 'text-left',
            ],
            'uuid' => [
                'name'  => 'accounts.uuid',
                'title' => __('Card ID'),
                'class' => 'text-center',
            ],
            'code' => [
                'name'  => 'accounts.code',
                'title' => __('Code'),
                'width' => '100px',
                'class' => 'text-center'
            ],
            'link' => [
                'name'  => 'accounts.id',
                'title' => __('Link'),
                'width' => '100px',
                'class' => 'text-center'
            ],
            'download' => [
                'name'  => 'accounts.id',
                'title' => __('Download'),
                'width' => '100px',
                'class' => 'text-center'
            ],
            'status' => [
                'name'  => 'accounts.status',
                'title' => trans('core/base::tables.status'),
                'width' => '100px',
            ],
        ];
    }

    /**
     * {@inheritDoc}
     */
    public function buttons()
    {
        $buttons = $this->addCreateButton(route('account.create'), 'account.create');

        return apply_filters(BASE_FILTER_TABLE_BUTTONS, $buttons, Account::class);
    }

    /**
     * {@inheritDoc}
     */
    public function bulkActions(): array
    {
        $action = $this->addDeleteAction(route('account.deletes'), 'account.destroy', parent::bulkActions());
        $action['download-many'] = $this->addDownloadAction(route('account.download-many'));

        return $action;
    }

    protected function addDownloadAction(string $url)
    {
        return view('plugins/account::partials.download', [
                'href'       => $url,
                'data_class' => '',
            ]);
    }

    /**
     * {@inheritDoc}
     */
    public function getBulkChanges(): array
    {
        return [
            'accounts.fullname' => [
                'title'    => __('Full Name'),
                'type'     => 'text',
                'validate' => 'required|max:120',
            ],
            'accounts.status' => [
                'title'    => trans('core/base::tables.status'),
                'type'     => 'select',
                'choices'  => BaseStatusEnum::labels(),
                'validate' => 'required|in:' . implode(',', BaseStatusEnum::values()),
            ],
            'accounts.created_at' => [
                'title' => trans('core/base::tables.created_at'),
                'type'  => 'date',
            ],
        ];
    }

    /**
     * @return array
     */
    public function getFilters(): array
    {
        return $this->getBulkChanges();
    }
}
