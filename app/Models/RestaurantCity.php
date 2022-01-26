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

	/**
	 * Get number of locations
	 */
	static function locationNumber($rest_id)
	{
		$locations = self::where("rest_id", $rest_id)
		->count();

		return $locations;
	}

	/**
	 * Get city locations
	 */
	static function locationCity($rest_id)
	{
		$city = self::where("rest_id", $rest_id)
		->distinct()
		->get("city_id");

		foreach($city as $item) {
			$item["name"] = CityList::getCityName($item['city_id']);
		}

		return $city;
	}

	/**
	 * Add new restaurant city
	 */
	static function newRestaurantCity($data)
	{
		$data["id"] = Restaurant::select("id")->where("img", $data["id"])->first()["id"];
		
		$insert = self::insert([
			"rest_id" =>$data["id"],
			"city_id" =>$data["city_id"],
			"coords" =>$data["coords"],
		]);

		return true;
	}
}
