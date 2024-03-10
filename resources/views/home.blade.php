@extends('layouts.app')
@section('title', 'home')
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
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
}
.card-body {
    padding: 20px;
}
</style>
<div class="container d-flex my-auto align-items-center justify-content-center mt-5">
    <a href="/users/create" class="btn text-white p-3 fs-2 w-25 rounded-3 shadow" style="background-color: #FCA311">+</a>
</div>
@if (count($boards) > 0)
<div class="container mt-5">
    <div class="row">
        <div class="grid-container">
            @foreach($boards as $item)
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title fw-semibold">{{$item->name}}</h4>
                    <hr>
                    <h5 class="card-title">{{$item->title}}</h5>
                    <p class="card-text">{{$item->content}}</p>
                    <a href="{{ route('more', $item->id) }}" class="btn btn-warning w-50">Details</a>
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
