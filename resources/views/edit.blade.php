@extends('layouts.app')
@section('content')
<div class="center_div">
    {{Form::open(['action'=>['App\Http\Controllers\SongsController@update', $song->id], 'method' => 'POST'])}}
    <div class="form-row">
        <div class="col">
        {{Form::label('title', 'Title')}}
        {{Form::text('title', $song->name, ['class' => 'form-control', 'placeholder' => 'Song title', 'autocomplete'=> 'off'])}}
        </div>
        <div class="col">

        {{Form::label('artist', 'Artist')}}
        {{Form::text('artist', $song->albums->artists->name, ['class' => 'form-control', 'placeholder' => 'Song artist', 'autocomplete'=> 'off'])}}
        </div>
    
    </div>
    <div class="form-row">
        <div class="col">
        {{Form::label('album', 'Album')}}
        {{Form::text('album', $song->albums->name, ['class' => 'form-control', 'placeholder' => 'Song album', 'autocomplete'=> 'off'])}}
        </div> 
        <div class="col-2">
        {{Form::label('year', 'Year')}}
        {{Form::number('year', $song->albums->year, ['class' => 'form-control', 'placeholder' => 'Year', 'autocomplete'=> 'off'])}}
        </div>
    </div>
    <div class="form-row">
        <div class="col">
        {{Form::label('lyrics', 'Lyrics')}}
        {{Form::textarea('lyrics', $song->lyrics, ['class' => 'form-control text-center', 'placeholder' => 'Enter song\'s lyrics', 'autocomplete'=> 'off'])}}
        </div> 
    </div>
        {{Form::hidden('_method','PUT')}}
        {{Form::submit('Save', ['class' => 'btn btn-success my-2'])}}

    {{Form::close()}}
</div>
@endsection