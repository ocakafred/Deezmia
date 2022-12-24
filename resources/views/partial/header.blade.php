<!doctype html>
<html lang="en">

<head>

    <!--====== Required meta tags ======-->
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!--====== Title ======-->
    <title>Deezmia - Agro Import and Export Limited- Uganda</title>

    <!--====== Favicon Icon ======-->
    <link rel="shortcut icon" href="{{ asset('assets/images/favicon.ico')}}" type="image/png">

    <!--====== Bootstrap css ======-->
    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.min.css')}}">

    <!--====== Fontawesome css ======-->
    <link rel="stylesheet" href="{{ asset('assets/css/all.css')}}">

    <!--====== flaticon css ======-->
    <link rel="stylesheet" href="{{ asset('assets/css/flaticon.css')}}">

    <!--====== Line Icons css ======-->
    <link rel="stylesheet" href="{{ asset('assets/css/LineIcons.css')}}">

    <!--====== animate css ======-->
    <link rel="stylesheet" href="{{ asset('assets/css/animate.min.css')}}">

    <!--====== Magnific Popup css ======-->
    <link rel="stylesheet" href="{{ asset('assets/css/magnific-popup.css')}}">

    <!--====== Slick css ======-->
    <link rel="stylesheet" href="{{ asset('assets/css/slick.css')}}">

    <!--====== Default css ======-->
    <link rel="stylesheet" href="{{ asset('assets/css/default.css')}}">

    <!--====== Style css ======-->
    <link rel="stylesheet" href="{{ asset('assets/css/style.css')}}">

      <!--====== Style css ======-->
      <link rel="stylesheet" href="{{ asset('assets/css/custom.css')}}">


</head>

