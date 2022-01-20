<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CityList extends Model
{
    use HasFactory;
	
	/**
	 * Return City id by name
	 */
	static function getCityId($name)
	{	
        $id = self::where("name", $name)
		->get();
		$id = json_decode($id);
		$id = $id[0]->id;

		return $id;
	}

	/**
	 * Return city list
	 */
	static function getCityList()
	{
		$citys = self::get();
		$citys = json_decode($citys);
		
		return $citys;
	}

	/**
	 * Get City name by id
	 */
	static function getCityName($id)
	{
		$name = self::where("id", $id)
		->get();
		$name = json_decode($name);
		$name = $name[0]->name;

		return $name;
	}
}
