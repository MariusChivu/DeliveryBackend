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
}
