@extends('layouts.app')

@section('content')
<div class="mx-auto center_div bg-primary">
    <h2>{{ $song->albums->artists->name }} - {{ $song->name }}</h2>
    <h5>{{ $song->albums->name }} ({{ $song->albums->year }})</h5>

    @auth
    <div class="form-row row justify-content-center p-1">
        <div class="col-1">
    {{Form::open(['action'=> ['App\Http\Controllers\SongsController@edit', $song->id], 'method' => 'GET'])}}
                {{ Form::submit('Edit',['class' => 'btn btn-dark']) }}
    {{Form::close()}}
        </div>
        <div class="col-1">
    {{Form::open(['action'=> ['App\Http\Controllers\SongsController@destroy', $song->id], 'method' => 'POST'])}}
        {{ Form::hidden('_method','DELETE') }}
        {{ Form::submit('Delete',['class' => 'btn btn-danger']) }}
    {{Form::close()}}
        </div>
    </div>

    @endauth
    <textarea readonly class="bg-primary">{{ $song->lyrics }}</textarea>
</div>
    
@endsection