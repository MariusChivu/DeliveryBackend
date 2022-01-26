<?php

namespace App\Providers;

use App\Http\Controllers\OwnerController;
use App\Http\Controllers\UserController;
use Illuminate\Support\ServiceProvider;
use Illuminate\Contracts\View\View;
use App\Models\Link;
use App\Models\Contact;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
		/**
		 * Return variable to all view pages !
		 */
        view()->composer("*", function(View $socials)
		{
			$social = Link::getSocial();
			$socials->with("social", $social);
		});

        view()->composer("*", function(View $contacts)
		{
			$contact = Contact::getContact()[0];
			$contacts->with("contact", $contact);
		});

        view()->composer("*", function(View $login)
		{
			$isLogin = UserController::isLogin();
			$login->with("isLogin", $isLogin);
		});

        view()->composer("*", function(View $owner)
		{
			$isOwner = OwnerController::isOwner();
			$owner->with("isOwner", $isOwner);
		});

    }
}
