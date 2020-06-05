<?php

namespace App\Model\Admin;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
class Brand extends Model
{

	  use Notifiable;
     protected $fillable = [
        'brand_name', 'brand_logo'
    ];
}
