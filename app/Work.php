<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Work extends Model
{
     protected $table = 'work';

     public function ourwork(){
            return $this->belongsTo(Ourwork::class,'ourwork_id','id'::class);
      }
}
