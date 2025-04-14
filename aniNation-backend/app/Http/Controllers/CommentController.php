<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Comment;


class CommentController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */

     public function getAll() {
         $comments = Comment::select('comments.id','comment_name','comment_brief')->orderBy('comments.id', 'desc')->get();
         return response()->json($comments);
     }


     public function getOne($id) {
        $comments = Comment::select('comments.id','comment_name','comment_brief')->where('comments.id', '=', $id)->get();
         return response()->json($comments);
     }


     public function save(Request $request) {
        $this->validate($request, [

            'comment_name' => 'required',
            'comment_brief' => 'required',

        ]);
        $comments = Comment::create($request->all());
        return response()->json($comments, 201);
    }


    public function update(Request $request, $id) {
        $comments = Comment::findOrFail($id);
    
        $this->validate($request, [
            'comment_name' => 'required',
            'comment_brief' => 'required'
        ]);
        $comments->update($request->all());
        return response()->json($comments);
    }


    public function delete($id) {
        $comments = Comment::findOrFail($id);
        $comments->delete();
        return response()->json(null, 204);
    }
    

    
}
