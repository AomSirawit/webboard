@extends('layouts.app')
@section('title', 'comment')
@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow rounded-4">
                <div class="card-body">
                    <h2 class="text-center py-2">Comment</h2>
                    <hr>
                    <form action="{{ route('commentInsert') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="comment">Comment</label>
                            <textarea name="comment" id="comment" cols="30" rows="10" class="form-control"></textarea>
                        </div>
                        

                        @error('comment')
                        <div class="my-2">
                            <span class="text-danger">{{$message}}</span>
                        </div>
                        @enderror

                        <div class="text-center">
                            <button type="submit" class="btn btn-success my-3">Save</button>
                            <button type="reset" class="btn btn-danger my-3">Reset</button>
                            <a href="#" onclick="history.back()" class="btn btn-primary">Back</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


@endsection
