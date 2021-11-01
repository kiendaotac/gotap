<?php

namespace Botble\Social\Models;

use Botble\Base\Traits\EnumCastable;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;
use Botble\Icon\Models\Icon;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Social extends BaseModel
{
    use EnumCastable;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'socials';

    /**
     * @var array
     */
    protected $fillable = [
        'name',
        'type',
        'is_bank',
        'hint',
        'status',
    ];

    /**
     * @var array
     */
    protected $casts = [
        'status' => BaseStatusEnum::class,
    ];

    public function icons(): HasMany
    {
        return $this->hasMany(Icon::class, 'social_id', 'id');
    }
}
