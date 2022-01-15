<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Vote extends Model
{
    use HasFactory;
    public $timestamps = false;

    public function user(){
        return $this->belongsTo(User::class, 'user_id');
    }

    public function song(){
        return $this->belongsTo(Song::class, 'song_id');
    }

}
