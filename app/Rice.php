<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Rice extends Model
{
	//otherwise the Rice Model was unable to find "rices" table
    protected $table = "rices";
    protected $guarded = ['id'];
}
