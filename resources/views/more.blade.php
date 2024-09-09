@extends('layouts.app')
@section('title', 'more')
@section('content')
    <h1 class="text-center">ข้อมูลเพิ่มเติม</h1>
    <div class="container mt-5 card p-5 shadow">
        <h3>{{ $board->name }}</h3>
        <hr>
        <h3>{{ $board->title }}</h3>
        <p class="text-secondary">{{ $board->content }}</p>
        <div class="d-flex mt-5">
            <a href="/home" class="btn btn-success w-25 m-auto">Back</a>
            @if (Auth::user()->name == 'admin')
            <form action="{{ route('delete', $board->id) }}" method="POST" class="w-25 m-auto">
                @csrf
                @method('DELETE')
                <button type="submit" class="btn btn-danger w-100">Delete</button>
            </form>
            @endif
        </div>
    </div>

    </div>
@endsection
