<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
//Route one to one
Route::get('/pengguna', 'PenggunaController@index');

//Route One to Many
Route::get('/article', 'WebController@index');
Route::get('/article/tambah','WebController@tambah');
Route::post('/article/store','WebController@store');
Route::get('/article/edit/{id}','WebController@edit');
Route::post('/article/update','WebController@update');
Route::get('/article/hapus/{id}','WebController@hapus');

//Route many to many
Route::get('/anggota', 'MarioController@index');

//Login dengan Auth
Route::auth();
Route::get('/home', 'HomeController@index');