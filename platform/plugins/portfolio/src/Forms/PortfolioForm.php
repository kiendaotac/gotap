<?php

namespace Botble\Portfolio\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Portfolio\Http\Requests\PortfolioRequest;
use Botble\Portfolio\Models\Portfolio;

class PortfolioForm extends FormAbstract
{

    /**
     * {@inheritDoc}
     */
    public function buildForm()
    {
        $this
            ->setupModel(new Portfolio)
            ->setValidatorClass(PortfolioRequest::class)
            ->withCustomFields()
            ->add('name', 'text', [
                'label'      => trans('core/base::forms.name'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => trans('core/base::forms.name_placeholder'),
                    'data-counter' => 120,
                ],
            ])
            ->add('image', 'mediaImage', [
                'label'      => __('Image'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => __('Image'),
                ],
            ])
            ->add('content', 'editor', [
                'label'      => __('Content'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => __('Content'),
                    'data-counter' => 120,
                ],
            ])
            ->add('order', 'number', [
                'label'      => __('Order'),
                'label_attr' => ['class' => 'control-label required'],
                'value'     =>  1,
                'attr'       => [
                    'placeholder'  => __('Order'),
                    'data-counter' => 120,
                    'default_value' => 0,
                    'min'   =>  0,
                    'step'  =>  1,
                ],
            ])
            ->add('is_wide', 'onOff', [
                'label'         => __('Is Wide'),
                'label_attr'    => ['class' => 'control-label'],
                'default_value' => false,
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
