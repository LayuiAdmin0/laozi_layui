<?php

namespace App\Http\Models;

use Illuminate\Database\Eloquent\Model;

class IndexModel extends Model
{
    protected $table = 'info';

    protected $primaryKey = 'id';
    protected $fillable = ['laozi_ip' , 'laozi_logintime' , 'laozi_phone'];
    public $timestamps = false;


}
