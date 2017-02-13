<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dashboard extends Model
{
    public $table = 'count_install';
    public $fillable = ['total_install'];

}
