<?php

namespace Botble\Social\Tables;

use Auth;
use BaseHelper;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Social\Repositories\Interfaces\SocialInterface;
use Botble\Table\Abstracts\TableAbstract;
use Illuminate\Contracts\Routing\UrlGenerator;
use Yajra\DataTables\DataTables;
use Botble\Social\Models\Social;
use Html;

class SocialTable extends TableAbstract
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
     * SocialTable constructor.
     * @param DataTables $table
     * @param UrlGenerator $urlGenerator
     * @param SocialInterface $socialRepository
     */
    public function __construct(DataTables $table, UrlGenerator $urlGenerator, SocialInterface $socialRepository)
    {
        $this->repository = $socialRepository;
        $this->setOption('id', 'plugins-social-table');
        parent::__construct($table, $urlGenerator);

        if (!Auth::user()->hasAnyPermission(['social.edit', 'social.destroy'])) {
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
            ->editColumn('name', function ($item) {
                if (!Auth::user()->hasPermission('social.edit')) {
                    return $item->name;
                }
                return Html::link(route('social.edit', $item->id), $item->name);
            })
            ->editColumn('checkbox', function ($item) {
                return $this->getCheckbox($item->id);
            })
            ->editColumn('created_at', function ($item) {
                return BaseHelper::formatDate($item->created_at);
            })
            ->editColumn('is_bank', function ($item) {
                return $item->is_bank ? '<i class="far fa-check-square fa-2x text-success"></i>' : '<i class="fas fa-2x fa-times text-danger"></i>';
            })
            ->editColumn('status', function ($item) {
                return $item->status->toHtml();
            });

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, $this->repository->getModel())
            ->addColumn('operations', function ($item) {
                return $this->getOperations('social.edit', 'social.destroy', $item);
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
            'socials.id',
            'socials.name',
            'socials.type',
            'socials.hint',
            'socials.is_bank',
            'socials.created_at',
            'socials.status',
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
                'name'  => 'socials.id',
                'title' => trans('core/base::tables.id'),
                'width' => '20px',
            ],
            'name' => [
                'name'  => 'socials.name',
                'title' => trans('core/base::tables.name'),
                'class' => 'text-left',
            ],
            'type' => [
                'name'  => 'socials.type',
                'title' => __('Type'),
                'class' => 'text-left',
            ],
            'hint' => [
                'name'  => 'socials.hint',
                'title' => __('Hint'),
                'class' => 'text-left',
            ],
            'is_bank' => [
                'name'  => 'socials.is_bank',
                'title' => __('is bank'),
                'width' => '100px'
            ],
            'created_at' => [
                'name'  => 'socials.created_at',
                'title' => trans('core/base::tables.created_at'),
                'width' => '100px',
            ],
            'status' => [
                'name'  => 'socials.status',
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
        $buttons = $this->addCreateButton(route('social.create'), 'social.create');

        return apply_filters(BASE_FILTER_TABLE_BUTTONS, $buttons, Social::class);
    }

    /**
     * {@inheritDoc}
     */
    public function bulkActions(): array
    {
        return $this->addDeleteAction(route('social.deletes'), 'social.destroy', parent::bulkActions());
    }

    /**
     * {@inheritDoc}
     */
    public function getBulkChanges(): array
    {
        return [
            'socials.name' => [
                'title'    => trans('core/base::tables.name'),
                'type'     => 'text',
                'validate' => 'required|max:120',
            ],
            'socials.status' => [
                'title'    => trans('core/base::tables.status'),
                'type'     => 'select',
                'choices'  => BaseStatusEnum::labels(),
                'validate' => 'required|in:' . implode(',', BaseStatusEnum::values()),
            ],
            'socials.created_at' => [
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
