<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MasterData extends Model
{
    public $table = 'master_data';
    public $fillable = ['id', 'imei', 'click', 'view','type_device','language','regional','loc','ip','user','id_aplikasi','hash'];
    public $primaryKey = 'imei';
    public $incrementing = true; 

}
