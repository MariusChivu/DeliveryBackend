<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Http\Controllers\DistanceController;

class RestaurantCity extends Model
{
    use HasFactory;
	

	/**
	 * Get restaurant coords by city
	 */
	static function getRestaurantCoords($rest_id, $city_id)
	{
		$coords = self::where("rest_id", $rest_id)
		->where("city_id", $city_id)
		->get();
		$coords = json_decode($coords);
		$coords = $coords[0]->coords;

		return $coords;
	}

	/**
	 * Get restaurant list for nearby command
	 */
	static function getRestaurantListNearby()
	{
		$restaurant = self::get();

		return $restaurant;
	} 
}
