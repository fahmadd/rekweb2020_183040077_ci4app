<?php

namespace App\Controllers;

class Coba extends BaseController
{
    public function index()
    {
        echo 'ini Controller coba dengan method index';
    }

    public function about($nama = '', $umur = 0)
    {
        echo 'nama saya ' . $nama . ', saya berumur ' . $umur . ' tahun';
    }

    //--------------------------------------------------------------------

}
