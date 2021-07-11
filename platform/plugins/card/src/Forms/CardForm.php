<?php

namespace Botble\Card\Forms;

use Botble\ACL\Models\User;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Forms\FormAbstract;
use Botble\Card\Http\Requests\CardRequest;
use Botble\Card\Models\Card;

class CardForm extends FormAbstract
{

    /**
     * {@inheritDoc}
     */
    public function buildForm()
    {
        $users = User::query()->get(['id', 'first_name', 'last_name']);
        $userList = [];
        $userList[0] = trans('plugins/card::card.form.user_name');
        foreach ($users as $user) {
            $userList[$user->id] = "$user->first_name $user->last_name";
        }

        $this
            ->setupModel(new Card)
            ->setValidatorClass(CardRequest::class)
            ->withCustomFields()
            ->add('name', 'text', [
                'label'      => trans('plugins/card::card.form.full_name'),
                'label_attr' => ['class' => 'control-label'],
                'attr'       => [
                    'placeholder'  => trans('plugins/card::card.form.full_name_placeholder'),
                    'data-counter' => 120,
                ],
            ])
            ->add('dob', 'text', [
                'label'         => trans('plugins/card::card.form.dob'),
                'label_attr'    => ['class' => 'control-label'],
                'attr'          => [
                    'class'            => 'form-control datepicker',
                    'data-date-format' => 'dd/mm/yyyy',
                ],
                'default_value' => now(config('app.timezone'))->subYears(20)->format('d/m/Y'),
            ])
            ->add('user_id', 'customSelect', [
                'label'      => trans('plugins/card::card.form.user_name'),
                'label_attr' => ['class' => 'control-label required'],
                'choices'    => $userList,
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
