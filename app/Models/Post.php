<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Post extends Model
{
    use HasFactory;
    protected $fillable = ['title', 'body'];

    protected function Title(): Attribute
    {
        return Attribute::make(
            get: fn ($value) => ucwords($value),
            set: fn ($value) => ucwords($value),
        );
    }
    protected function Body(): Attribute
    {
        return Attribute::make(
            get: fn ($value) => ucwords($value),
            set: fn ($value) => ucwords($value),
        );
    }
    protected function CreatedAt(): Attribute
    {
        return Attribute::make(
            get: fn ($value) => date("Y-m-d", strtotime($value)),
            set: fn ($value) => date("Y-m-d", strtotime($value)),
        );
    }
    protected function UpdatedAt(): Attribute
    {
        return Attribute::make(
            get: fn ($value) => date("Y-m-d", strtotime($value)),
            set: fn ($value) => date("Y-m-d", strtotime($value)),
        );
    }
}
