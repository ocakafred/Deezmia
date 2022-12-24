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
        $sliders = Post::where('category_id','=',2)->get();
        $home = Page::find(6);
        $header_contact = Post::find(12);
        $about_page= Page::find(3);
        return view('home',[
            'posts' => $posts,
            'sliders' => $sliders,
            'home' => $home,
            'header_contact' => $header_contact,
            'about_page' => $about_page,
        ]);
    }
    /**
     * About us
     */
    public function about()
    {
      
        $header_contact = Post::find(12);
        $page= Page::find(3);
        
        return view('about',[
            'title' => $page->title,
            'about_page' => $page,
            'header_contact' => $header_contact,
        ]);
    }
    /**
     * services page
     */
    public function services()
    {
        $page= Page::find(4);
        $header_contact = Post::find(12);
        $posts = Post::where('category_id','=',3)->get();
        $about_page= Page::find(3);
        return view('services',[
            'title' => $page->title,
            'page' => $page,
            'posts' => $posts,
            'header_contact' => $header_contact,
            'about_page' => $about_page,
        ]);
    }
    /**
     * Contact us
     */
    public function contact()
    {
        $page= Page::find(5);
        $header_contact = Post::find(12);
        $about_page= Page::find(3);
        return view('contact',[
            'title' => 'Contact us',
            'page' => $page,
            'header_contact' => $header_contact,
            'about_page' => $about_page,
        ]);
    }
    
}
