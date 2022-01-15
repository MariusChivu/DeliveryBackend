<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Link extends Model
{
    use HasFactory;

	/**
	 * Get Social links
	 */
	static function getSocial()
	{
		$social = Link::where("type", "social")
		->get();
		
		return $social;
	}
	/**
	 * Get apps download link
	 */
	static function getDownload()
	{
		$download = Link::where("type", "download")
		->get();
		
		return $download;
	}
}
