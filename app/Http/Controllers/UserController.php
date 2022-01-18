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
	static function login($request)
	{
		$mail = $request->email;
		$pass = $request->password;
		$err = 0;
		if(isset($_POST['login'])) {
			$hashPass = User::select('password')
			->where("mail", $mail)
			->get()[0]->password;

			if (password_verify($pass, $hashPass)) {
				$user = User::where("mail", $mail)
				->where("password", $hashPass)
				->get();
				$count = sizeOf($user);
				$user = $user[0];
			} else {
				$count = 0;
				$err = 1;
			}

			if($count > 0 && $err == 0) {
				Session::put("user", [
					"name" => $user->name,
					"mail" => $user->mail,
					"phone" => $user->phone,
					"admin" => $user->admin,
					"type" => $user->type
				]);
			} else {
				return "login_error";
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

	static function isLogin()
	{
		$login = Session::get("user");

		if($login == null) {
			return false;
		} else {
			return true;
		}
	}
}
