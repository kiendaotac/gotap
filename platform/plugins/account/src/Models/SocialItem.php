<?php

namespace Botble\Account\Models;

use Botble\Base\Traits\EnumCastable;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;
use Botble\Social\Models\Social;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class SocialItem extends BaseModel
{
    use EnumCastable;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'social_items';

    /**
     * @var array
     */
    protected $fillable = [
        'social_id',
        'social_value',
        'social_app',
        'name',
        'description',
        'order'
    ];

    /**
     * @var array
     */
   /* protected $casts = [
        'status' => BaseStatusEnum::class,
    ];*/

    public function account(): BelongsTo
    {
        return $this->belongsTo(Account::class, 'account_id', 'id');
    }

    public function social(): BelongsTo
    {
        return $this->belongsTo(Social::class, 'social_id', 'id');
    }
}
