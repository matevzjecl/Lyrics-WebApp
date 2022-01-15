<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Song extends Model
{
    use HasFactory;
    protected $table = 'songs';
    public $timestamps = false;
    public function albums(){
        return $this->belongsTo(Album::class, 'album_id');
    }
    public function votes(){
        return $this->hasMany(Vote::class);
    }
    public function user() {
        return $this->belongsTo(User::class, 'user_id');
    }
    public function upVotes(){
        return $this->hasMany(Vote::class)->where('vote','=','1');
    }
    public function downVotes(){
        return $this->hasMany(Vote::class)->where('vote','=','-1');
    }
}
