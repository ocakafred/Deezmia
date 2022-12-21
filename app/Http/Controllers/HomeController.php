<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Page;
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
      
        $page= Page::find(3);
        return view('about',[
            'title' => $page->title,
            'page' => $page,
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
