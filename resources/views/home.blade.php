@extends('layouts.app')

@section('content')
<div class="main">
  <div class="form-outline row justify-content-center w-50 mx-auto pt-5">
    <input type="search" id="search" class="form-control  text-center focus" name="query" placeholder="Search songs" autocomplete="off"
    aria-label="Search" />
  </div>
  <div class="row justify-content-center mt-5">
    <div class="main col-auto">
        @include('songs', array('songs'=>$songs))
    </div>
  </div>
</div>
@stop