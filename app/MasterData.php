<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MasterData extends Model
{
    public $table = 'master_data';
    public $fillable = ['id','operator','os', 'imei','connected_by','click', 'view','type_device','language','regional','loc','ip','user','id_aplikasi'];
    public $primaryKey = 'imei';
    public $incrementing = true; 

}
