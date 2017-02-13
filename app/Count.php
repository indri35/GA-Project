<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Count extends Model
{
    public $table = 'count_dashboard';
    public $fillable = ['count_activity', 'count_click', 'count_view'];

}
