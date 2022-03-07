<?php

namespace Botble\Introduction\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Introduction\Http\Requests\IntroductionRequest;
use Botble\Introduction\Models\Introduction;

class IntroductionForm extends FormAbstract
{

    /**
     * {@inheritDoc}
     */
    public function buildForm()
    {
        $this
            ->setupModel(new Introduction)
            ->setValidatorClass(IntroductionRequest::class)
            ->withCustomFields()
            ->add('name', 'text', [
                'label'      => __('Nội dung'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => __('Nội dung'),
                    'data-counter' => 255,
                ],
            ])
            ->add('is_title', 'onOff', [
                'label'         => __('is Title'),
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
