<?php

namespace App\Http\Controllers\laozi_project;


use App\Http\Models\RegModel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Models\LoginModel;
use http\Client\Curl\Users;

class LoginController extends Controller
{
    public function Login()
    {
    //渲染登录页面
        return view('laozi_project.user.login');
    }

    /**验证登录
     *
     * author 朱阳升 2020 10-26
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */

    public function LoginCheck(Request $request)
    {
        $res = $request->input();

        $where = [
            'laozi_username' => $res['username'],
            'laozi_password' => $res['password']
        ];

        $data = LoginModel::where($where)->get();
        $id=($data[0]->id);
        if(!$data->isEmpty()){
            //登录成功存入session
            //存username
            $request->session()->put('username',$res['username']);
            //存id
            $request->session()->put('id',$id);
            $arr = [
                'code' => 0,
                'msg' => '登录成功',
                'data' => "/laozi/Index"
            ];
            return response()->json($arr);
        }else{
            $arr = [
                'code' => 1,
                'msg' => '登录失败',
                'data' => ""
            ];
            return response()->json($arr);
        }
        //code ==1 true  为0 false

    }

    /**author 朱阳升 2020.10-26
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     *
     *
     *登出
     */
    public function LoginOut(Request $request)
    {
        //登出清除session
        $request->session()->forget('username');

        //渲染等出页面
        return view('laozi_project.user.login');
    }


    //注册
    public function register(){
        return view('laozi_project.user.reg');
    }
    //注册验证
    public function regCheck(Request $request)
    {


        $res = $request->input();
        $phone = [
            'laozi_username' => $res['nickname']
        ];
        $username = [
            'laozi_phone' => $res['cellphone']
        ];
        //ip地址
        $ip = $_SERVER["REMOTE_ADDR"];
        //登录时间
        $time = date('Y-m-d H-i-s', time());

        $add = [
            'laozi_username' => $res['nickname'],
            'laozi_phone' => $res['cellphone'],
            'laozi_password' => $res['password'],
            'laozi_ip' => $ip,
            'laozi_logintime' => $time
        ];

        $data = RegModel::where($phone,$username)->get();

        if ($data->isEmpty()) {
            //add
            $user = RegModel::create($add);
            $arr = [
                'code' => 0,
                'msg' => '注册成功,前往登录',
                'data' => "/laozi/login"
            ];
            return response()->json($arr);
        } else {
            $arr = [
                'code' => 1,
                'msg' => '该用户名或手机号已存在',
                'data' => ""
            ];
            return response()->json($arr);
        }
    }

}
