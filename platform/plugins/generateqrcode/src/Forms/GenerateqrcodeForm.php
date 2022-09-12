<?php

namespace Botble\Generateqrcode\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Generateqrcode\Http\Requests\GenerateqrcodeRequest;
use Botble\Generateqrcode\Models\Generateqrcode;

class GenerateqrcodeForm extends FormAbstract
{

    /**
     * {@inheritDoc}
     */
    public function buildForm()
    {
        $this
            ->setupModel(new Generateqrcode)
            ->setValidatorClass(GenerateqrcodeRequest::class)
            ->withCustomFields()
            ->add('name', 'text', [
                'label'      => trans('core/base::forms.name'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => trans('core/base::forms.name_placeholder'),
                    'data-counter' => 120,
                ],
            ])
            ->add('qty', 'number', [
                'label'      => 'Số lượng',
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => 'Số lượng',
                    'min' => 1,
                    'step' => 1
                ],
            ])
//            ->add('status', 'customSelect', [
//                'label'      => trans('core/base::tables.status'),
//                'label_attr' => ['class' => 'control-label required'],
//                'attr'       => [
//                    'class' => 'form-control select-full',
//                ],
//                'choices'    => BaseStatusEnum::labels(),
//            ])
            ->setBreakFieldPoint('status');
    }
}
