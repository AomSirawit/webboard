@extends('layouts.app')
@section('title', 'welcome')
@section('content')
    <h1 class="text-center">ข้อมูลเพิ่มเติม</h1>
    <div class="container mt-5 card p-5 shadow">
        <h3>{{ $board->name }}</h3>
        <hr>
        <h3>{{ $board->title }}</h3>
        <p class="text-secondary">{{ $board->content }}</p>
        <div class="d-flex mt-5">
            <a href="#" class="btn btn-secondary w-25 m-auto">Coment</a>
            <a href="/home" class="btn btn-danger w-25 m-auto">Back</a>
        </div>
    </div>



@endsection
