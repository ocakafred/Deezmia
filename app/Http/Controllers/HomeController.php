<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    //home page

    public function home()
    {
        return view('home');
    }
    /**
     * About us
     */
    public function about()
    {
        return view('about',[
            'title' => 'About us'
        ]);
    }
    /**
     * services page
     */
    public function services()
    {
        return view('services',[
            'title' => 'Services'
        ]);
    }
    /**
     * Contact us
     */
    public function contact()
    {
        return view('contact',[
            'title' => 'Contact us'
        ]);
    }
    
}
