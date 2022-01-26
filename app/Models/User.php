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
		if(self::_checkLogin($mail, $pass))
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
		$check = self::where("mail", $mail)
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
		return self::select('password')
			->where("mail", $mail)
			->get()[0]->password;
	}

	/**
	 * check password
	 */
	private function _checkPassword($mail, $pass)
	{
		return password_verify($pass, self::_getHashPass($mail));
	}

	/**
	 * check login
	 */
	private function _checkLogin($mail, $pass)
	{
		if(self::_checkEmail($mail) && self::_checkPassword($mail, $pass)) {
			$user = self::where("mail", $mail)
			->where("password", self::_getHashPass($mail))
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
		if(self::_checkEmail($data["mail"]))
		{
			return false;
		} else {
			$token = md5( date('d/m/Y h:i:s', time() . "-" . rand(0,999999) ));
			$create = self::insert([
				'name' => $data["name"],
				'mail' => $data["mail"],
				'password' => Hash::make($data["password"]),
				'phone' => $data["phone"],
				'invite' => $token,
			]);
			if($create) {
				return true;
			} else {
				return false;
			}
		}
	}

	/**
	 * get user info
	 */
	static function getUserInfo($id)
	{
		$info = self::select(
			"name",
			"mail",
			"phone",
			"register",
			"type",
			"updated_at",
		)
		->where("id", $id)
		->first();

		return $info;
	}
}
