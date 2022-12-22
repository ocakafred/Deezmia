<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Page;
use App\Models\Category;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    //home page

    public function home()
    {
        $posts = Post::where('category_id','=',3)->get();
        return view('home',[
            'posts' => $posts,
        ]);
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
        $page= Page::find(4);
        $posts = Post::where('category_id','=',3)->get();
        return view('services',[
            'title' => $page->title,
            'page' => $page,
            'posts' => $posts
        ]);
    }
    /**
     * Contact us
     */
    public function contact()
    {
        $page= Page::find(5);
        return view('contact',[
            'title' => 'Contact us',
            'page' => $page
        ]);
    }
    
}
