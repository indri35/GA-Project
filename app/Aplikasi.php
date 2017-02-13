<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Aplikasi extends Model
{
    public $table = 'aplikasi';
    public $fillable = ['id', 'user', 'package','status','category', 'platform','name','picture','token'];
    public $primaryKey = 'id';
    public $incrementing = true; 
}
