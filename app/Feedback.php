<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Feedback extends Model
{
    //
    protected $table = "feedbacks";
    protected $guarded = ['id'];

    //this method toggles the message from solved to not solved and vice versa
    public function toggleSolved()
 	{
        $this->is_solved= !$this->is_solved;
        return $this;
    }
}
