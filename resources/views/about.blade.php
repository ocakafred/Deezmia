@extends('partial.master')
@section('content')
@include('partial.title')

   
    <!--====== ABOUT INFO PART START ======-->
    
    <section class="about-info-area pt-130 pb-130">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="about-info-thumb ml-30 mr-30">
                        <img src="{{ asset('assets/images/img/07.jpeg')}}" alt="about">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="about-info-content">
                        <span>About Us</span>
                        <h3 class="title">We Are Best For Your Foods Partners</h3>
                        <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney Col-lege in Virginia, looked up one of the more obscure Latin words, consecte-tur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>
                        <p class="text">Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum </p>
                        <div class="info">
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--====== ABOUT INFO PART ENDS ======-->

    
    <!--====== FARMERS PART START ======-->

    <section class="farmers-area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-8">
                    <div class="section-title text-center">
                        <span>Porfolio</span>
                        <h3 class="title">Meet Our Honorable Hard Workers</h3>
                    </div>
                </div>
            </div>
            <div class="row farmers-active">
                <div class="col-lg-3">
                    <div class="farmers-item mt-30">
                        <img src="{{ asset('assets/images/img/01.jpeg')}}" alt="farmers">
                        <div class="farmers-overlay">
                            <div class="item">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="farmers-item mt-30">
                        <img src="{{ asset('assets/images/img/07.jpeg')}}" alt="farmers">
                        <div class="farmers-overlay">
                            <div class="item">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="farmers-item mt-30">
                        <img src="{{ asset('assets/images/img/02.jpeg')}}" alt="farmers">
                        <div class="farmers-overlay">
                            <div class="item">
                              
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="farmers-item mt-30">
                        <img src="{{ asset('assets/images/img/04.jpeg')}}" alt="farmers">
                        <div class="farmers-overlay">
                            <div class="item">
                              
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="farmers-item mt-30">
                        <img src="{{ asset('assets/images/img/03.jpeg')}}" alt="farmers">
                        <div class="farmers-overlay">
                            <div class="item">
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--====== FARMERS PART ENDS ======-->
    
   

@endsection