<?php

namespace App\Http\Controllers\Api;

use App\Models\Post;
use Illuminate\Http\Request;
use App\Http\Requests\PostRequest;
use App\Http\Controllers\Controller;
use App\Http\Resources\PostResource;
use Illuminate\Support\Facades\Validator;

class PostController extends Controller
{
    use ApiResponseTrait;
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $posts = PostResource::collection(Post::all());
        return $this->apiResponse($posts, 200, "Ok");
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|unique:posts',
            'body' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->apiResponse(null, 400, $validator->errors());
        }

        $post = Post::create($request->all());
        $post = new PostResource($post);
        if ($post) {
            return $this->apiResponse($post, 201, "Post Saved");
        }
        return $this->apiResponse(null, 400, "Post Not Added");
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $post = Post::find($id);
        if ($post) {
            $post = new PostResource(Post::find($id));
            return $this->apiResponse($post, 200, "Ok");
        }
        return $this->apiResponse(null, 401, "Post Not Found");
    }


    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'body' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->apiResponse(null, 400, $validator->errors());
        }

        $post = Post::find($id);
        if ($post) {
            $post->update($request->all());
            $post = new PostResource($post);
            return $this->apiResponse($post, 201, "Post Upated");
        }
        return $this->apiResponse(null, 400, "Post Not Found");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $post = Post::find($id);
        if ($post) {
            $post->delete();
            return $this->apiResponse(null, 200, "The Post Deleted");
        }
        return $this->apiResponse(null, 400, "The Post Not Found");
    }
}
