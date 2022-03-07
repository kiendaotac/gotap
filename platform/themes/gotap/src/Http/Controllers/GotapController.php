<?php

namespace Theme\Gotap\Http\Controllers;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Introduction\Models\Introduction;
use Botble\Order\Models\Order;
use Botble\Order\Models\OrderProduct;
use Botble\Portfolio\Models\Portfolio;
use Botble\Product\Models\Product;
use Botble\ProductCard\Models\ProductCard;
use Botble\Question\Models\Question;
use Botble\Review\Models\Review;
use Botble\Section\Models\Section;
use Botble\Theme\Events\RenderingHomePageEvent;
use Botble\Theme\Http\Controllers\PublicController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
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

        $introductions = Introduction::where('status', BaseStatusEnum::PUBLISHED)->oldest()->get();

        $sections = Section::where('status', BaseStatusEnum::PUBLISHED)->orderBy('position')->get();

        $productCards = ProductCard::where('status', BaseStatusEnum::PUBLISHED)->get();

        $questions = Question::where('status', BaseStatusEnum::PUBLISHED)->orderBy('position')->get();

        $reviews = Review::where('status', BaseStatusEnum::PUBLISHED)->get();

        return $theme->scope('index', compact('products', 'portfolios', 'introductions', 'sections', 'productCards', 'questions', 'reviews'))->render();
    }

    public function getCheckout()
    {
        SeoHelper::setTitle('Checkout - ' . theme_option('site_title'));

        $theme = Theme::layout('homepage');

        Theme::asset()->serve('checkout');

        return $theme->scope('checkout')->render();
    }

    public function postCheckout(Request $request)
    {
        $request->validate([
            'name'      =>  'required',
            'email'     =>  'required|email',
            'phone'     =>  'required|numeric',
            'address'   =>  'required',
            'payment_method'   =>  'required',
            'note'      =>  'nullable'
        ]);

        $data = $request->all();

        $data['status'] = BaseStatusEnum::PENDING;

        $order = Order::create($request->all());

        $items = [];

        if (count($request->qty)) {
            foreach ($request->qty as $productId => $qty) {
                $temp = new OrderProduct();
                $temp->qty = $qty;
                $temp->product_id = $productId;
                array_push($items, $temp);
            }
        }

        $order->products()->saveMany($items);

        $theme = Theme::layout('homepage');

        \Cart::instance('cart')->destroy();

        return $theme->scope('checkout-complete')->render();

    }
    public function getDetails($id)
    {
        $product = ProductCard::findOrFail($id);
        $product->update(['star' => $product->star + rand(1,3)]);

//        $productCards = ProductCard::where('status', BaseStatusEnum::PUBLISHED)->get();

        SeoHelper::setTitle('Thông tin sản phẩm - '. $product->name . ' ' . theme_option('site_title'));

        $theme = Theme::layout('homepage');

        Theme::asset()->serve('product-details');

        return $theme->scope('product-details', compact('product'))->render();
    }

    public function addToCart(Request $request) {

        $product = ProductCard::findOrFail($request->id);

        \Cart::instance('cart')->add(['id' => $product->id,'name'=> $product->name,'qty'=> $request->qty,'price'=> $product->price,'weight'=> 0, 'options'=>[
            'old_price'=>$product->old_price
        ]]);

        SeoHelper::setTitle('Checkout - ' . theme_option('site_title'));

        $theme = Theme::layout('homepage');

        Theme::asset()->serve('checkout');

        return $theme->scope('checkout')->render();
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
