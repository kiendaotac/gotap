<?php

namespace Botble\ProductCard\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\ProductCard\Http\Requests\ProductCardRequest;
use Botble\ProductCard\Models\ProductCard;

class ProductCardForm extends FormAbstract
{

    /**
     * {@inheritDoc}
     */
    public function buildForm()
    {
        $this
            ->setupModel(new ProductCard)
            ->setValidatorClass(ProductCardRequest::class)
            ->withCustomFields()
            ->add('name', 'text', [
                'label'      => trans('core/base::forms.name'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => trans('core/base::forms.name_placeholder'),
                    'data-counter' => 120,
                ],
            ])
            ->add('description', 'textarea', [
                'label'      => trans('core/base::forms.description'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => trans('core/base::forms.description'),
                    'data-counter' => 10000,
                ],
            ])->add('bio', 'textarea', [
                'label'      => __('Mô tả ngắn'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => __('Mô tả ngắn'),
                    'data-counter' => 10000,
                ],
            ])
            ->add('price', 'number', [
                'label'      => __('Price'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => __('Price'),
                    'data-counter' => 120,
                    'min'   =>  1000,
                    'step'  =>  100,
                ],
            ])
            ->add('old_price', 'number', [
                'label'      => __('Old Price'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => __('Old Price'),
                    'data-counter' => 120,
                    'min'   =>  1000,
                    'step'  =>  100,
                ],
            ])
            ->add('image1', 'mediaImage', [
                'label'      => __('Image'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => __('Image'),
                ],
            ])
            ->add('image2', 'mediaImage', [
                'label'      => __('Image'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => __('Image'),
                ],
            ])
            ->add('image3', 'mediaImage', [
                'label'      => __('Image'),
                'label_attr' => ['class' => 'control-label'],
                'attr'       => [
                    'placeholder'  => __('Image'),
                ],
            ])
            ->add('image4', 'mediaImage', [
                'label'      => __('Image'),
                'label_attr' => ['class' => 'control-label'],
                'attr'       => [
                    'placeholder'  => __('Image'),
                ],
            ])
            ->add('image5', 'mediaImage', [
                'label'      => __('Image'),
                'label_attr' => ['class' => 'control-label'],
                'attr'       => [
                    'placeholder'  => __('Image'),
                ],
            ])
            ->add('link', 'text', [
                'label'      => __('Link'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => __('Link'),
                    'data-counter' => 1000,
                ],
            ])
            ->add('is_card', 'onOff', [
                'label'         => __('is Card'),
                'label_attr'    => ['class' => 'control-label'],
                'default_value' => true,
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
