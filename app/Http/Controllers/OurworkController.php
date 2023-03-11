<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use DB;

use App\Ourwork;
use App\Icons;


use Auth;

use App\User;
class OurworkController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function show()
    {
         $blogs = DB::table('ourwork')->get();
         $Icons=Icons::all();

        return view('matrix.pages.ourwork',compact('blogs','Icons'));
    }
   
     public function store(Request $request)
    {

       $this->validate(request(),[
       'title'=> 'required',
       'description'=> 'required',
      
      ]);
            
              $ourwork = new Ourwork;
              $ourwork->title  = $request->title;              
              $ourwork->description  = $request->description;
              $blog_edit->image=$request->icon;

   
              $ourwork->save();
               return back()->with("message", " Has been successfully added "); 
     }


     public function edit($id)
     {
           $edit = Ourwork::findOrFail($id);
           $Icons=Icons::all();

           return view('matrix.pages.ourwork_edit',compact('edit','Icons'));
     }

     public function update(Request $request, $id)
     {

        //dd($request);
          $blog_edit = Ourwork::findOrFail($id); 
          $blog_edit->title    = $request->title;         
          $blog_edit->description  = $request->description;
          $blog_edit->image=$request->icon;
          $blog_edit->save();
          return back()->with("message", " Has been successfully updated ");
     }
     
    public function destroy(Ourwork $id)
    {
        $id->delete();
        return back();
    }
  

    
}