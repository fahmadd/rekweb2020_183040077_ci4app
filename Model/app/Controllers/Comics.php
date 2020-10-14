<?php

namespace App\Controllers;

use App\Models\ComicsModel;

class Comics extends BaseController
{
    protected $comicsModel;
    public function __construct()
    {
        $this->comicsModel = new ComicsModel();
    }

    public function index()
    {
        // $comics = $this->comicsModel->findAll();

        $data = [
            'judul' => 'Daftar Komik',
            'comics' => $this->comicsModel->getComics()
        ];

        // cara konek db tanpa model
        // $db = \Config\Database::connect();
        // $comics = $db->query("SELECT*FROM comics");
        // foreach ($comics->getResultArray() as $row) {
        //     d($row);
        // }
        return view('comics/index', $data);
    }

    public function detail($slug)
    {

        $data = [
            'judul' => 'Detail Komik',
            'comics' => $this->comicsModel->getComics($slug)
        ];
        return view('comics/detail', $data);
    }
}
