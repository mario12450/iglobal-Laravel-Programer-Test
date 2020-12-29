<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Article;

class WebController extends Controller
    {
        public function index(){
            $artikel = Article::all();
            return view('article',['artikel' => $artikel]);
    }

        public function tambah()
    {    
        // memanggil view tambah
        return view('tambah');
        
    }

    // method untuk insert data ke table articles
    public function store(Request $request)
    {
        // insert data ke table articles
        DB::table('articles')->insert([
            // 'nama' => $request->nama,
            'judul' => $request->judul,
            'created_at' => $request->created_at,
            'updated_at' => $request->updated_at
        ]);
        // alihkan halaman ke halaman article
        return redirect('/article');

    }

    // method untuk edit data articles
    public function edit($id)
    {
        // mengambil data articles berdasarkan id yang dipilih
        $artikel = DB::table('articles')->where('id',$id)->get();
        // passing data articles yang didapat ke view edit.blade.php
        // print_r ($artikel);
        return view('edit',['artikel' => $artikel]);
    
    }

    // update data articles
    public function update(Request $request)
    {
        // update data articles
        DB::table('articles')->where('id',$request->id)->update([
            'judul' => $request->judul,
            // 'created_at' => $request->created_at,
            // 'updated_at' => $request->updated_at
        ]);
        // alihkan halaman ke halaman article
        return redirect('/article');
    }

    // method untuk hapus data articles
    public function hapus($id)
    {
        // menghapus data articles berdasarkan id yang dipilih
        DB::table('articles')->where('id',$id)->delete();
            
        // alihkan halaman ke halaman article
        return redirect('/article');
    }
    
}