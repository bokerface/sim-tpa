<?php

namespace App\Models;

use App\Enums\TrainingTypeEnum;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Crypt;

class Training extends Model
{
    use HasFactory;
    protected $fillable = [
        'category_id',
        'name',
        'start_date',
        'end_date',
        'price_earlybird',
        'earlybird_end',
        'price_normal',
        'price_onsite',
        'place',
        'type',
        'description',
        // 'quota',
        'image',
        'background_certificate',
        'cost',
        'gender_requirement',
        'date_of_birth_requirement',
        'status',
        'participant_type',
    ];

    protected $casts = [
        'type' => TrainingTypeEnum::class,
        'start_date' => 'datetime',
        'end_date' => 'datetime',
    ];

    public function trainers()
    {
        return $this->belongsToMany(Trainer::class, 'training_trainer');
    }

    public function quotaPerOrg()
    {
        return $this->hasOne(QuotaPerOrg::class);
    }

    protected function image(): Attribute
    {
        return Attribute::make(
            get: fn ($value) => Crypt::encryptString($value)
        );
    }

    protected function backgroundCertificate(): Attribute
    {
        return Attribute::make(
            get: fn ($value) => Crypt::encryptString($value)
        );
    }

    public function carts()
    {
        return $this->hasMany(Cart::class);
    }

    public function participants()
    {
        return $this->hasManyThrough(OrderParticipant::class, Order::class);
    }

    public function orders()
    {
        return $this->hasMany(Order::class);
    }
}
