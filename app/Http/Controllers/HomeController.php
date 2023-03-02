<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Session;
use Hash;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
       
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('welcome');
    }

    public function dashboard(){
        return view('admin.dashboard');
    }

    public function adminlogin(){
        return view('admin.auth.login');
    }

    public function ask(){
        return view('ask.ask');
    }

    public function adminloginpost(Request $request)
    {
        $this->validate($request,[
            'email'=>'required|email',
            'password'=>'required'
         ]);
        $user = User::where('email', $request->email)->first();
        if($user != null){
            if(Hash::check($request->password, $user->password)){  
                auth()->login($user, true);
                Session::flash('message', 'Login successfully'); 
                Session::flash('errormsg', 'success'); 
                return redirect()->route('dashboard');
            }
        }
        Session::flash('message', 'user not found'); 
        Session::flash('errormsg', 'error'); 
        return back();
    }
    
    public function userloginpost(Request $request)
    {
        $this->validate($request,[
            'email'=>'required|email',
            'password'=>'required'
         ]);
        $user = User::where('email', $request->email)->first();
        if($user != null){
            if(Hash::check($request->password, $user->password)){  
                auth()->login($user, true);
                Session::flash('message', 'Login successfully'); 
                Session::flash('errormsg', 'success'); 
                return redirect()->route('home');
            }
        }
        Session::flash('message', 'user not found'); 
        Session::flash('errormsg', 'error'); 
        return back();
    }

    public function logout(){
        Auth::logout();
    }

   
}
