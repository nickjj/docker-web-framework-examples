<?php

use Illuminate\HTTP\Response;

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

Route::get('/', function () {
    return "Hello World with APP_ENV=" . App::environment();
});

Route::get('/healthy', function (): Response {
    return response('', 200);
});
