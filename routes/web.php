<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
// NAME OF THE APPLICATION
app()->bind('NAME', function() {
	return "All Expo";
});

//visitor routes
Route::get('/', 'PagesController@home');
Route::get('/contact', 'PagesController@contact');
Route::post('/contact', 'PagesController@getFeedback');
Route::get('/payment', 'PagesController@payment');
Route::get('/shipping', 'PagesController@shipping');
Route::get('/product/{name}', 'PagesController@product');
Route::get('/mango', 'PagesController@mango');
Route::get('/mango/{id}', 'PagesController@mangoView');
Route::get('/rice', 'PagesController@rice');

//admin routes
Auth::routes();

Route::get('/admin', 'AdminController@index')->name('admin'); //admin dashboard

Route::get('/admin/mango', 'ProductsController@listMango');
Route::get('/admin/mango/add', 'ProductsController@showAddMango');
Route::post('/admin/mango/add', 'ProductsController@addMango');
Route::get('/admin/mango/{id}/edit', 'ProductsController@showEditMango');
Route::post('/admin/mango/{id}/edit', 'ProductsController@editMango');

Route::get('/admin/rice', 'ProductsController@listRice');
Route::get('/admin/rice/add', 'ProductsController@showAddRice');
Route::post('/admin/rice/add', 'ProductsController@addRice');
Route::get('/admin/rice/{id}/edit', 'ProductsController@showEditRice');
Route::post('/admin/rice/{id}/edit', 'ProductsController@editRice');

Route::get('/admin/other', 'ProductsController@listOther');
Route::get('/admin/other/add', 'ProductsController@showAddOther');
Route::post('/admin/other/add', 'ProductsController@addOther');
Route::get('/admin/other/{id}/edit', 'ProductsController@showEditOther');
Route::post('/admin/other/{id}/edit', 'ProductsController@editOther');

Route::get('/admin/delete', 'ProductsController@delete'); //product deletion route
Route::get('/admin/visitors', 'AdminController@listVisitors')->name('visitors');
Route::post('/admin/visitors', 'AdminController@modifyVisitors');

Route::get('/admin/messages', 'AdminController@messages');
Route::post('/admin/messages', 'AdminController@modifyMessages');

Route::get('/admin/settings', 'AdminController@showSettings');
Route::post('admin/settings', 'AdminController@editSettings');
//Route::get('/home', 'HomeController@index')->name('home');
