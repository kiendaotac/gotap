<?php

namespace Theme\Gotap\Http\Controllers;

use Botble\Account\Models\Account;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Card\Models\Card;
use Botble\Theme\Facades\Response;
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
        $theme = Theme::uses()->layout('tappi');

        $account = Account::where('username', $username)->with('items')->where('status', BaseStatusEnum::PUBLISHED)->firstOrFail();

        \SeoHelper::setTitle($account->fullname . ' - ' . theme_option('site_title'));

        return $theme->scope('tappi.tappi',compact('account'))->render();
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
        $theme = Theme::uses()->layout('tappi');

        $account = Account::where('uuid', $id)->with('items')->firstOrFail();

        if ($account->status == BaseStatusEnum::PENDING)
            return redirect()->route('public.member.register')->with('uuid', $id);

        if ($account->status == BaseStatusEnum::PUBLISHED && $account->username)
            return redirect()->route('public.member.user.index', ['username' => $account->username]);

        if ($account->status == BaseStatusEnum::PUBLISHED) {

            \SeoHelper::setTitle($account->fullname ?? 'Title');

            return $theme->scope('tappi.tappi',compact('account'))->render();
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
