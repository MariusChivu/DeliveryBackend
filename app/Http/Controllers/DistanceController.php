<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DistanceController extends Controller
{
    /**
	 * Calculate distance
	 */
	static function calculateDistance($coords)
	{
		if(!isset($_COOKIE["position"])) {	
			$myLocation = "0,0";
		} else {
			$myLocation = explode(",", $_COOKIE["position"]);
		}
		$restCoords = explode(",", $coords);
		$myLat = deg2rad($myLocation[0]);
		$myLong = deg2rad($myLocation[1]);
		$latTo = deg2rad($restCoords[0]);
		$lonTo = deg2rad($restCoords[1]);
		$earthRadius = 6371000;
	  
		$lonDelta = $lonTo - $myLong;
		$a = pow(cos($latTo) * sin($lonDelta), 2) +
		  pow(cos($myLat) * sin($latTo) - sin($myLat) * cos($latTo) * cos($lonDelta), 2);
		$b = sin($myLat) * sin($latTo) + cos($myLat) * cos($latTo) * cos($lonDelta);
	  
		$angle = atan2(sqrt($a), $b);
		$distance = round($angle * $earthRadius,2);
		
		return $distance;
	}

	/**
	 * Return distance in M or KM
	 */
	static function calculateDistanceName($distance)
	{
		if($distance > 1000) {
			$distance = round($distance / 1000, 2) ." km";
		} else {
			$distance = $distance." metri";
		}
		return $distance;
	}
}
