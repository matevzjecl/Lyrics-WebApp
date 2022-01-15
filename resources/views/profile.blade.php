@extends('layouts.app')

@section('content')
<div class="container">
    
    <div class="center_div row justify-content-center mt-5">
        <div class="col-auto">
            {{Form::open(['action'=> ['App\Http\Controllers\SongsController@create'], 'method' => 'GET'])}}
                {{ Form::submit('Add Song',['class' => 'btn btn-success']) }}
            {{Form::close()}}            
            <h3>Your Songs</h3>
            @include('songs', array('songs'=>$songs))
        </div>
    </div>
@endsection