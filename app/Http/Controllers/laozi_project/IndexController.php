<?php

namespace App\Http\Controllers\laozi_project;

use Cassandra\Index;
use http\Env\Response;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Models\LoginModel;
use App\Http\Models\IndexModel;

class IndexController extends Controller
{
    //主页
    public function Index(){
        $username = session('username');

        return view('laozi_project.index',compact('username',$username));
    }

    /**
     * @author Zys
     * time 2020 10 16 pm 4:00
     *
     * 渲染控制台
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function console(){
        return view('laozi_project.home.console');
    }

    /**
     * @author Zys
     * time 2020 10 16 pm 4:00
     *
     * 渲染主页一
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     *
     */
    public function homepage1()
    {
        return view('laozi_project.home.homepage1');
    }
    /**
     * @author Zys
     * time 2020 10 16 pm 4:00
     * 渲染主页二
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     *
     */
    public function homepage2()
    {
        return view('laozi_project.home.homepage2');
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     *
     * 2020.10-26
     */
    //基本资料
    public function info()
    {

        $id = session('id');

        $data = LoginModel::find($id)->user_info()->first();


        return view('laozi_project.set.user.info',compact('data',$data));
    }
    //修改密码
    public function checkPassword(Request $request)
    {
        /**\
         *  逻辑
         * 1.先查询原来的密码是否和现在已经修改过的密码相同
         * true
         * 在进行两次密码判断
         * false
         * 直接返回页面报错
         *
         */
        if ($request->method('ajax')) {
            $res = $request->input();



            //判断是否是该账号
            $where = [
                'laozi_username' => session('username')
            ];
            $data = LoginModel::where($where)->first();
            //判断是否是该账号的原密码
			if($res['password']<6 || $res['repassword'] <6 ) {
                $arr = [
                    'code' => 3,
                    'msg' => '新密码或确认密码不能小于6位',
                    'data' => ''
                ];
                return Response()->json($arr);


                //查询该账号

            }else if(($data->laozi_password) != ($res['oldPassword'])){
                $arr =[
                'code' => 0,
                'msg' => '于原来密码不同',
                'data' => ''
            ];
			return Response()->json($arr);


		}else if($res['password'] != $res['repassword']){
					  $arr =[
                'code' => 2,
                'msg' => '两次密码不一样',
                'data' => ''
            ];
			return Response()->json($arr);


		}else if($res['password'] == $res['oldPassword']){
					 $arr =[
                'code' => 4,
                'msg' => '新密码不能于近期密码相同',
                'data' => ''
            ];

			return Response()->json($arr);


            }else{
                $id = session('id');
                //条件
                $where = [
                    'id' => $id
                ];
                //要修改的数据
                $data = [
                    'laozi_password' => $res['repassword']
                ];

                $data = LoginModel::where($where)->update($data);
                if($data == true){
                    $arr =[
                        'code' => 1,
                        'msg' => '修改成功',
                        'data' => '/laozi/Index'
                    ];

                    return Response()->json($arr);
                }
            }
		}
	}





    public function password()
    {
        return view('laozi_project.set.user.password');
    }

}
