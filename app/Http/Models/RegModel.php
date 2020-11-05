<?php

namespace App\Http\Models;

use Illuminate\Database\Eloquent\Model;

class RegModel extends Model
{
    protected $table = 'user';
    protected $primaryKey = 'id';
    protected $fillable = ['laozi_username' , 'laozi_password' , 'laozi_ip' , 'laozi_logintime' , 'laozi_phone'];

    public $timestamps = false;
}
