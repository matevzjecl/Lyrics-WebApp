<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Song;
use App\Models\Artist;
use App\Models\Album;
use DB;

class SongsController extends Controller

{
    public function __construct()
    {
        $this->middleware('auth', ['except' => ['index', 'show', 'search']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        //$votes = Votes::where('vote')
        $songs = Song::all();
        return view('home')->with('songs', $songs);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'artist' => 'required',
            'album' => 'required',
            'year' => 'required',
            'lyrics' => 'required',
        ]);

        $artist = Artist::firstOrCreate(
            ['name' => $request->input('artist')]
        );

        $album = Album::firstOrCreate(
            ['name' => $request->input('album'), 
            'year' => $request->input('year'),
            'artist_id' => $artist->id]
        );


        $song = new Song;
        $song->name = $request->input('title');
        $song->lyrics = $request->input('lyrics');
        $song->album_id = $album->id;
        $song->user_id = auth()->user()->id;
        $song->save();
        
        return redirect('/profile')->with('success', 'Song added');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $song = Song::find($id);
        return view('song')->with('song',$song);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $song = Song::find($id);
        if (auth()->user()->id === $song->user->id) {
            return view('edit')->with('song', $song);

        }
        return redirect('/songs')->with('error', 'No permission');

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'title' => 'required',
            'artist' => 'required',
            'album' => 'required',
            'year' => 'required',
            'lyrics' => 'required',
        ]);

        $artist = Artist::updateOrCreate(
            ['name' => $request->input('artist')]
        );

        $album = Album::updateOrCreate(
            ['name' => $request->input('album'), 
            'year' => $request->input('year'),
            'artist_id' => $artist->id]
        );


        $song = Song::find($id);
        $song->name = $request->input('title');
        $song->lyrics = $request->input('lyrics');
        $song->album_id = $album->id;
        $song->user_id = auth()->user()->id;
        $song->save();
        
        return redirect('/profile')->with('success', 'Song updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $song = Song::find($id);
        $song->delete();
        return redirect('/songs')->with('sucess', 'Song deleted');
    }


    /**
     * Remove the specified resource from storage.
     *
     * @return \Illuminate\Http\Response
     */

    public function search(Request $request) {
        $query = $request->input('query');
        $songs = Song::join('albums', 'albums.id', '=', 'songs.album_id')
        ->join('artists', 'artists.id', '=', 'albums.artist_id')
        ->where('songs.name', 'LIKE','%'.$query.'%')
        ->orWhere('albums.name', 'LIKE','%'.$query.'%')
        ->orWhere('albums.year', 'LIKE','%'.$query.'%')
        ->orWhere('artists.name', 'LIKE','%'.$query.'%')
        ->select('songs.*')
        ->get();

        return view('songs')->with('songs', $songs);
    }
}
