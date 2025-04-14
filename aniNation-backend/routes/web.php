<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/
// for MAMP localhost:8889/lumen/public/
$router->get('/', function () use ($router) {
    return $router->app->version();
});
// Base Routes
// returns the version of the Lumen framework

// Routes for Movies Controller
$router->get('/movies', 'MovieController@getAll');
$router->get('/movies/{id}', 'MovieController@getOne');
$router->post('/movies/add', 'MovieController@save');
$router->post('/movies/edit/{id}', 'MovieController@update');
$router->delete('/movies/delete/{id}', 'MovieController@delete');

// Routes for Commentss Controller
$router->get('/comments', 'CommentController@getAll');
$router->get('/comments/{id}', 'CommentController@getOne');
$router->post('/comments/add', 'CommentController@save');
$router->post('/comments/edit/{id}', 'CommentController@update');
$router->delete('/comments/delete/{id}', 'CommentController@delete');
