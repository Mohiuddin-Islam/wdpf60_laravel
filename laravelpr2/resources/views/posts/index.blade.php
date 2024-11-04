@extends('layout')

@section('content')
    <div class="row">
        <div class="col-lg-12">
            <h1>Post List</h1>

            @if ($message = Session::get('success'))
                <div class="alert alert-success">
                    <p>{{ $message }}</p>
                </div>
            @endif


            <a class="btn btn-primary float-right" href="{{ route('posts.create') }}">New Post</a><br><br>
            <table class="table table-bordered">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Details</th>
                    <th>Image</th>
                    <th width="230px">Action</th>
                </tr>

                @foreach ($posts as $post)
                    <tr>
                        <td>{{ $i++ }}</td>
                        <td>{{ $post->name }}</td>
                        <td>{{ $post->detail }}</td>
                        <td><img src="/images/{{ $post->image }}" width="100px"></td>
                        <td>

                            <form action="{{ route('posts.destroy', $post->id) }}" method="POST">

                                <a class="btn btn-dark" href="{{ route('posts.show', $post->id) }}">Show</a>

                                <a class="btn btn-success" href="{{ route('posts.edit', $post->id) }}">Edit</a>

                                @csrf
                                @method('DELETE')

                                <button type="submit" class="btn btn-danger">Delete</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </table>
        </div>
    </div>
@endsection
