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
        $id = CityList::where("name", $name)
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
		$citys = CityList::get();
		$citys = json_decode($citys);
		
		return $citys;
	}
}
