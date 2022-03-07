<?php

namespace App\Console\Commands;

use Botble\Account\Repositories\Interfaces\AccountInterface;
use Botble\Base\Enums\BaseStatusEnum;
use Illuminate\Console\Command;
use Illuminate\Support\Str;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

class CreateAccount extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'gotap:create:account';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Tạo account và mã QR code';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $totalAccount = 100;

        $totalAccount = (int)$this->ask("Số lượng account muốn tạo?", $totalAccount);

        $this->info('Bắt đầu tạo ' . $totalAccount . ' account!');

        $bar = $this->output->createProgressBar($totalAccount);

        $bar->start();

        $accountRepository = app(AccountInterface::class);

        $accountInfoContent = '';

        $accountCode = '';

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
                ->generate($url, public_path('qr/'. $account->uuid . '.png'));

            $bar->advance();
        }

        $bar->finish();

        file_put_contents(public_path() . '/files/account-'. date('Y-m-d-H-i-s') . '.txt', $accountInfoContent);
        file_put_contents(public_path() . '/files/account-code-'. date('Y-m-d-H-i-s') . '.txt', $accountCode);

        $this->info('');
        $this->info('Create success ' . $totalAccount . ' account!');

        return 0;
    }
}
