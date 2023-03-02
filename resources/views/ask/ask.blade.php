@extends('layouts.client')
@section('content')

{{-- <div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Ask a public question</h1><br><br>
        </div>
    </div>
</div>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <form action="{{route('ask.store')}}" method="post" enctype="multipart/form-data">
                @csrf
            <div class="card">
                <div class="card-header"><h3>Title</h3></div>
                <div class="card-body">
                    <div class="form-group mt-2">
                        <h6>Your question</h6>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="question" placeholder="type your question" name="question" value="">
                    </div><br>
                </div>
            </div><br>

            <div class="card">
                <div class="card-header"><h3>Answers</h3></div>
                <div class="card-body">
                    <div class="form-group mt-2">
                        <h5>please type your answer</h5>
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" rows="8" id="answer" name="answer"></textarea>
                    </div><br>
                </div>
            </div><br>

            <div class="card">
                <div class="card-header"><h3>Comment</h3></div>
                <div class="card-body">
                    <div class="form-group mt-2">
                        <h5>Describe what you tried, what you expected to happen, and what actually resulted. Minimum 20 characters.</h5>
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" rows="8" id="comment" name="comment"></textarea>
                    </div><br>
                </div>
            </div><br>

            <div class="card">
                <div class="card-header"><h3>Tags</h3></div>
                <div class="card-body">
                    <div class="form-group mt-2">
                        <h5>Add up to 5 tags to describe what your question is about. Start typing to see suggestions.</h5>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="tag" placeholder="Tags" name="tag" value="">
                    </div><br>
                </div>
            </div><br>
            <button type="submit" class="btn btn-primary">Post your question</button>
            </form>
        </div>
    </div>
</div> --}}



@endsection