<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Retention extends Model
{
	public $table = 'retention';
	public $fillable = ['id', 'idiklan','iduser', 'name', 'city','state','operator'];
	public $primaryKey = 'id';
	public $incrementing = true;
	public $timestamps = true;
	
	public function dataIklan() {
		return $this->belongsTo('App\Iklan', 'id', 'id');
	}
	
}
