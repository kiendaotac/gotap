<?php

namespace Botble\Icon\Tables;

use Auth;
use BaseHelper;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Icon\Repositories\Interfaces\IconInterface;
use Botble\Media\Facades\RvMediaFacade;
use Botble\Table\Abstracts\TableAbstract;
use Illuminate\Contracts\Routing\UrlGenerator;
use Yajra\DataTables\DataTables;
use Botble\Icon\Models\Icon;
use Html;

class IconTable extends TableAbstract
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
     * IconTable constructor.
     * @param DataTables $table
     * @param UrlGenerator $urlGenerator
     * @param IconInterface $iconRepository
     */
    public function __construct(DataTables $table, UrlGenerator $urlGenerator, IconInterface $iconRepository)
    {
        $this->repository = $iconRepository;
        $this->setOption('id', 'plugins-icon-table');
        parent::__construct($table, $urlGenerator);

        if (!Auth::user()->hasAnyPermission(['icon.edit', 'icon.destroy'])) {
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
                if (!Auth::user()->hasPermission('icon.edit')) {
                    return $item->name;
                }
                return Html::link(route('icon.edit', $item->id), $item->name);
            })
            ->editColumn('checkbox', function ($item) {
                return $this->getCheckbox($item->id);
            })
            ->editColumn('image', function ($item) {
                if ($item->image) {
                    return "<img style='max-width: 30px' src='" . RvMediaFacade::getImageUrl($item->image) . "' alt='" . $item->name . "'>";
                }
                return $item->image;
            })
            ->addColumn('theme', function ($item){
                return $item->theme ? $item->theme->name : '';
            })
            ->editColumn('created_at', function ($item) {
                return BaseHelper::formatDate($item->created_at);
            })
            ->editColumn('status', function ($item) {
                return $item->status->toHtml();
            });

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, $this->repository->getModel())
            ->addColumn('operations', function ($item) {
                return $this->getOperations('icon.edit', 'icon.destroy', $item);
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
            'icons.id',
            'icons.name',
            'icons.image',
            'icons.created_at',
            'icons.status',
            'icons.theme_id',
        ];

        $query = $model->with(['theme' => function($query) {
            $query->select(['social_themes.id', 'social_themes.name']);
        }])->select($select);

        return $this->applyScopes(apply_filters(BASE_FILTER_TABLE_QUERY, $query, $model, $select));
    }

    /**
     * {@inheritDoc}
     */
    public function columns()
    {
        return [
            'id' => [
                'name'  => 'icons.id',
                'title' => trans('core/base::tables.id'),
                'width' => '20px',
            ],
            'name' => [
                'name'  => 'icons.name',
                'title' => trans('core/base::tables.name'),
                'class' => 'text-left',
            ],
            'image' => [
                'name'  => 'icons.image',
                'title' => __('Image'),
                'class' => 'text-left',
            ],
            'theme' => [
                'name'  => 'icons.theme',
                'title' => __('Theme'),
                'class' => 'text-left',
            ],
            'created_at' => [
                'name'  => 'icons.created_at',
                'title' => trans('core/base::tables.created_at'),
                'width' => '100px',
            ],
            'status' => [
                'name'  => 'icons.status',
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
        $buttons = $this->addCreateButton(route('icon.create'), 'icon.create');

        return apply_filters(BASE_FILTER_TABLE_BUTTONS, $buttons, Icon::class);
    }

    /**
     * {@inheritDoc}
     */
    public function bulkActions(): array
    {
        return $this->addDeleteAction(route('icon.deletes'), 'icon.destroy', parent::bulkActions());
    }

    /**
     * {@inheritDoc}
     */
    public function getBulkChanges(): array
    {
        return [
            'icons.name' => [
                'title'    => trans('core/base::tables.name'),
                'type'     => 'text',
                'validate' => 'required|max:120',
            ],
            'icons.status' => [
                'title'    => trans('core/base::tables.status'),
                'type'     => 'select',
                'choices'  => BaseStatusEnum::labels(),
                'validate' => 'required|in:' . implode(',', BaseStatusEnum::values()),
            ],
            'icons.created_at' => [
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
