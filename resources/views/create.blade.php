@extends('layouts.app')
@section('content')
<div class="center_div">
    {{Form::open(['action'=>'App\Http\Controllers\SongsController@store', 'method' => 'POST'])}}
    <div class="form-row">
        <div class="col">
        {{Form::label('title', 'Title')}}
        {{Form::text('title', '', ['class' => 'form-control', 'placeholder' => 'Song title', 'autocomplete'=> 'off'])}}
        </div>
        <div class="col">

        {{Form::label('artist', 'Artist')}}
        {{Form::text('artist', '', ['class' => 'form-control', 'placeholder' => 'Song artist', 'autocomplete'=> 'off'])}}
        </div>
    
    </div>
    <div class="form-row">
        <div class="col">
        {{Form::label('album', 'Album')}}
        {{Form::text('album', '', ['class' => 'form-control', 'placeholder' => 'Song album', 'autocomplete'=> 'off'])}}
        </div> 
        <div class="col-2">
        {{Form::label('year', 'Year')}}
        {{Form::number('year', '', ['class' => 'form-control', 'placeholder' => 'Year', 'autocomplete'=> 'off'])}}
        </div>
    </div>
    <div class="form-row">
        <div class="col">
        {{Form::label('lyrics', 'Lyrics')}}
        {{Form::textarea('lyrics', '', ['class' => 'form-control text-center', 'placeholder' => 'Enter song\'s lyrics', 'autocomplete'=> 'off'])}}
        </div> 
    </div>
        
        {{Form::submit('Add', ['class' => 'btn btn-success my-2'])}}

    {{Form::close()}}
</div>
@endsection