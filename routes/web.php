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

Route::get('/', function () {
    return view('welcome');
});
//layuiadmin 主页
Route::get('/laozi/Index','laozi_project\IndexController@Index')->Middleware('session');
//控制台
Route::get('/laozi/console','laozi_project\IndexController@console')->Middleware('session');
//主页一
Route::get('/laozi/homepage1','laozi_project\IndexController@homepage1')->Middleware('session');
//主页二
Route::get('/laozi/homepage2','laozi_project\IndexController@homepage2');


//登录
Route::get('/laozi/login','laozi_project\LoginController@Login');
//验证登录
Route::any('/laozi/LoginCheck','laozi_project\LoginController@LoginCheck');
//登出
Route::get('/laozi/loginOut','laozi_project\LoginController@LoginOut');
//个人信息
Route::get('/laozi/info','laozi_project\IndexController@info');
//修改密码
Route::any('/laozi/password','laozi_project\IndexController@password');
//修改密码逻辑处理
Route::any('/laozi/checkPassword','laozi_project\IndexController@checkPassword');

//注册
Route::get('/laozi/reg','laozi_project\LoginController@register');
//验证注册
Route::get('/laozi/regCk','laozi_project\LoginController@regCheck');

//个人主页
Route::get('/laozi/personalpage','laozi_project\PageController@personalpage')->Middleware('session');

//通迅录
Route::get('/laozi/addresslist','laozi_project\PageController@addresslist');
