<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Session;

class UserController extends Controller
{

    /**
	 * login function
	 */
	static function login(Request $request)
	{
		if(isset($_POST['login'])) {
			$mail = $request->email;
			$pass = $request->password;
			// 	if($count == 1 && $err == 0) {
			// 		Session::put("user", [
			// 			"id" => $user->id,
			// 			"name" => $user->name,
			// 			"mail" => $user->mail,
			// 			"phone" => $user->phone,
			// 			"admin" => $user->admin,
			// 			"type" => $user->type
			// 		]);
			if(User::setLogin($mail, $pass)) {
				return true;
			} else {
				return "login_error";
			}
		}
	}

	/**
	 * register function
	 */
	static function register(Request $request)
	{
		if(isset($_POST['register'])) {
			$data = [
				"name" => $request->name,
				"phone" => $request->phone,
				"mail" => $request->email,
				"password" => $request->password
			];
			
			if(User::setRegister($data)) {
				return "register_success";
			} else {
				return "register_error";
			}
		}
	}

	/**
	 * logout function
	 */
	static function logout()
	{
		session()->invalidate();
		return redirect()->route('index');
	}

	/**
	 * return user account info
	 */
	static function userPanelInfo()
	{
		$user = "asfasfas";

		return view("user.info", compact([
			"user",
		]));
	}

	/**
	 * check if is login
	 */
	static function isLogin()
	{
		$login = Session::get("user");

		if($login == null) {
			return false;
		} else {
			return true;
		}
	}

	/**
	 * get id for user
	 */
	static function userId()
	{
		return Session::get("user")["id"];
	}
}
