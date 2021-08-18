<?php

namespace Theme\Gotap\Http\Controllers;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Portfolio\Models\Portfolio;
use Botble\Product\Models\Product;
use Botble\Theme\Events\RenderingHomePageEvent;
use Botble\Theme\Http\Controllers\PublicController;
use SeoHelper;
use Theme;

class GotapController extends PublicController
{
    /**
     * {@inheritDoc}
     */
    public function getIndex()
    {
        SeoHelper::setTitle(theme_option('site_title'));

        $theme = Theme::layout('homepage');

        Theme::breadcrumb()->add(__('Home'), url('/'));

        event(RenderingHomePageEvent::class);

        $products = Product::where('status', BaseStatusEnum::PUBLISHED)->get();

        $portfolios = Portfolio::where('status', BaseStatusEnum::PUBLISHED)->orderBy('order')->limit(7)->get();

        return $theme->scope('index', compact('products', 'portfolios'))->render();
    }

    /**
     * {@inheritDoc}
     */
    public function getView($key = null)
    {
        return parent::getView($key);
    }

    /**
     * {@inheritDoc}
     */
    public function getSiteMap()
    {
        return parent::getSiteMap();
    }
}
