<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Movie;



class MovieController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */

     public function getAll() {
        $movies = Movie::select('mov_id','mov_name', 'mov_poster', 'mov_brief')->orderBy('mov_id')->get();
        return response()->json($movies);
    }
    public function getOne($id) {
        $movies = Movie::select('mov_id','mov_name', 'mov_poster', 'mov_brief')->where('mov_id', '=', $id)->get();
        return response()->json($movies);
    }


    public function save(Request $request) {
        $this->validate($request, [

            'mov_name' => 'required',
            'mov_poster' => 'required',
            'mov_brief' => 'required'
        ]);
        $movies = Movie::create($request->all());
        return response()->json($movies, 201);
    }


    public function update(Request $request, $id) {
        $movies = Movie::findOrFail($id);
        $this->validate($request, [
            
            'mov_name' => 'required',
            'mov_poster' => 'required',
            'mov_brief' => 'required'
        ]);
        $movies->update($request->all());
        return response()->json($movies);
    }


    public function delete($id) {
        $movies = Movie::findOrFail($id);
        $movies->delete();
        return response()->json(null, 204);
    }

    
}
