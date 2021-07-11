<?php

namespace Botble\Card\Tables;

use App\Models\User;
use Auth;
use BaseHelper;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Card\Repositories\Interfaces\CardInterface;
use Botble\Table\Abstracts\TableAbstract;
use Illuminate\Contracts\Routing\UrlGenerator;
use Yajra\DataTables\DataTables;
use Botble\Card\Models\Card;
use Html;

class CardTable extends TableAbstract
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
     * CardTable constructor.
     * @param DataTables $table
     * @param UrlGenerator $urlGenerator
     * @param CardInterface $cardRepository
     */
    public function __construct(DataTables $table, UrlGenerator $urlGenerator, CardInterface $cardRepository)
    {
        $this->repository = $cardRepository;
        $this->setOption('id', 'plugins-card-table');
        parent::__construct($table, $urlGenerator);

        if (!Auth::user()->hasAnyPermission(['card.edit', 'card.destroy'])) {
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
                $name = $item->name ?? trans('plugins/card::card.card_derelict');
                if (!Auth::user()->hasPermission('card.edit')) {
                    return $name;
                }
                return Html::link(route('card.edit', $item->id), $name);
            })
            ->editColumn('checkbox', function ($item) {
                return $this->getCheckbox($item->id);
            })
            ->editColumn('created_at', function ($item) {
                return BaseHelper::formatDate($item->created_at);
            })
            ->editColumn('status', function ($item) {
                return $item->status->toHtml();
            })
            ->editColumn('user_id', function ($item) {
                return $item->user ? $item->user->first_name . " " . $item->user->last_name : null;
            });

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, $this->repository->getModel())
            ->addColumn('operations', function ($item) {
                return $this->getOperations('card.edit', 'card.destroy', $item);
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
            'cards.id',
            'cards.uuid',
            'cards.name',
            'cards.user_id',
            'cards.created_at',
            'cards.status',
        ];

        $query = $model->with('user')->select($select);

        return $this->applyScopes(apply_filters(BASE_FILTER_TABLE_QUERY, $query, $model, $select));
    }

    /**
     * {@inheritDoc}
     */
    public function columns()
    {
        return [
            'id' => [
                'name'  => 'cards.id',
                'title' => trans('core/base::tables.id'),
                'width' => '20px',
            ],
            'uuid' => [
                'name'  => 'cards.uuid',
                'title' => 'Card ID',
                'class' => 'text-left',
            ],
            'name' => [
                'name'  => 'cards.name',
                'title' => trans('core/base::tables.name'),
                'class' => 'text-left',
            ],
            'user_id' => [
                'name'  => 'cards.user_id',
                'title' => trans('plugins/card::card.form.user_name'),
                'class' => 'text-left',
            ],
            'created_at' => [
                'name'  => 'cards.created_at',
                'title' => trans('core/base::tables.created_at'),
                'width' => '100px',
            ],
            'status' => [
                'name'  => 'cards.status',
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
        $buttons = $this->addCreateButton(route('card.create'), 'card.create');

        return apply_filters(BASE_FILTER_TABLE_BUTTONS, $buttons, Card::class);
    }

    /**
     * {@inheritDoc}
     */
    public function bulkActions(): array
    {
        return $this->addDeleteAction(route('card.deletes'), 'card.destroy', parent::bulkActions());
    }

    /**
     * {@inheritDoc}
     */
    public function getBulkChanges(): array
    {
        return [
            'cards.name' => [
                'title'    => trans('core/base::tables.name'),
                'type'     => 'text',
                'validate' => 'required|max:120',
            ],
            'cards.status' => [
                'title'    => trans('core/base::tables.status'),
                'type'     => 'select',
                'choices'  => BaseStatusEnum::labels(),
                'validate' => 'required|in:' . implode(',', BaseStatusEnum::values()),
            ],
            'cards.created_at' => [
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
