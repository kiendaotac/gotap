<?php

namespace App\Jobs;

use Botble\Account\Repositories\Interfaces\AccountInterface;
use Botble\Base\Enums\BaseStatusEnum;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Str;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

class GenerateQrCode implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public $generateqrcode;
    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct(\Botble\Generateqrcode\Models\Generateqrcode $generateqrcode)
    {
        $this->generateqrcode = $generateqrcode;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $totalAccount = $this->generateqrcode->qty;

        $fileName = 'qr-code-' . date('Y-m-d-H-i-s');

        $accountRepository = app(AccountInterface::class);

        $accountInfoContent = '';

        $accountCode = '';

        $path = 'qr/' . $this->generateqrcode->id;

        File::isDirectory($path) or File::makeDirectory($path, 0777, true, true);

        for ($i = 0; $i < $totalAccount; $i++) {
            $data['code'] = Str::upper(Str::random(4));

            $data['uuid'] = Str::uuid();

            $data['status'] = BaseStatusEnum::PENDING;

            $account = $accountRepository->createOrUpdate($data);

            $accountInfoContent .= "$account->id|$account->uuid|$account->code\n";

            $accountCode .= "$account->code\n";

            $url = route('public.member.tap.index', ['uuid' => $account->uuid]);

            QrCode::size(400)
                ->style('round')
                ->margin(1)
                ->errorCorrection('H')
                ->format('png')
                ->merge('/public/storage/'. theme_option('logo-qr'), .3)
                ->generate($url, public_path('qr/'. $this->generateqrcode->id . '/' . $account->uuid . '.png'));

        }
        file_put_contents(public_path() . '/qr/'. $this->generateqrcode->id .'/account-'. $fileName . '.txt', $accountInfoContent);
        file_put_contents(public_path() . '/qr/'. $this->generateqrcode->id .'/account-code-'. $fileName . '.txt', $accountCode);

        $zip = new \ZipArchive();
        $zipFileName = public_path() . 'qr/' . $fileName . '.zip';
        if ($zip->open($zipFileName, \ZipArchive::CREATE | \ZipArchive::OVERWRITE)== TRUE)
        {
            $files = File::files(public_path('qr/'. $this->generateqrcode->id));
            foreach ($files as $key => $value){
                $relativeName = basename($value);
                $zip->addFile($value, $relativeName);
            }
            $zip->close();
        }

        $this->generateqrcode->link = asset($zipFileName);
        $this->generateqrcode->status = BaseStatusEnum::PUBLISHED;
        $this->generateqrcode->save();

        return 0;
    }
}
