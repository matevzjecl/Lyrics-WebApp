@if(count($errors) > 0)
    @foreach($errors->all() as $error)
        <div class="alert alert-danger center_div">
            {{$error}}
        </div>
    @endforeach
@endif

@if(session('success'))
    <div class="alert alert-success center_div">
        {{session('success')}}
    </div>
@endif

@if(session('error'))
    <div class="alert alert-danger center_div">
        {{session('error')}}
    </div>
@endif