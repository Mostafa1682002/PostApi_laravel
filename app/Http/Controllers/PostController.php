<?php

namespace App\Http\Controllers;

use App\Http\Requests\PostRequest;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $allPosts = Post::all();
        return view('posts.allposts', ['posts' => $allPosts]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('posts.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(PostRequest $request)
    {
        // $request->validate([
        //     'title' => 'required',
        //     'body' => ['required'],
        // ]);
        Post::create($request->only('title', 'body'));
        return Redirect::route('posts.index')->with('status', 'تم اضافة البوست بنجاح');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $post = Post::find($id);
        return view('posts.show', ['post' => $post]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $post = Post::find($id);
        return view('posts.edite', ['post' => $post]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'title' => 'required',
            'body' => ['required'],
        ]);
        $post = Post::find($id);
        $post->update($request->only('title', 'body'));
        return Redirect::route('posts.index')->with('status', "تم تعديل البوست بنجاح");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Post::destroy($id);
        return Redirect::route('posts.index')->with('status', "تم حذف البوست بنجاح");
    }
}
