<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Bunga;
use App\Transaksi;
use Illuminate\Http\Response;

class BungaController extends Controller
{
    public function index()
    {
        return Response()->json(['result'=>'success', 'bunga'=>Bunga::with('transaksi')
        ->get()]);
    }
}
