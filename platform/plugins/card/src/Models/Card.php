<?php

namespace Botble\Card\Models;

use App\Models\User;
use Botble\Base\Traits\EnumCastable;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;
use Illuminate\Support\Carbon;

class Card extends BaseModel
{
    use EnumCastable;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'cards';

    /**
     * @var array
     */
    protected $fillable = [
        'name',
        'dob',
        'uuid',
        'code',
        'user_id',
        'status',
    ];

    /**
     * @var array
     */
    protected $casts = [
        'status' => BaseStatusEnum::class,
        'dob' => 'date'
    ];

    public function setDobAttribute($value)
    {
        $this->attributes['dob'] = Carbon::createFromFormat('d/m/Y', $value);
    }

    public function getDobAttribute(): ?string
    {
        return $this->attributes ? Carbon::createFromFormat('Y-m-d', $this->attributes['dob'])->format('d/m/Y') : null;
    }

    public function user() {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
