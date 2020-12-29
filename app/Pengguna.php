<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pengguna extends Model
{
    protected $table ="pengguna";

    protected $fillable = ['nama','created_at','update_at'];
    protected $dates = ['deleted_at'];

    public function telepon()
    {
        return $this->hasOne('App\Telepon');
    }

}
