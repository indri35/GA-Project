<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MasterData extends Model
{
    public $table = 'master_data';
    public $fillable = ['id', 'imei', 'click', 'view','type_device','created_at','updated_at','language','regional'];
    public $primaryKey = 'id';
    public $incrementing = true; 

}
