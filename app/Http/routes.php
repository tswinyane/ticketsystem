<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {	
	return View::make('welcome');
});

/*Route::get('/', 'PagesController@home');

Route::get('/contact', 'PagesController@create');

Route::post('/contact', 'TicketsController@store');

Route::get('/tickets', 'TicketsController@index');

Route::get('/ticket/{slug?}', 'TicketsController@show');

Route::get('/ticket/{slug?}/edit','TicketsController@edit');

Route::post('/ticket/{slug?}/edit','TicketsController@update');

Route::post('/ticket/{slug?}/delete','TicketsController@destroy');

Route::get('/about', function()
{
	//return 'This is our about page';
	return View::make('about');
}); 

Route::get('sendemail', function () {
	$data = array(
		'name' => "Ticket notification",
	);
	Mail::send('emails.welcome', $data, function ($message) {
		$message->from('tswinyane@gmail.com', 'Ticket notification');
		$message->to('tswinyane@gmail.com')->subject('New Ticket');
	});
	return "Your email has been sent successfully";
});

Route::post('/comment', 'CommentsController@newComment'); */

//Route::get('/contact', 'PagesController@contact');
Route::get('/about', 'PagesController@about');
Route::get('/', 'PagesController@home');


//Route::group(['middleware' => ['web']], function () {
	//
	
//});

Route::get('/contact', 'TicketsController@create');
Route::post('/contact', 'TicketsController@store');
Route::get('/tickets', 'TicketsController@viewtickets');
Route::get('/viewticket/{slug?}', 'TicketsController@viewticketsingle');
Route::get('/ticket/{slug?}', 'TicketsController@show');
Route::get('/ticket/{slug?}/edit','TicketsController@edit');
Route::post('/ticket/{slug?}/edit','TicketsController@update');
Route::post('/ticket/{slug?}/delete','TicketsController@destroy');
Route::post('/comment', 'CommentsController@newComment');
Route::get('users/register', 'Auth\AuthController@getRegister');
Route::post('users/register', 'Auth\AuthController@postRegister');
Route::get('users/logout', 'Auth\AuthController@getLogout');
Route::get('users/login', 'Auth\AuthController@getLogin');
Route::post('users/login', 'Auth\AuthController@postLogin');

Route::get('/master', function()
{
	//return 'This is our contact page';
	return View::make('master');

});



