<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    use HasFactory;

	/**
	 * Get contact details
	 */
	static function getContact()
	{
		$contact = Contact::get();
		
		return $contact;
	}
}
