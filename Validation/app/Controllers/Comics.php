<?php

namespace App\Controllers;

use App\Models\ComicsModel;
use CodeIgniter\Validation\Rules;

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
            'judul' => 'Form Tambah Data Komik',
            'validation' => \Config\Services::validation()
        ];
        return view('comics/create', $data);
    }

    public function save()
    {
        //validasi input

        if (!$this->validate([
            'judul' => [
                'rules' => 'required|is_unique[comics.judul]',
                'errors' => [
                    'required' => '{field} komik harus diisi.',
                    'is_unique' => '{field} tersebut sudah terdaftar'
                ]
            ]
        ])) {
            $validation = \Config\Services::validation();
            return redirect()->to('/comics/create')->withInput()->with('validation', $validation);
        }

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
