<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Partner extends Model
{
    protected $fillable = ['name','link','photo'];

    public $timestamps = false;

    public function products(){
        return $this->hasMany(Product::class);
    }

}