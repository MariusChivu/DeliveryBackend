<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Hash;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Support\Facades\Session;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

	/**
	 * set login
	 */
	static function setLogin($mail, $pass)
	{
		if(User::_checkLogin($mail, $pass))
		{
			return true;
		} else {
			return false;
		}
	}

	/**
	 * check email
	 */
	private function _checkEmail($mail)
	{
		$check = User::where("mail", $mail)
		->get();
		$size = sizeOf($check);

		if($size == 1) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * get hash password
	 */
	private function _getHashPass($mail)
	{
		return User::select('password')
			->where("mail", $mail)
			->get()[0]->password;
	}

	/**
	 * check password
	 */
	private function _checkPassword($mail, $pass)
	{
		return password_verify($pass, User::_getHashPass($mail));
	}

	/**
	 * check login
	 */
	private function _checkLogin($mail, $pass)
	{
		if(User::_checkEmail($mail) && User::_checkPassword($mail, $pass)) {
			$user = User::where("mail", $mail)
			->where("password", User::_getHashPass($mail))
			->get();
			$user = $user[0];
			Session::put("user", [
				"id" => $user->id,
			]);
			return true;
		} else {
			return false;
		}
	}

	/**
	 * register user
	 */
	static function setRegister($data)
	{
		if(User::_checkEmail($data["mail"]))
		{
			return false;
		} else {
			$create = User::insert([
				'name' => $data["name"],
				'mail' => $data["mail"],
				'password' => Hash::make($data["password"]),
				'phone' => $data["phone"],
			]);
			if($create) {
				return true;
			} else {
				return false;
			}
		}
	}
}
