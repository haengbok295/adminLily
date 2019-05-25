<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class bunga extends Model
{
    protected $table ='bunga';

    function transaksi()
    {
        return $this->belongsTo('App\Transaksi', 'id');
    }
}
