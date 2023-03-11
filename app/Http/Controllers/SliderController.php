<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;

use App\Slider;

use Auth;

use App\User;
class SliderController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function show()
    {
        $sliders = DB::table('slider')->get();
        return view('matrix.pages.slider',compact('sliders'));
    }

    public function restore_trashed()
    {
        $slider = Slider::withTrashed()->get();
        return view('matrix.pages.slider_trashed',compact('slider'));
    }

     public function store(Request $request)
    {

      $this->validate(request(),[
       'image'=> 'required',
      ]);
      
              $file=$request->file('image');
              $destinationPath ='account/images';
              $filename=$file->move($destinationPath,$file->getClientOriginalName());
              $services = new Slider;
              $services->title1  = $request->title1;
              $services->title2  = $request->title2;
              $services->image = $filename;
              $services->save();
               return back()->with("message", " Has been successfully added "); 
     }
     
    public function edit($id)
    {
        $edit = Slider::findOrFail($id);
        return view('matrix.pages.slider_edit',compact('edit'));
    }
     public function update(Request $request, $id)
     {
        $slider_edit = Slider::findOrFail($id);
        if($file=$request->file('image'))
        {
            $destinationPath ='account/images';
            $filename=$file->move($destinationPath,$file->getClientOriginalName());
            $slider_edit->image = $filename;
        }else{
           $slider_edit->image = $request->url;
        }


        if($file=$request->file('image2'))
        {
            $destinationPath ='account/images';
            $filename2=$file->move($destinationPath,$file->getClientOriginalName());
            $slider_edit->image2 = $filename2;
        }else{
           $slider_edit->image2 = $request->url2;
        }
        if($file=$request->file('background'))
        {
            $destinationPath ='account/images';
            $filename3=$file->move($destinationPath,$file->getClientOriginalName());
            $slider_edit->background = $filename3;
        }else{
           $slider_edit->background = $request->background;
        }
        


        $slider_edit->title1  = $request->title1;
        $slider_edit->title2  = $request->title2;
          $slider_edit->save();
          return back()->with("message", " Has been successfully updated ");
     }


    public function destroy(Slider $id)
    {
        $id->delete();
        return back();
    }


    public function restore($id)
    {
        Slider::withTrashed()->find($id)->restore();
        return back();
    }
}
