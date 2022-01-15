<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Album extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = ['name', 'year', 'artist_id'];

    public function songs(){
        return $this->hasMany(Song::class);
    }
    public function artists(){
        return $this->belongsTo(Artist::class, 'artist_id');
    }
}
