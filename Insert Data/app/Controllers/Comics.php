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

        if (empty($data['comics'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul Komik ' . $slug . ' tidak ditemukan');
        }
        return view('comics/detail', $data);
    }

    public function create()
    {
        $data = [
            'judul' => 'Form Tambah Data Komik'
        ];
        return view('comics/create', $data);
    }

    public function save()
    {
        $slug = url_title($this->request->getVar('judul'), '-', true);
        $this->comicsModel->save([
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $this->request->getVar('sampul')
        ]);

        session()->setFlashdata('pesan', 'Data Berhasil Ditambahkan');

        return redirect()->to('/comics');
    }
}
