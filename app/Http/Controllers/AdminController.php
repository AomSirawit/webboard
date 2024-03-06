<?php

namespace App\Http\Controllers;
use App\Models\Board;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    function index(){
        $boards = Board::all();
        return view('home',compact('boards'));
    }

    function create(){
        return view('form');   
    }

    function insert(Request $request){
        $request->validate(
            [   
                'name' => 'required',
                'title' => 'required|max:50',
                'content' => 'required'
            ],
            [   
                'name.required' => 'กรุณาใส่ชื่อ',
                'title.required'=>'กรุณาใส่หัวเรื่อง',
                'title.max'=>'เนื้อหาไม่ควรเกิน 50 ตัวอักษร',
                'content.required'=>'กรุณาป้อนเนื้อหาของคุณ'
            ]
        );
        $data = [
            'name' => $request->name,
            'title' => $request->title,
            'content' => $request->content
        ];
        Board::insert($data);
        return redirect('home');
    }

    function delete($id){
        Board::find($id)->delete();
        return redirect()->back();

    }
}
