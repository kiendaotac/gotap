<?php

namespace Botble\Question\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Question\Http\Requests\QuestionRequest;
use Botble\Question\Models\Question;

class QuestionForm extends FormAbstract
{

    /**
     * {@inheritDoc}
     */
    public function buildForm()
    {
        $this
            ->setupModel(new Question)
            ->setValidatorClass(QuestionRequest::class)
            ->withCustomFields()
            ->add('question', 'text', [
                'label'      => __('Question'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => __('Question'),
                    'data-counter' => 120,
                ],
            ])
            ->add('answer', 'editor', [
                'label'      => __('Answer'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'with-short-code' => false, // if true, it will add a button to select shortcode
                    'without-buttons' => false, // if true, all buttons will be hidden
                ],
            ])
            ->add('position', 'number', [
                'label'      => __('Position'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => __('Position'),
                    'data-counter' => 120,
                    'value'        => 10
                ],
                'default_value' => 10
            ])
            ->add('status', 'customSelect', [
                'label'      => trans('core/base::tables.status'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'class' => 'form-control select-full',
                ],
                'choices'    => BaseStatusEnum::labels(),
            ])
            ->setBreakFieldPoint('status');
    }
}
