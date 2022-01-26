<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RestaurantProduct extends Model
{
    use HasFactory;

	/**
	 * Get product info
	 */
	static function getProductInfo($id)
	{
		$info = self::where("id", $id)
		->get();
		$info = json_decode($info)[0];

		return $info;
	}

	/**
	 * Count product
	 */
	static function countProduct($rest_id)
	{
		$count = self::where("rest_id", $rest_id)
		->count();

		return $count;
	}

	/**
	 * Restaurant product list for owner
	 */
	static function getProductListRestaurant($id)
	{
		$list = self::where("rest_id", $id)
		->get();
		
		foreach($list as $item) {
			$item['cat_name'] = RestaurantCategory::getCategoryName($item['cat_id']);
			$item['img_folder'] = Restaurant::getRestImgId($item['rest_id']);
		}

		return $list;
	}

	/**
	 * Add new product
	 */
	static function addProduct($data)
	{
		$insert = self::insert([
			"rest_id" => $data["rest_id"],
			"cat_id" => $data["cat_id"],
			"name" => $data["name"],
			"price" => $data["price"],
			"text" => $data["text"],
			"img" => $data["img"],
		]);

		return $insert;
	}

	/**
	 * Update product
	 */
	static function updateRestaurantProduct($data)
	{
		$update = self::where("id", $data['id'])
		->update([
			"cat_id" => $data["cat_id"],
			"name" => $data["name"],
			"price" => $data["price"],
			"text" => $data["text"],
		]);

		if($data['img'] != "") {
			$update = self::where("id", $data['id'])
			->update([
				"img" => $data["img"],
			]);
		}

		return $update;
	}

	/**
	 * Delete product
	 */
	static function deleteRestaurantProduct($id)
	{
		$delete = self::where("id", $id)
		->delete();

		return $delete;
	}
}