<body>

    <!--====== PRELOADER PART START ======-->
    
    <div id="loading">
        <div id="loading-center">
            <div id="loading-center-absolute">
                <div class="object" id="object_one"></div>
                <div class="object" id="object_two"></div>
                <div class="object" id="object_three"></div>
                <div class="object" id="object_four"></div>
            </div>
        </div>
    </div>

    <!--====== PRELOADER PART ENDS ======-->

    <!--====== SEARCH BOX PART START ======-->
    
    <div class="search-overlay">
        <div class="d-table">
            <div class="d-table-cell">
                <div class="search-overlay-layer"></div>
                <div class="search-overlay-layer"></div>
                <div class="search-overlay-layer"></div>
                
                <div class="search-overlay-close">
                    <span class="search-overlay-close-line"></span>
                    <span class="search-overlay-close-line"></span>
                </div>

                <div class="search-overlay-form">
                    <form>
                        <input type="text" class="input-search" placeholder="Search here...">
                        <button type="submit"><i class='far fa-search'></i></button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!--====== SEARCH BOX PART ENDS ======-->

    <!--====== Sidebar Modal PART START ======-->

    <div class="sidebar-modal">  
        <div class="modal right fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">
                                <i class="far fa-times"></i>
                            </span>
                        </button>
                        <h2 class="modal-title" id="myModalLabel2">
                            <a href="{{ route('home')}}">
                                {{-- <img src="{{ asset('assets/images/logo-2.png" alt="Logo"> --}}
                                Deezmia
                            </a>
                        </h2>
                    </div>
                    <div class="modal-body">
                        <div class="sidebar-modal-widget">
                            <h3 class="title">About Us</h3>
                            <p>{!!  \Str::limit($about_page->body,500) !!}</p>
                        </div>
                        <div class="sidebar-modal-widget">
                            {{-- <h3 class="title">Additional Links</h3>
                            <ul>
                                <li>
                                    <a href="log-in.html">Log In</a>
                                </li>
                                <li>
                                    <a href="sign-up.html">Sign Up</a>
                                </li>
                                <li>
                                    <a href="faq.html">FAQ</a>
                                </li>
                                <li>
                                    <a href="#">Logout</a>
                                </li>
                            </ul> --}}
                        </div>
                        <div class="sidebar-modal-widget">
                            <h3 class="title">Contact Info</h3>
                            <ul class="contact-info">
                                <li>
                                    <i class="far fa-map-marker-alt"></i>
                                    Address
                                    <span>{{ $header_contact->excerpt}}</span>
           
                                </li>
                                <li>
                                    {{-- <i class="far fa-envelope"></i>
                                    Email
                                    <span>deezmiaagrofarms2021@gmail.com</span> --}}
                                    {!! $header_contact->body !!}
                                </li>
                                {{-- <li>
                                    <i class="far fa-phone"></i>
                                    Phone
                                    <span>+256-781-444470</span>
                                </li> --}}
                            </ul>
                        </div>
                        {{-- <div class="sidebar-modal-widget"> --}}
                            {{-- <h3 class="title">Connect With Us</h3> --}}
                            {{-- <ul class="social-list">
                                <li>
                                    <a href="#">
                                        <i class='fab fa-facebook-f'></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class='fab fa-twitter'></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class='fab fa-instagram'></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class='fab fa-google-plus-g'></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class='fab fa-linkedin-in'></i>
                                    </a>
                                </li>
                            </ul> --}}
                        {{-- </div> --}}
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--====== Sidebar Modal PART START ======-->

    <!--====== HEADER PART START ======-->

    <header class="header-area">
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="header-top-content d-flex justify-content-between align-items-center">
                            <div class="header-top-text">
                                <p><i class="far fa-leaf"></i> Agro Import and Export Limited</p>
                            </div>
                            <div class="header-top-btns d-lg-flex align-items-center d-none">
                                {{-- <ul>
                                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                    <li><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
                                </ul> --}}
                                {{-- <a href="#">singin <i class="far fa-plus"></i></a> --}}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-info">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="header-info-item">
                            <div class="logo">
                                <a href="">
                                    {{-- <img src="{{ asset('assets/images/logo.png" alt="logo"> --}}
                                    <h1 style="color:bisque">Deezmia</h1> 
                                </a>
                                
                            </div>
                            <div class="header-info d-lg-flex d-none">
                                {!! $header_contact->body !!}
                            </div>
                            <div class="header-flag d-none d-sm-block">
                                {{-- <ul class="flag-wrap">
                                    <li class="flag-item-top">
                                        <a href="#" class="flag-bar d-flex align-items-center">
                                            <img src="{{ asset('assets/images/flag.png" alt="Image">
                                            <span>Eng <i class="far fa-angle-down"></i></span>
                                        </a>
                                        <ul class="flag-item-bottom">
                                            <li class="flag-item">
                                                <a href="#" class="flag-link">
                                                    <img src="{{ asset('assets/images/flag-1.png" alt="Image">
                                                    United Kingdom 
                                                </a>
                                            </li>
                                        
                                            <li class="flag-item">
                                                <a href="#" class="flag-link">
                                                    <img src="{{ asset('assets/images/flag-6.png" alt="Image">
                                                    New Zealand
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul> --}}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-menu">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="navigation ">
                            <nav class="navbar navbar-expand-lg">
                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarFive" aria-controls="navbarFive" aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="toggler-icon"></span>
                                    <span class="toggler-icon"></span>
                                    <span class="toggler-icon"></span>
                                </button> <!-- navbar toggler -->
                                <div class="collapse navbar-collapse sub-menu-bar" id="navbarFive">
                                    <ul class="navbar-nav mr-auto">
                                        
                                        <li class="nav-item active">
                                            <a class="page-scroll" href="{{ route('home')}}">Home</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="page-scroll" href="{{ route('about')}}">About Us</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="page-scroll" href="{{ route('services')}}">Things We Do</a>
                                        </li>
                                        {{-- <li class="nav-item">
                                            <a class="page-scroll" href="{{ route('services')}}">Services</a>
                                            <ul class="sub-menu">
                                                <li><a href="our-project.html">Project</a></li>
                                                <li><a href="project-details.html">Project details</a></li>
                                                <li><a href="our-team.html">Team</a></li>
                                                <li><a href="our-gallery.html">Gallery</a></li>
                                            </ul>
                                        </li>
                                         --}}
                                   
                                        <li class="nav-item">
                                            <a class="page-scroll" href="{{ route('contact')}}">Contact</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="navbar-btns">
                                    <ul>
                                        {{-- <li><a class="search-box" href="#"><i class="fal fa-search"></i></a></li> --}}
                                        <li><a class="d-none d-lg-inline" href="#myModal2" data-toggle="modal"><i class="fal fa-bars"></i></a></li>
                                    </ul>
                                </div>
                            </nav> <!-- navbar -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!--====== HEADER PART ENDS ======-->