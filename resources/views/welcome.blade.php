@extends('layouts.app')
@section('title', 'welcome')
@section('content')

<style>
    .grid-container {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
    gap: 20px;
}

.card {
    /* Adjust card styles as needed */
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
}

.card-body {
    padding: 20px;
}
</style>
@if (count($boards) > 0)
<div class="container mt-5">
    <div class="row">
        <div class="grid-container">
            @foreach($boards as $item)
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">{{$item->name}}</h4>
                    <hr>
                    <h5 class="card-title">{{$item->title}}</h5>
                    <p class="card-text">{{$item->content}}</p>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
@else
    <div class="container d-flex my-auto align-items-center justify-content-center mt-5">
        <h1 class="text-secondary">404 ไม่มีข้อมูล</h1>
    </div>
@endif
@endsection