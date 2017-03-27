<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Iklan extends Model
{
    public $table = 'iklan';
    public $fillable = ['id', 'user', 'status','url','name', 'description','hour_start','hour_end','day_start','day_end','created_at','picture'];
    public $primaryKey = 'id';
    public $incrementing = true; 
    public $timestamps = true;
}
