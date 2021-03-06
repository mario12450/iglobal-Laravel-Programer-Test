<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AuthController extends Controller
{
    protected function validator(array $data)
    {
        return Validator::make($data,[
           'name' => 'required|max:255', 
           'username' => 'required|unique:users', 
           'emai' => 'required|email|max:255|unique:users', 
           'password' => 'required|min:6|confirmed', 
        ]);
    }

    protected function create(array $data)
    {
        return User::create([
            'name' => $data['name'],
            'username' => $data['username'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
        ]);
    }
    
}

