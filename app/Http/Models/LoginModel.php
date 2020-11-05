<?php

namespace App\Http\Models;

use Illuminate\Database\Eloquent\Model;

class LoginModel extends Model
{
    protected $table = 'user';

    protected $primaryKey = 'id';
    protected $fillable = ['laozi_username' , 'laozi_password'];
    public $timestamps = false;
    public function user_info()
    {
        return $this->hasOne('App\Http\Models\IndexModel','laozi_userid','id');
    }


}
