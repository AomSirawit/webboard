<?php

namespace App\Http\Controllers;

use App\Models\Board;
use Illuminate\Http\Request;

class UserController extends Controller
{
    function index(){
        $boards = Board::all();
        return view('welcome',compact('boards'));
    }
}
