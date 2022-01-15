<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Artist extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = ['name'];

    public function albums(){
        return $this->hasMany(Album::class);
    }
    public function songs(){
        return $this->hasMany('App\Models\Album')->hasMany('App\Models\Songs');
    }
}
