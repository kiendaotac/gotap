<?php

namespace Theme\Gotap\Http\Controllers;

use Botble\Account\Models\Account;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Card\Models\Card;
use Botble\Theme\Facades\Response;
use Illuminate\Support\Facades\Auth;
use Theme;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class TapController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Response|\Illuminate\Http\Response|\Response
     */
    public function index($username)
    {
        $theme = Theme::uses()->layout('gotap');

        $account = Account::query()
            ->where('username', $username)
            ->with(['items' => function($query) use($username) {
                $theme_id = Account::query()->where('username', $username)->firstOrFail()->theme_id;
                $query->with(['social' => function($query) use($theme_id) {
                    $query->with(['icons' => function($query) use($theme_id) {
                        $query->where('theme_id', $theme_id);
                    }]);
                }]);
            }])
            ->where('status', BaseStatusEnum::PUBLISHED)
            ->firstOrFail();

        \SeoHelper::setTitle($account->fullname . ' - ' . theme_option('site_title'));


        Theme::asset()->serve('custom-css-user');

        $account->click = $account->click + 1;

        $account->view = $account->view + 1;

        $account->save();

        return $theme->scope('gotap.user.index-icon',compact('account'))->render();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response|\Illuminate\Http\RedirectResponse|\Response
     */
    public function show($id)
    {
        $theme = Theme::uses()->layout('gotap');

        $account = Account::query()
            ->where('uuid', $id)
            ->with(['items' => function($query) use($id) {
                $theme_id = Account::query()->where('uuid', $id)->firstOrFail()->theme_id;
                $query->with(['social' => function($query) use($theme_id) {
                    $query->with(['icons' => function($query) use($theme_id) {
                        $query->where('theme_id', $theme_id);
                    }]);
                }]);
            }])
            ->firstOrFail();

        if ($account->status == BaseStatusEnum::PENDING)
            return redirect()->route('public.member.register')->with('uuid', $id);

        $account->tap = $account->tap + 1;

        $account->view = $account->view + 1;

        $account->save();

        if ($account->status == BaseStatusEnum::PUBLISHED && $account->username)
            return redirect()->route('public.member.user.index', ['username' => $account->username]);

        if ($account->status == BaseStatusEnum::PUBLISHED) {


            \SeoHelper::setTitle($account->fullname . ' - ' . theme_option('site_title'));

            Theme::asset()->serve('custom-css-user');

            return $theme->scope('gotap.user.index-icon',compact('account'))->render();
        }

        abort(404);

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
