<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class CartController extends Controller
{
    /**
	 * add item in cart
	 */
	static function addItem(Request $request)
	{
		if(isset($_POST["addCart"])) {
			$sessionCart = Session::get("cart");
			$data = [
				"img" => $request->img,
				"title" => $request->title,
				"price" => $request->price,
				"cant" => 1
			];
			$title = $data["title"];
			

			if($sessionCart == null) {
				Session::put("cart_restaurant", $request->restaurant);
				Session::put("cart", [$data]);
			} else {
				$cartItems = Session::get("cart");
				for ($i=0; $i < sizeof($cartItems); $i++) { 
					dd($cartItems[$i]["title"]);
					if($cartItems[$i]["title"] == $title) {
						dd($cartItems[$i]["title"]);
					}
				}

			}
			

			dd("dupa for ", Session::get("cart"));
			


			dd($request->title, "final");
		return true;
		}
	}
}
