@extends('layouts.app')
@section('title', 'create')
@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow rounded-4">
                <div class="card-body">
                    <h2 class="text-center py-2">เพิ่มข้อความของคุณ</h2>
                    <hr>
                    <form method="POST" action="/users/insert">
                        @csrf
                        <div class="form-group">
                            <label for="name">ชื่อของคุณ</label>
                            <input type="text" name="name" class="form-control">
                        </div>

                        @error('name')
                        <div class="my-2">
                            <span class="text-danger">{{$message}}</span>
                        </div>
                        @enderror

                        <div class="form-group">
                            <label for="title">หัวเรื่อง</label>
                            <input type="text" name="title" class="form-control">
                        </div>

                        @error('title')
                        <div class="my-2">
                            <span class="text-danger">{{$message}}</span>
                        </div>
                        @enderror

                        <div class="form-group">
                            <label for="content">เนื้อหา</label>
                            <textarea name="content" id="content" cols="30" rows="10" class="form-control"></textarea>
                        </div>

                        @error('content')
                        <div class="my-2">
                            <span class="text-danger">{{$message}}</span>
                        </div>
                        @enderror


                        <div class="text-center">
                            <button type="submit" class="btn btn-success my-3" >Save</button>
                            <button type="reset" class="btn btn-danger my-3">Reset</button>
                            <a href="/home" class="btn btn-primary">Back</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


@endsection
