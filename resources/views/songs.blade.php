@if(count($songs) > 0)
<table class="table table-responsive text-white h5 no-wrap pt-2" id="songs">
    <tr>
        <th class="th-clickable">Artist<i></i></th>
        <th class="th-clickable">Title<i></i></th>
        <th class="th-clickable">Album<i></i></th>
        <th class="th-clickable">Year<i></i></th>
        <th>Points</th>
        @auth
        <th></th>
        <th></th>
        @endauth


    </tr>
    @foreach($songs as $song)
        <tr class="tr-clickable" href="/songs/{{ $song->id }}">
            <td class="td-clickable" href="/songs/{{ $song->id }}">{{$song->albums->artists->name}}</td>
            <td class="td-clickable" href="/songs/{{ $song->id }}">{{$song->name}}</td>
            <td class="td-clickable" href="/songs/{{ $song->id }}">{{$song->albums->name}}</td>
            <td class="td-clickable" href="/songs/{{ $song->id }}">{{$song->albums->year}}</td>
            <td>
                <div class="vote circle @guest guest @endguest">
                    <div class="increment up @auth @if(count($song->upVotes->where('user_id','=',auth()->user()->id))>0) op @endif @endauth" data-value="{{ $song->id }}"></div>
                    <div class="increment down @auth @if(count($song->downVotes->where('user_id','=',auth()->user()->id))>0) op @endif @endauth" data-value="{{ $song->id }}"></div>
                    <div class="text-black-50 points" id="count-{{ $song->id }}">
                        {{count($song->upVotes) - count($song->downVotes)}}
    
                    </div>
                    </div>
            </td>
            @auth

            @if (auth()->user()->id === $song->user->id)

            <td>{{Form::open(['action'=> ['App\Http\Controllers\SongsController@edit', $song->id], 'method' => 'GET'])}}
                {{ Form::submit('Edit',['class' => 'btn btn-dark']) }}
            {{Form::close()}}</td>
            <td>
                {{Form::open(['action'=> ['App\Http\Controllers\SongsController@destroy', $song->id], 'method' => 'POST'])}}
                    {{ Form::hidden('_method','DELETE') }}
                    {{ Form::submit('Delete',['class' => 'btn btn-danger']) }}
                {{Form::close()}}
            </td>
            @else
                <td></td>
                <td></td>
            @endif
            @endauth

        </tr>
    @endforeach
</table>
@else
<p>No songs were found.</p>
@endif