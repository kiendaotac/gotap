<?php

namespace Botble\Account\Models;

use Botble\Base\Traits\EnumCastable;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;
use Botble\Member\Models\Member;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Account extends BaseModel
{
    use EnumCastable;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'accounts';

    /**
     * @var array
     */
    protected $fillable = [
        'fullname',
        'username',
        'description',
        'avatar',
        'address',
        'uuid',
        'code',
        'status',
        'member_id',
    ];

    /**
     * @var array
     */
    protected $casts = [
        'status' => BaseStatusEnum::class,
    ];

    public function items(): HasMany
    {
        return $this->hasMany(SocialItem::class, 'account_id', 'id')->orderBy('order');
    }

    public function member(): BelongsTo
    {
        return $this->belongsTo(Member::class, 'member_id', 'id');
    }
}
