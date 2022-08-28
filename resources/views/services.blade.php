@extends('partial.master')
@section('content')
@include('partial.title')


    
    <!--====== FEATURES 3 ITEM PART START ======-->

    {{-- <section class="features-3-item-area pb-130 pt-120">
        <div class="container">
           <div class="row">
               <div class="col-lg-5">
                   <div class="features-item-title">
                       <span>Our Products</span>
                       <h3 class="title">Explore  What We do</h3>
                   </div>
               </div>
               <div class="col-lg-7">
                   <div class="features-item-text">
                       <p> We put in place sustainable and good agricultural and animal husbandry practices  with the ultimate aim of being a commercially sustainable agricultural venture that, not only provides high quality produce, but is also a source of learnings for the community at large.</p>
                       <a href="{{ route('about')}}">continue reading</a>
                   </div>
               </div>
           </div>
            <div class="row">
                <div class="col-lg-4 col-md-7 col-sm-9">
                    <div class="features-items">
                        <div class="item mt-30">
                            <i class="flaticon-agriculture"></i>
                            <h4 class="title">Organic Food</h4>
                            <p>Quis nostrum exercitationem ullam corpore suscipit laboriosam</p>
                            {{-- <a href="#">read more</a> --}}
                        {{-- </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-7 col-sm-9">
                    <div class="features-items">
                        <div class="item mt-30">
                            <i class="flaticon-agriculture-1"></i>
                            <h4 class="title">Biology Safety</h4>
                            <p>Quis nostrum exercitationem ullam corpore suscipit laboriosam</p>
                            <a href="#">read more</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-7 col-sm-9">
                    <div class="features-items">
                        <div class="item mt-30">
                            <i class="flaticon-fruit"></i>
                            <h4 class="title">Fresh Vegetables</h4>
                            <p>Quis nostrum exercitationem ullam corpore suscipit laboriosam</p>
                            <a href="#">read more</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>  --}}

    <!--====== FEATURES 3 ITEM PART ENDS ======-->
    
    <!--====== ABOUT US PART START ======-->

    {{-- <section class="about-us-3-area pb-130">
        <div class="container">
            <div class="row justify-content-end">
                <div class="col-lg-6 col-md-8">
                    <div class="about-us-content">
                        <span>About Us</span>
                        <h3 class="title">We Are Best Award Winning Farms</h3>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptate santiu doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explibo. Nemo enim ipsam voluptatem quia voluptas </p>
                        <ul>
                            <li><i class="far fa-check-circle"></i> How To Create Native Cross-Platform Apps With Fuse</li>
                            <li><i class="far fa-check-circle"></i> Web Development Reading List IPFS Wikipedia New Webpack</li>
                            <li><i class="far fa-check-circle"></i> Intrusive Interstitials Guidelines To Avoiding Google's Penalty</li>
                        </ul>
                        <a class="main-btn" href="#">learn more <i class="far fa-plus"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="about-shape text-right">
            <img src="assets/images/shape/shape-5.png" alt="shape">
        </div>
    </section> --}}

    <!--====== ABOUT US PART ENDS ======-->
    
    <!--====== WHAT WE DO PART START ======-->

    <section class="what-we-do-area">
        <div class="container position-relative">
            <div class="row justify-content-center">
                <div class="col-lg-7 col-md-8">
                    <div class="section-title text-center">
                        <span>What We Do</span>
                        <h3 class="title">Explore what we do</h3>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-4 col-md-6 col-sm-8">
                    <div class="what-we-do-item text-center mt-30">
                        {{-- <i class="flaticon-salad"></i> --}}
                        <h4 class="title">Cropping</h4>
                        <p> We deal in organic crops with quality being one of our main values. The main crops  we plant seasonally include  Beans, Maize, Soya Beans, Rice,   and Cassava</p>
                        {{-- <a href="#">read more</a> --}}
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-8">
                    <div class="what-we-do-item text-center mt-30">
                        {{-- <i class="fi fi-rs-user"></i> --}}
                        <h4 class="title">Fish Farming</h4>
                        <p>At Deezmia, we produce high quality organic fish using sustainable and environmentally friendly methods. We hatchery department which include fingerlings. </p>
                        {{-- <a href="#">read more</a> --}}
                    </div>
                </div>
                {{-- <div class="col-lg-4 col-md-6 col-sm-8">
                    <div class="what-we-do-item text-center mt-30">
                        <i class="flaticon-sprout"></i>
                        <h4 class="title">Plan Designing</h4>
                        <p>But I must explain to you how all this mistaken idea denouncing pleasure and praising pain was born give</p> --}}
                        {{-- <a href="#">read more</a> --}}
                    {{-- </div>
                </div> --}}
                <div class="col-lg-4 col-md-6 col-sm-8">
                    <div class="what-we-do-item text-center mt-30">
                        {{-- <i class="flaticon-lemon"></i> --}}
                        <h4 class="title">Piggery</h4>
                        <p>We have high quality breed of pigs to serve   the market needs. 
                            We are constantly pushing to expand our operations to meet the growing nutritional
                             needs of our people </p>
                        {{-- <a href="#">read more</a> --}}
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-8">
                    <div class="what-we-do-item text-center mt-30">
                        {{-- <i class="flaticon-mushroom"></i> --}}
                        <h4 class="title">Forestry( Cashew) </h4>
                        <p>We have invested heavily in Cashew nut farming.  Please contact us for more details.</p>
                        {{-- <a href="#">read more</a> --}}
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-8">
                    <div class="what-we-do-item text-center mt-30">
                        {{-- <i class="flaticon-food-1"></i> --}}
                        <h4 class="title">Apiary </h4>
                        <p>Our  key focus to produce high quality and affordable  honey both national and international market</p>
                        {{-- <a href="#">read more</a> --}}
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--====== WHAT WE DO PART ENDS ======-->
    
    <!--====== COUNTER 3 PART START ======-->

    {{-- <section class="features-area features-content-3-area counter-about pb-130">
        <div class="features-counter-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="features-counter mt-30">
                            <span>Team Member</span>
                            <h3 class="title counter">3698</h3>
                            <i class="far fa-users"></i>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="features-counter item-2 mt-30">
                            <span>Our Farms</span>
                            <h3 class="title counter">8965</h3>
                            <i class="far fa-leaf"></i>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="features-counter item-3 mt-30">
                            <span>Win Awards</span>
                            <h3 class="title counter">6579</h3>
                            <i class="far fa-trophy-alt"></i>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="features-counter item-4 mt-30">
                            <span>Gold Partners</span>
                            <h3 class="title counter">59632</h3>
                            <i class="far fa-coffee"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> --}}

    <!--====== COUNTER 3 PART ENDS ======-->
    
    <!--====== GALLERY PART START ======-->

    <section class="gallery-area gallery-3-area">
        <div class="container">
            <div class="row justify-content-start">
                <div class="col-lg-6 col-md-8 col-sm-9">
                    <div class="section-title text-left">
                        <span>Our Gallery</span>
                        <h3 class="title">Our Latest Products</h3>
                    </div>
                </div>
            </div>
            <div class="row gallery-active">
                <div class="col-lg-4">
                    <div class="gallery-box mt-30">
                        <img src="{{ asset('assets/images/img/11.jpeg')}}" alt="gallery">
                        <div class="gallery-overlay d-flex justify-content-center align-items-end">
                            <div class="item text-center">
                                <h5 class="title">Crop Farming</h5>
                                <span> Organic Crop</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="gallery-box mt-30">
                        <img src="{{ asset('assets/images/banner3.jpg')}}" alt="gallery">
                        <div class="gallery-overlay d-flex justify-content-center align-items-end">
                            <div class="item text-center">
                                <h5 class="title">Fish Farming</h5>
                                <span> Fingerlings</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="gallery-box mt-30">
                        <img src="{{ asset('assets/images/banner2.jpg')}}" alt="gallery">
                        <div class="gallery-overlay d-flex justify-content-center align-items-end">
                            <div class="item text-center">
                                <h5 class="title">Piggery</h5>
                                <span>Quality breed </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="gallery-box mt-30">
                        <img src="{{ asset('assets/images/banner1.jpg')}}" alt="gallery">
                        <div class="gallery-overlay d-flex justify-content-center align-items-end">
                            <div class="item text-center">
                                <h5 class="title">Cropping</h5>
                                <span>Organic </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--====== GALLERY PART ENDS ======-->
    
    <!--====== BLOG PART START ======-->
{{--     
    <section class="blog-area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-7 col-md-8">
                    <div class="section-title text-center">
                        <span>News & Blog</span>
                        <h3 class="title">Something Know About Health Articles</h3>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-4 col-md-7 col-sm-9">
                    <div class="blog-item active mt-40">
                        <span><i class="far fa-calendar-alt"></i> 20 Feb 2020</span>
                        <h4 class="title">Things To Keep In  See Mind When Sign Transportation Map Weather Ways</h4>
                        <a href="#">read more</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-7 col-sm-9">
                    <div class="blog-item mt-70">
                        <span><i class="far fa-calendar-alt"></i> 20 Feb 2020</span>
                        <h4 class="title">Web Development Reading Real World Accessibilit Flexbox Madnes  Dhings</h4>
                        <a href="#">read more</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-7 col-sm-9">
                    <div class="blog-item mt-30">
                        <span><i class="far fa-calendar-alt"></i> 20 Feb 2020</span>
                        <h4 class="title">As Far As The Eye Can See Colorfules Sceneries, Posters And Covers Assis</h4>
                        <a href="#">read more</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="shape-1">
            <img src="assets/images/shape/shape-3.png" alt="">
        </div>
        <div class="shape-2">
            <img src="assets/images/shape/shape-4.png" alt="">
        </div>
    </section> --}}

    <!--====== BLOG PART ENDS ======-->
    
    <!--====== BRAND PART START ======-->

    {{-- <div class="brand-area pb-130 pt-130">
        <div class="container">
            <div class="row brand-active">
                <div class="col-lg-2">
                    <div class="brand-item text-center">
                        <img src="assets/images/brand-1.png" alt="brand">
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="brand-item text-center">
                        <img src="assets/images/brand-2.png" alt="brand">
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="brand-item text-center">
                        <img src="assets/images/brand-3.png" alt="brand">
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="brand-item text-center">
                        <img src="assets/images/brand-4.png" alt="brand">
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="brand-item text-center">
                        <img src="assets/images/brand-5.png" alt="brand">
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="brand-item text-center">
                        <img src="assets/images/brand-6.png" alt="brand">
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="brand-item text-center">
                        <img src="assets/images/brand-2.png" alt="brand">
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="brand-item text-center">
                        <img src="assets/images/brand-3.png" alt="brand">
                    </div>
                </div>
            </div>
        </div>
    </div> --}}

    <!--====== BRAND PART ENDS ======-->

    <!--====== QUESTIONS PART START ======-->

    {{-- <div class="questions-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="questions-box">
                        <div class="row justify-content-end">
                            <div class="col-lg-8">
                                <div class="questions-box-item">
                                    <div class="item">
                                        <h3 class="title"><span>Have Any Questions ?</span> Call Us +012 (345) 678 99</h3>
                                        <p>Web Development Reading List Tor 7, Designing Depth,</p>
                                        <i class="far fa-phone"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> --}}

    <!--====== QUESTIONS PART ENDS ======-->

    
       
@endsection