<?php

namespace App\Http\Controllers\laozi_project;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PageController extends Controller
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * 个人主页
     */
    public function personalpage()
    {
        return view('laozi_project.template.personalpage');
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     *通讯录
     */
    public function addresslist()
    {
        return view('laozi_project.template.addresslist');
    }

}
