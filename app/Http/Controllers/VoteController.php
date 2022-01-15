<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Vote;
use App\Models\Song;


class VoteController extends Controller

{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function upvote(Request $request) {
        $current = Vote::where('song_id','=',$request->song)
        ->where('user_id','=',auth()->user()->id)
        ->first();
        if (!$current) {
            $vote = new Vote;
            $vote->user_id = auth()->user()->id;
            $vote->song_id = $request->song;
            $vote->vote = 1;
            $vote->save();

        }
        else {
            if ($current->vote == -1) {
                $current->delete();
            }
        }

        /*$query = $request->input('query');
        $songs = Song::join('albums', 'albums.id', '=', 'songs.album_id')
        ->join('artists', 'artists.id', '=', 'albums.artist_id')
        ->where('songs.name', 'LIKE','%'.$query.'%')
        ->orWhere('albums.name', 'LIKE','%'.$query.'%')
        ->orWhere('albums.year', 'LIKE','%'.$query.'%')
        ->orWhere('artists.name', 'LIKE','%'.$query.'%')
        ->select('songs.*')
        ->get();*/
        $votes = count(Song::find($request->song)->upVotes) - count(Song::find($request->song)->downVotes);
        return $votes;
        //return view('songs')->with('songs', $songs);

    }
    public function downvote(Request $request) {
        $current = Vote::where('song_id','=',$request->song)
        ->where('user_id','=',auth()->user()->id)
        ->first();
        if (!$current) {

            $vote = new Vote;
            $vote->user_id = auth()->user()->id;
            $vote->song_id = $request->song;
            $vote->vote = -1;
            $vote->save();
        }
        else {
            if ($current->vote == 1) {
                $current->delete();

            }
        }
        /*$query = $request->input('query');
        $songs = Song::join('albums', 'albums.id', '=', 'songs.album_id')
        ->join('artists', 'artists.id', '=', 'albums.artist_id')
        ->where('songs.name', 'LIKE','%'.$query.'%')
        ->orWhere('albums.name', 'LIKE','%'.$query.'%')
        ->orWhere('albums.year', 'LIKE','%'.$query.'%')
        ->orWhere('artists.name', 'LIKE','%'.$query.'%')
        ->select('songs.*')
        ->get();*/
        $votes = count(Song::find($request->song)->upVotes) - count(Song::find($request->song)->downVotes);
        return $votes;
        //return view('songs')->with('songs', $songs);

    }
}
