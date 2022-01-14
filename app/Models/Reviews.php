<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reviews extends Model
{
    use HasFactory;

	
	/**
	 * Stars average
	 */
	static function avgStars($rest_id)
	{
		$stars = Reviews::where("rest_id", $rest_id)
		->avg('star');
		$stars = round($stars, 1);
		
		return $stars;
	}

	/**
	 * Get restaurante Reviews
	 */
	static function getReviews($rest_id)
	{
		$reviews = Reviews::where("rest_id", $rest_id)
		->get();

		return $reviews;
	}
}

