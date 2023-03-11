@extends('matrix/homepage')
@section('contentpage')




@section('banar')
   Landing
@endsection()

  <div class="content-wrapper">
   <h3  class="col-xs-12"> Landing  <a href="{{url('admin/landing ')}}"><button style="margin:10px;" id="cat" type="submit" class="btn btn-primary"> Back  </button></a></h1>
    <section class="content">
      <div class="row">
        <div class="col-md-12">
              <div class="box box-primary">
              
                    <p class="text-warning">
                        @if(count($errors))
                            <ul>
                                @foreach($errors->all() as $error)
                                      <div style="padding: 7px; margin-top: 20px; margin-right: 20px; font-size: 17px;" class="p-3 mb-2 bg-danger text-white">{{ $error }}</div>
                                @endforeach
                            </ul>
                         @endif
                     </p>
                      @if(session()->has('message'))
                        <div class="alert alert-success " style="padding: 5px; margin-top: 20px; margin-right: 20px; margin-right: 12px; font-size: 17px;">
                            {{ session()->get('message') }}
                        </div>
                      @endif

                  <form role="form" method="post" action="{{ request()->url() }}" enctype="multipart/form-data">
                      {{ csrf_field() }}
                      <div class="box-body">
                          <div class="form-group">
                            <label for="exampleInputEmail1"> Title </label>
                            <input type="text" name="title" value="{{$edit->title }}" class="form-control" id="exampleInputEmail1" placeholder="EnterTitle">
                          </div>
                           <div class="form-group">
                            <label for="exampleInputEmail1"> Description </label>
                            
                           <textarea class="form-control" rows="5" id="fdddd" name="description" >{{$edit->description }}</textarea>
                          </div>
                           <div class="form-group">
                            <img src="{{url($edit->imag) }}" height="60" width="70"><br>
                            <label for="exampleInputEmail1"> Choose image </label>                            
                            <input type="file" name="image"  class="form-control" id="exampleInputEmail1" placeholder="Enter ">
                            <input type="hidden"  name="url" value="{{$edit->imag }}">
                          </div>
                          <div class="box-footer">
                              <button type="submit" class="btn btn-primary"> EDIT </button>
                          </div>
                      </div>
                  </form>
            </div>
          </div>
        </div>
    </section>
  </div>
@stop
