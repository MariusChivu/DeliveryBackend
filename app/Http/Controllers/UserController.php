<?php

namespace App\Http\Controllers;

use App\Models\CartDetails;
use App\Models\CartItems;
use App\Models\PaymentMethod;
use App\Models\Restaurant;
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
		$user = User::getUserInfo(UserController::userId());
		$user["register"] = strtotime($user["register"]);
		$user["register"] = date("d-m-Y H:i", $user["register"]);

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

	/**
	 * Get user orders
	 */
	static function userOrders()
	{
		$order = CartDetails::getOrderDetails();

		foreach($order as $item) {
			$item["rest_img"] = Restaurant::getRestImg($item["restaurant"]);
		}

		return view("user.orders", compact([
			"order",
		]));
	}

	/**
	 * Get order items
	 */
	static function userOrderItems($id)
	{
		$items = CartItems::getUserOrderItems($id);

		return view("user.items", compact([
			"items",
		]));
	}

	/**
	 * Update user info
	 */
	static function updateInfo(Request $request)
	{
		if(isset($_POST['updateInfo'])) {
			$mail = User::getUserInfo(self::userId())->mail;
			$update = User::where('mail', $mail)
			->update(array(
				'name' => $request->name,
				'mail' => $request->mail,
				'phone' => $request->phone,
			));

			if($update) {
				return "update_info_success";
			} else {
				return "update_info_error";
			}
		}
	}

	/**
	 * Set Payment Methods page
	 */
	static function paymentMethodsPage()
	{
		$method = PaymentMethod::getPaymentMethod(self::userId());
		
		return view("user.payment", compact([
			"method",
		]));
	}
}
