<?php

namespace Botble\Icon\Models;

use Botble\Base\Traits\EnumCastable;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;
use Botble\SocialTheme\Models\SocialTheme;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Icon extends BaseModel
{
    use EnumCastable;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'icons';

    /**
     * @var array
     */
    protected $fillable = [
        'name',
        'image',
        'theme_id',
        'social_id',
        'status',
    ];

    /**
     * @var array
     */
    protected $casts = [
        'status' => BaseStatusEnum::class,
    ];

    public function theme(): BelongsTo
    {
        return $this->belongsTo(SocialTheme::class, 'theme_id', 'id');
    }
}
