<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ticket extends Model
{
    protected $fillable = ['uname','email','title','category', 'content', 'slug', 'status', 'user_id'];
    //
    public function user()
	{
		return $this->belongsTo('App\User');
	}

	public function comments()
	{
		return $this->hasMany('App\Comment', 'post_id');
	}
}
