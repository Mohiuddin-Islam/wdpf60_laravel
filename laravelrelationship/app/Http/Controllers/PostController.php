<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index(){
        $posts = Post::all();
        //dd($posts);

        return view('post.index', compact('posts'));

    }

    public function show(Request $request){
        $id = $request->id;
        $post = post::find($id);
        $comments = post::find($id)->comments;
        //dd($comments);

        return view ('post.show', compact('post', 'comments'));
    }

}
