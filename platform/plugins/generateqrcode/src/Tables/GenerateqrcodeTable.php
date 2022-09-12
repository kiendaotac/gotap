<?php

namespace Botble\Generateqrcode\Tables;

use Auth;
use BaseHelper;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Generateqrcode\Repositories\Interfaces\GenerateqrcodeInterface;
use Botble\Table\Abstracts\TableAbstract;
use Illuminate\Contracts\Routing\UrlGenerator;
use Yajra\DataTables\DataTables;
use Botble\Generateqrcode\Models\Generateqrcode;
use Html;

class GenerateqrcodeTable extends TableAbstract
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
     * GenerateqrcodeTable constructor.
     * @param DataTables $table
     * @param UrlGenerator $urlGenerator
     * @param GenerateqrcodeInterface $generateqrcodeRepository
     */
    public function __construct(DataTables $table, UrlGenerator $urlGenerator, GenerateqrcodeInterface $generateqrcodeRepository)
    {
        $this->repository = $generateqrcodeRepository;
        $this->setOption('id', 'plugins-generateqrcode-table');
        parent::__construct($table, $urlGenerator);

        if (!Auth::user()->hasAnyPermission(['generateqrcode.edit', 'generateqrcode.destroy'])) {
            $this->hasOperations = false;
            $this->hasActions = false;
        }
        $this->hasOperations = false;
        $this->hasActions = false;

    }

    /**
     * {@inheritDoc}
     */
    public function ajax()
    {
        $data = $this->table
            ->eloquent($this->query())
            ->editColumn('name', function ($item) {
                return $item->name;
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
            ->editColumn('link', function ($item) {
                if ($item->link) {
                    return Html::link($item->link, 'Download mã Qr');
                }
                return 'Chưa có link download';
            });

        return apply_filters(BASE_FILTER_GET_LIST_DATA, $data, $this->repository->getModel())
//            ->addColumn('operations', function ($item) {
//                return $this->getOperations('generateqrcode.edit', 'generateqrcode.destroy', $item);
//            })
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
            'generateqrcodes.id',
            'generateqrcodes.name',
            'generateqrcodes.qty',
            'generateqrcodes.link',
            'generateqrcodes.created_at',
            'generateqrcodes.status',
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
                'name'  => 'generateqrcodes.id',
                'title' => trans('core/base::tables.id'),
                'width' => '20px',
            ],
            'name' => [
                'name'  => 'generateqrcodes.name',
                'title' => trans('core/base::tables.name'),
                'class' => 'text-left',
            ],
            'qty' => [
                'name'  => 'generateqrcodes.qty',
                'title' => 'Số lượng',
                'class' => 'text-left',
            ],
            'link' => [
                'name'  => 'generateqrcodes.link',
                'title' => 'Link download',
                'class' => 'text-left',
            ],
            'created_at' => [
                'name'  => 'generateqrcodes.created_at',
                'title' => trans('core/base::tables.created_at'),
                'width' => '100px',
            ],
            'status' => [
                'name'  => 'generateqrcodes.status',
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
        $buttons = $this->addCreateButton(route('generateqrcode.create'), 'generateqrcode.create');

        return apply_filters(BASE_FILTER_TABLE_BUTTONS, $buttons, Generateqrcode::class);
    }

    /**
     * {@inheritDoc}
     */
    public function bulkActions(): array
    {
        return $this->addDeleteAction(route('generateqrcode.deletes'), 'generateqrcode.destroy', parent::bulkActions());
    }

    /**
     * {@inheritDoc}
     */
    public function getBulkChanges(): array
    {
        return [
            'generateqrcodes.name' => [
                'title'    => trans('core/base::tables.name'),
                'type'     => 'text',
                'validate' => 'required|max:120',
            ],
            'generateqrcodes.status' => [
                'title'    => trans('core/base::tables.status'),
                'type'     => 'select',
                'choices'  => BaseStatusEnum::labels(),
                'validate' => 'required|in:' . implode(',', BaseStatusEnum::values()),
            ],
            'generateqrcodes.created_at' => [
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
