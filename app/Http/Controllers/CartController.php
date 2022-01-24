<?php

namespace App\Http\Controllers;

use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Http\Controllers\UserController;
use App\Models\CartDetails;
use App\Models\CartItems;
use App\Models\Restaurant;

class CartController extends Controller
{
    /**
	 * add item in cart
	 */
	static function addItem(Request $request)
	{
		if(isset($_POST["addCart"])) {
			if(Session::get("restaurantCart") == null || Cart::content()->count() == 0) {
				Session::put("restaurantCart", $request->restaurant);
			}

			if(Session::get("restaurantCart") == $request->restaurant) {
				$data = [
					"id" => $request->id,
					"name" => $request->title,
					"price" => $request->price,
					"qty" => 1,
					"options" => [
						"img" => $request->img,
						"id_rest" => Restaurant::getId($request->restaurant),
					]
				];
	
				Cart::add($data["id"], $data["name"], 1, $data["price"], $data["price"], [$data["options"]]);
				
			} else {
				return "other_restaurant";
			}
		}
	}

	/**
	 * Delete cart item
	 */
	static function deleteCartItem(Request $request)
	{
		if(isset($_POST['removeItem'])) {
			foreach (Cart::content() as $item) {
				if($item->id == $request->id) {
					$rowId = $item->rowId;
					if($item->qty > 1) {
						Cart::update($rowId, ['qty' => $item->qty - 1]);
					} else {
						Cart::remove($rowId);
					}
				}
			}
		}
	}

	/**
	 * Reset cart items
	 */
	static function resetCart()
	{
		if(isset($_POST['resetCart'])) {
			Cart::destroy();
		}
	}

	/**
	 * Reset cart items when insert items on DB
	 */
	static function resetCartInsert()
	{
		Cart::destroy();
	}

	/**
	 * Store Cart
	 */
	static function storeCart()
	{
		if(isset($_POST['finalCart'])) {
			if(UserController::isLogin()) {
				$token = md5( date('d/m/Y h:i:s', time() . "-" . rand(0,999999) ));

				$data_details = [
					"user_id" => UserController::userId(),
					"cart_token" => $token,
					"restaurant" => Session::get("restaurantCart"),
					"subtotal" => Cart::subtotal(),
					"deliver" => 7.99,
					"total" => Cart::subtotal() + 7.99,
				];	
				CartDetails::storeCartDetails($data_details);

				foreach (Cart::content() as $item) {
					$data_items = [
						"user_id" => UserController::userId(),
						"cart_token" => $token,
						"img" => $item->options[0]["img"],
						"name" => $item->name,
						"cant" => $item->qty,
						"price" => $item->price,
						'id_prod' => (int) $item->id,
						'id_rest' => $item->options[0]["id_rest"],
					];
					CartItems::storeCartItems($data_items);
				}

				self::resetCartInsert();
				return "register_comanda";
			} else {
				return "login_finalCart";
			}
		}
	}
}
