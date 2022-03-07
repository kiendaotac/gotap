<?php

namespace Botble\Icon\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Icon\Http\Requests\IconRequest;
use Botble\Icon\Models\Icon;
use Botble\Social\Repositories\Interfaces\SocialInterface;
use Botble\SocialTheme\Repositories\Interfaces\SocialThemeInterface;

class IconForm extends FormAbstract
{

    /**
     * {@inheritDoc}
     */
    public function buildForm()
    {
        $this
            ->setupModel(new Icon)
            ->setValidatorClass(IconRequest::class)
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
                'label'      => __('Icon'),
                'label_attr' => ['class' => 'control-label'],
            ])
            ->add('social_id', 'customSelect', [
                'label'      => __('Social'),
                'label_attr' => ['class' => 'control-label required'],
                'choices'    => $this->getAllSocial(),
            ])
            ->add('theme_id', 'customSelect', [
                'label'      => __('Theme'),
                'label_attr' => ['class' => 'control-label required'],
                'choices'    => $this->getAllTheme(),
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

    private function getAllSocial(): array
    {
        $socials = app(SocialInterface::class)->getModel()->where('status', BaseStatusEnum::PUBLISHED)->select(['id', 'name'])->get();
        $socialSelect = [];
        foreach ($socials as $social) {
            $socialSelect[$social->id] = $social->name;
        }

        return $socialSelect;
    }

    private function getAllTheme(): array
    {
        $themes = app(SocialThemeInterface::class)->getModel()->where('status', BaseStatusEnum::PUBLISHED)->select(['id', 'name'])->get();
        $selectTheme = [];
        foreach ($themes as $theme) {
            $selectTheme[$theme->id] = $theme->name;
        }

        return $selectTheme;
    }
}
