<?php

namespace App\Http\Controllers;
use App\Http\Requests\StoreCategoryRequest;
use Illuminate\Http\Request;
use App\Models\Ask;
class AskController extends Controller

{

    public function index()
    {
        $ask=Ask::all();
        return view('welcome', compact('ask'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreCategoryRequest  $request
     * @return \Illuminate\Http\Response
     */
    
    public function store(Request $request)
    {
        $ask = new Ask();
        $ask->question = $request->question;
        $ask->answer = $request->answer;
        $ask->comment = $request->comment;
        $ask->tag = $request->tag;
        $ask->save();
        return redirect()->back();
    }
}