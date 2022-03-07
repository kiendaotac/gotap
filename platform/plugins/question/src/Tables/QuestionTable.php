<?php

namespace Botble\Question\Tables;

use Auth;
use BaseHelper;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Question\Repositories\Interfaces\QuestionInterface;
use Botble\Table\Abstracts\TableAbstract;
use Illuminate\Contracts\Routing\UrlGenerator;
use Yajra\DataTables\DataTables;
use Botble\Question\Models\Question;
use Html;

class QuestionTable extends TableAbstract
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
     * QuestionTable constructor.
     * @param DataTables $table
     * @param UrlGenerator $urlGenerator
     * @param QuestionInterface $questionRepository
     */
    public function __construct(DataTables $table, UrlGenerator $urlGenerator, QuestionInterface $questionRepository)
    {
        $this->repository = $questionRepository;
        $this->setOption('id', 'plugins-question-table');
        parent::__construct($table, $urlGenerator);

        if (!Auth::user()->hasAnyPermission(['question.edit', 'question.destroy'])) {
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
                if (!Auth::user()->hasPermission('question.edit')) {
                    return $item->name;
                }
                return Html::link(route('question.edit', $item->id), $item->name);
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
                return $this->getOperations('question.edit', 'question.destroy', $item);
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
            'questions.id',
            'questions.question',
            'questions.answer',
            'questions.position',
            'questions.created_at',
            'questions.status',
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
                'name'  => 'questions.id',
                'title' => trans('core/base::tables.id'),
                'width' => '20px',
            ],
            'question' => [
                'name'  => 'questions.question',
                'title' => __('Question'),
                'class' => 'text-left',
            ],
            'answer' => [
                'name'  => 'questions.answer',
                'title' => __('Answer'),
                'class' => 'text-left',
            ],
            'position' => [
                'name'  => 'questions.position',
                'title' => __('Position'),
                'class' => 'text-left',
            ],
            'created_at' => [
                'name'  => 'questions.created_at',
                'title' => trans('core/base::tables.created_at'),
                'width' => '100px',
            ],
            'status' => [
                'name'  => 'questions.status',
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
        $buttons = $this->addCreateButton(route('question.create'), 'question.create');

        return apply_filters(BASE_FILTER_TABLE_BUTTONS, $buttons, Question::class);
    }

    /**
     * {@inheritDoc}
     */
    public function bulkActions(): array
    {
        return $this->addDeleteAction(route('question.deletes'), 'question.destroy', parent::bulkActions());
    }

    /**
     * {@inheritDoc}
     */
    public function getBulkChanges(): array
    {
        return [
            'questions.name' => [
                'title'    => trans('core/base::tables.name'),
                'type'     => 'text',
                'validate' => 'required|max:120',
            ],
            'questions.status' => [
                'title'    => trans('core/base::tables.status'),
                'type'     => 'select',
                'choices'  => BaseStatusEnum::labels(),
                'validate' => 'required|in:' . implode(',', BaseStatusEnum::values()),
            ],
            'questions.created_at' => [
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
