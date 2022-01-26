<?php

namespace App\Models;

use App\Http\Controllers\UserController;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CartDetails extends Model
{
    use HasFactory;

	/**
	 * Insert items detils in DB
	 */
	static function storeCartDetails($data)
	{
		$create = self::insert([
			'user_id' => $data["user_id"],
			'cart_token' => $data["cart_token"],
			'restaurant' => $data["restaurant"],
			'subtotal' => $data["subtotal"],
			'deliver' => $data["deliver"],
			'total' => $data["total"],
		]);

		return true;
	}

	/**
	 * Get user orders details
	 */
	static function getOrderDetails()
	{
		$order = self::where("user_id", UserController::userId())
		->orderBy("date", "desc")
		->get();

		return $order;
	}

	/**
	 * Count restaurant orders
	 */
	static function countOrders($rest_name)
	{
		$count = self::where("restaurant", $rest_name)
		->count();

		return $count;
	}
}
