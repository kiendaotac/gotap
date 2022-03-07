<?php

namespace Botble\ProductCard\Tables;

use Auth;
use BaseHelper;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\ProductCard\Repositories\Interfaces\ProductCardInterface;
use Botble\Table\Abstracts\TableAbstract;
use Illuminate\Contracts\Routing\UrlGenerator;
use Yajra\DataTables\DataTables;
use Botble\ProductCard\Models\ProductCard;
use Html;

class ProductCardTable extends TableAbstract
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
     * ProductCardTable constructor.
     * @param DataTables $table
     * @param UrlGenerator $urlGenerator
     * @param ProductCardInterface $productCardRepository
     */
    public function __construct(DataTables $table, UrlGenerator $urlGenerator, ProductCardInterface $productCardRepository)
    {
        $this->repository = $productCardRepository;
        $this->setOption('id', 'plugins-product-card-table');
        parent::__construct($table, $urlGenerator);

        if (!Auth::user()->hasAnyPermission(['product-card.edit', 'product-card.destroy'])) {
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
                if (!Auth::user()->hasPermission('product-card.edit')) {
                    return $item->name;
                }
                return Html::link(route('product-card.edit', $item->id), $item->name);
            })
            ->editColumn('is_card', function ($item) {
                return $item->is_card ?
                    Html::tag('span', 'True', ['class' => 'label-success status-label'])->toHtml()
                    :
                    Html::tag('span', 'False', ['class' => 'label-warning status-label'])->toHtml();
            })
            ->editColumn('checkbox', function ($item) {
                return $this->getCheckbox($item->id);
            })
            ->editColumn('created_at', function ($item) {
                return BaseHelper::formatDate($item->created_at);
            })
            ->editColumn('status', function ($item) {
                return $item->status->toHtml();
            });

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, $this->repository->getModel())
            ->addColumn('operations', function ($item) {
                return $this->getOperations('product-card.edit', 'product-card.destroy', $item);
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
            'product_cards.id',
            'product_cards.name',
            'product_cards.description',
            'product_cards.price',
            'product_cards.old_price',
            'product_cards.image1',
            'product_cards.image2',
            'product_cards.image3',
            'product_cards.image4',
            'product_cards.image5',
            'product_cards.link',
            'product_cards.is_card',
            'product_cards.created_at',
            'product_cards.status',
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
                'name'  => 'product_cards.id',
                'title' => trans('core/base::tables.id'),
                'width' => '20px',
            ],
            'name' => [
                'name'  => 'product_cards.name',
                'title' => trans('core/base::tables.name'),
                'class' => 'text-left',
            ],
            'price' => [
                'name'  => 'product_cards.price',
                'title' => __('Price'),
                'class' => 'text-left',
            ],
            'old_price' => [
                'name'  => 'product_cards.old_price',
                'title' => __('Old Price'),
                'class' => 'text-left',
            ],
            'is_card' => [
                'name'  => 'product_cards.is_card',
                'title' => __('is Card'),
                'class' => 'text-left',
            ],
            'created_at' => [
                'name'  => 'product_cards.created_at',
                'title' => trans('core/base::tables.created_at'),
                'width' => '100px',
            ],
            'status' => [
                'name'  => 'product_cards.status',
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
        $buttons = $this->addCreateButton(route('product-card.create'), 'product-card.create');

        return apply_filters(BASE_FILTER_TABLE_BUTTONS, $buttons, ProductCard::class);
    }

    /**
     * {@inheritDoc}
     */
    public function bulkActions(): array
    {
        return $this->addDeleteAction(route('product-card.deletes'), 'product-card.destroy', parent::bulkActions());
    }

    /**
     * {@inheritDoc}
     */
    public function getBulkChanges(): array
    {
        return [
            'product_cards.name' => [
                'title'    => trans('core/base::tables.name'),
                'type'     => 'text',
                'validate' => 'required|max:120',
            ],
            'product_cards.status' => [
                'title'    => trans('core/base::tables.status'),
                'type'     => 'select',
                'choices'  => BaseStatusEnum::labels(),
                'validate' => 'required|in:' . implode(',', BaseStatusEnum::values()),
            ],
            'product_cards.created_at' => [
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
