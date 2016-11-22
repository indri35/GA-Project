<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Usercount extends Model
{
    public $table = 'count_dashboard_user';
    public $fillable = ['count_activity', 'count_click', 'count_view'];

}
