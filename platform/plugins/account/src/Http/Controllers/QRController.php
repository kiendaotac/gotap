<?php

namespace Botble\Account\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Account\Http\Requests\AccountRequest;
use Botble\Account\Repositories\Interfaces\AccountInterface;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Media\Facades\RvMediaFacade;
use Illuminate\Http\Request;
use Exception;
use Botble\Account\Tables\AccountTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Account\Forms\AccountForm;
use Botble\Base\Forms\FormBuilder;
use Illuminate\Support\Str;
use SimpleSoftwareIO\QrCode\Facades\QrCode;
use Symfony\Component\HttpFoundation\BinaryFileResponse;

class QRController extends BaseController
{
    public function download($uuid): BinaryFileResponse
    {
        if ($uuid === 'register') {
            $url = route('public.member.register');
        } elseif($uuid === 'homepage') {
            $url = route('public.index');
        } else {
            $url = route('public.member.tap.index', ['uuid' => $uuid]);
        }

        $headers = array('Content-Type' => ['png']);

        QrCode::size(400)
            ->style('round')
            ->margin(1)
            ->errorCorrection('H')
            ->format('png')
            ->merge('/public/storage/'. theme_option('logo-qr'), .3)
            ->generate($url, public_path('qr/'. $uuid . '.png'));

        return response()->download(public_path('qr/'. $uuid . '.png'), $uuid . '.png', $headers);
    }

    public function downloadMany(Request $request) {
        dd($request->all());
    }
}
