<?php

namespace Botble\SocialTheme\Tables;

use Auth;
use BaseHelper;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Media\Facades\RvMediaFacade;
use Botble\SocialTheme\Repositories\Interfaces\SocialThemeInterface;
use Botble\Table\Abstracts\TableAbstract;
use Illuminate\Contracts\Routing\UrlGenerator;
use Yajra\DataTables\DataTables;
use Botble\SocialTheme\Models\SocialTheme;
use Html;

class SocialThemeTable extends TableAbstract
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
     * SocialThemeTable constructor.
     * @param DataTables $table
     * @param UrlGenerator $urlGenerator
     * @param SocialThemeInterface $socialThemeRepository
     */
    public function __construct(DataTables $table, UrlGenerator $urlGenerator, SocialThemeInterface $socialThemeRepository)
    {
        $this->repository = $socialThemeRepository;
        $this->setOption('id', 'plugins-social-theme-table');
        parent::__construct($table, $urlGenerator);

        if (!Auth::user()->hasAnyPermission(['social-theme.edit', 'social-theme.destroy'])) {
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
                if (!Auth::user()->hasPermission('social-theme.edit')) {
                    return $item->name;
                }
                return Html::link(route('social-theme.edit', $item->id), $item->name);
            })
            ->editColumn('checkbox', function ($item) {
                return $this->getCheckbox($item->id);
            })
            ->editColumn('image', function ($item) {
                if ($item->image) {
                    return "<img height='60px' src='" . RvMediaFacade::getImageUrl($item->image) . "' alt='Image'>";
                }
                return $item->image;
            })
            ->editColumn('created_at', function ($item) {
                return BaseHelper::formatDate($item->created_at);
            })
            ->editColumn('status', function ($item) {
                return $item->status->toHtml();
            });

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, $this->repository->getModel())
            ->addColumn('operations', function ($item) {
                return $this->getOperations('social-theme.edit', 'social-theme.destroy', $item);
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
            'social_themes.id',
            'social_themes.name',
            'social_themes.description',
            'social_themes.image',
            'social_themes.created_at',
            'social_themes.status',
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
                'name'  => 'social_themes.id',
                'title' => trans('core/base::tables.id'),
                'width' => '20px',
            ],
            'name' => [
                'name'  => 'social_themes.name',
                'title' => trans('core/base::tables.name'),
                'class' => 'text-left',
            ],
            'description' => [
                'name'  => 'social_themes.description',
                'title' => trans('core/base::tables.description'),
                'class' => 'text-left',
            ],
            'image' => [
                'name'  => 'social_themes.image',
                'title' => trans('core/base::tables.image'),
                'class' => 'text-left',
            ],
            'created_at' => [
                'name'  => 'social_themes.created_at',
                'title' => trans('core/base::tables.created_at'),
                'width' => '100px',
            ],
            'status' => [
                'name'  => 'social_themes.status',
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
        $buttons = $this->addCreateButton(route('social-theme.create'), 'social-theme.create');

        return apply_filters(BASE_FILTER_TABLE_BUTTONS, $buttons, SocialTheme::class);
    }

    /**
     * {@inheritDoc}
     */
    public function bulkActions(): array
    {
        return $this->addDeleteAction(route('social-theme.deletes'), 'social-theme.destroy', parent::bulkActions());
    }

    /**
     * {@inheritDoc}
     */
    public function getBulkChanges(): array
    {
        return [
            'social_themes.name' => [
                'title'    => trans('core/base::tables.name'),
                'type'     => 'text',
                'validate' => 'required|max:120',
            ],
            'social_themes.status' => [
                'title'    => trans('core/base::tables.status'),
                'type'     => 'select',
                'choices'  => BaseStatusEnum::labels(),
                'validate' => 'required|in:' . implode(',', BaseStatusEnum::values()),
            ],
            'social_themes.created_at' => [
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
