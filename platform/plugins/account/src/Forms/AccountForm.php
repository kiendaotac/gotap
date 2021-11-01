<?php

namespace Botble\Account\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Account\Http\Requests\AccountRequest;
use Botble\Account\Models\Account;

class AccountForm extends FormAbstract
{

    /**
     * {@inheritDoc}
     */
    public function buildForm()
    {
        $this
            ->setupModel(new Account)
            ->setValidatorClass(AccountRequest::class)
            ->withCustomFields()
            ->add('fullname', 'text', [
                'label'      => __('Full name'),
                'label_attr' => ['class' => 'control-label'],
                'attr'       => [
                    'placeholder'  => __('Full name'),
                    'data-counter' => 120,
                ],
            ])
            ->add('username', 'text', [
                'label'      => __('Username'),
                'label_attr' => ['class' => 'control-label'],
                'attr'       => [
                    'placeholder'  => __('Username'),
                    'data-counter' => 120,
                ],
            ])
            ->add('avatar', 'mediaImage', [
                'label'      => __('Avatar'),
                'label_attr' => ['class' => 'control-label'],
            ])
            ->add('description', 'textarea', [
                'label'      => __('Description'),
                'label_attr' => ['class' => 'control-label'],
                'attr'       => [
                    'placeholder'  => __('Description'),
                    'data-counter' => 255,
                ],
            ])
            ->add('address', 'textarea', [
                'label'      => __('Address'),
                'label_attr' => ['class' => 'control-label'],
                'attr'       => [
                    'placeholder'  => __('Address'),
                    'data-counter' => 255,
                ],
            ])
            ->add('status', 'customSelect', [
                'label'      => trans('core/base::tables.status'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'class' => 'form-control select-full',
                ],
                'choices'    => BaseStatusEnum::labels(),
                'selected'   => BaseStatusEnum::PENDING
            ])
            ->setBreakFieldPoint('status');
    }
}
