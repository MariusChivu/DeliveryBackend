<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CartItems extends Model
{
    use HasFactory;

	/**
	 * Store cart items
	 */
	static function storeCartItems($data)
	{
		self::insert([
			'user_id' => $data["user_id"],
			'cart_token' => $data["cart_token"],
			'img' => $data["img"],
			'name' => $data["name"],
			'cant' => $data["cant"],
			'price' => $data["price"],
			'id_prod' => $data["id_prod"],
			'id_rest' => $data["id_rest"],
		]);

		return true;
	}

	/**
	 * Get order items
	 */
	static function getUserOrderItems($id)
	{
		$items = self::where("cart_token", $id)
		->get();

		return $items;
	}

	/**
	 * Select Popular products
	 */
	static function selectPopularProducts($restId)
	{
		$popularProduct = self::groupBy('id_prod', 'name')
		->where('id_rest', $restId)
		->selectRaw("SUM(cant) as cant, `name`, `id_prod`")
		->orderBy('cant' , 'desc')
		->limit(4)
		->get();
		
		return $popularProduct;
	}
}
