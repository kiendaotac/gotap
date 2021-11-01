<?php

namespace Botble\Introduction\Tables;

use Auth;
use BaseHelper;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Introduction\Repositories\Interfaces\IntroductionInterface;
use Botble\Table\Abstracts\TableAbstract;
use Illuminate\Contracts\Routing\UrlGenerator;
use Yajra\DataTables\DataTables;
use Botble\Introduction\Models\Introduction;
use Html;

class IntroductionTable extends TableAbstract
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
     * IntroductionTable constructor.
     * @param DataTables $table
     * @param UrlGenerator $urlGenerator
     * @param IntroductionInterface $introductionRepository
     */
    public function __construct(DataTables $table, UrlGenerator $urlGenerator, IntroductionInterface $introductionRepository)
    {
        $this->repository = $introductionRepository;
        $this->setOption('id', 'plugins-introduction-table');
        parent::__construct($table, $urlGenerator);

        if (!Auth::user()->hasAnyPermission(['introduction.edit', 'introduction.destroy'])) {
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
                if (!Auth::user()->hasPermission('introduction.edit')) {
                    return $item->name;
                }
                return Html::link(route('introduction.edit', $item->id), $item->name);
            })
            ->editColumn('checkbox', function ($item) {
                return $this->getCheckbox($item->id);
            })
            ->editColumn('is_title', function ($item) {
                return $item->is_title ?
                    Html::tag('span', 'True', ['class' => 'label-success status-label'])->toHtml() :
                    Html::tag('span', 'False', ['class' => 'label-warning status-label'])->toHtml();
            })
            ->editColumn('created_at', function ($item) {
                return BaseHelper::formatDate($item->created_at);
            })
            ->editColumn('status', function ($item) {
                return $item->status->toHtml();
            });

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, $this->repository->getModel())
            ->addColumn('operations', function ($item) {
                return $this->getOperations('introduction.edit', 'introduction.destroy', $item);
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
            'introductions.id',
            'introductions.name',
            'introductions.is_title',
            'introductions.created_at',
            'introductions.status',
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
                'name'  => 'introductions.id',
                'title' => trans('core/base::tables.id'),
                'width' => '20px',
            ],
            'name' => [
                'name'  => 'introductions.name',
                'title' => trans('core/base::tables.name'),
                'class' => 'text-left',
            ],
            'is_title' => [
                'name'  => 'introductions.is_title',
                'title' => __('Tiêu đề'),
                'class' => 'text-left',
            ],
            'created_at' => [
                'name'  => 'introductions.created_at',
                'title' => trans('core/base::tables.created_at'),
                'width' => '100px',
            ],
            'status' => [
                'name'  => 'introductions.status',
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
        $buttons = $this->addCreateButton(route('introduction.create'), 'introduction.create');

        return apply_filters(BASE_FILTER_TABLE_BUTTONS, $buttons, Introduction::class);
    }

    /**
     * {@inheritDoc}
     */
    public function bulkActions(): array
    {
        return $this->addDeleteAction(route('introduction.deletes'), 'introduction.destroy', parent::bulkActions());
    }

    /**
     * {@inheritDoc}
     */
    public function getBulkChanges(): array
    {
        return [
            'introductions.name' => [
                'title'    => trans('core/base::tables.name'),
                'type'     => 'text',
                'validate' => 'required|max:120',
            ],
            'introductions.status' => [
                'title'    => trans('core/base::tables.status'),
                'type'     => 'select',
                'choices'  => BaseStatusEnum::labels(),
                'validate' => 'required|in:' . implode(',', BaseStatusEnum::values()),
            ],
            'introductions.created_at' => [
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
