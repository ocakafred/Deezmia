@extends('partial.master')
@section('content')
@include('partial.title')


    <!--====== ABOUT INFO PART START ======-->
    
    <section class="about-info-area pt-130 pb-130">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="about-info-thumb ml-30 mr-30">
                        <img src="{{ asset('storage/'.$page->image)}}" alt="about">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="about-info-content">
                        <span>{{$page->title }}</span>
                        <h3 class="title">We Are Best For Agro Partners</h3>
                
                      {!! $page->body !!}

                    {{-- <h6>Background </h6>.
                    <p>The farm was birthed during Covid in 2020 through prayer;  we decided as a couple that we needed a retirement plan especially after the Pandemic affected all streams of income. 
                    The farm was purchased in June 2020; then registered as a business a year later in June 2021. The Farm is called Deemzia Agro import and Export Limited. 
                    The rationale for Deemzia Agro Limited is to be a commercially viable and sustainable farming enterprise with emphasis on farming and  fisheries. Furthermore, its medium to long term goal is to ensure that these sustainable practices are transplanted, via learnings, to the community at large and more specifically, upcoming agricultural scholars.
                    </p>

                   <h6> Mission</h6>
                   <p>
                        To encourage community involvement through good skilful agricultural practices
                   </p>

                    <h6>Vision</h6>
                    <p>
                        To put in place sustainable and good agricultural and animal husbandry practices in Deemzia Agro Limited with the ultimate aim of being a commercially sustainable agricultural venture that, not only provides high quality produce, but is also a source of learnings for the community at large.
                    </p>

                <h6>Core Values</h6>
                <ol class="list-unstyled"> 
                    <li>Innovation - Using technology to work smarter, faster and more efficiently.</li>
                    <li>Creativity-coming up with new ideas on how to maximise available resources.</li>
                    <li>Sustainability- Good agricultural practices with a green foot print for future generations to come.</li>
                    <li>Fairness - A mutually beneficial and respectful work environment regardless of gender, background or race.</li>
                    <li>Hard work- Your work will provide for your needs;you will be happy and prosperous.
                        (Psalm 128:2)
                                        </li>
                </ol> 





        </p> --}}
                       
                        <div class="info">
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--====== ABOUT INFO PART ENDS ======-->

    
    <!--====== FARMERS PART START ======-->

    {{-- <section class="farmers-area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-8">
                    <div class="section-title text-center">
                        <span>Porfolio</span>
                        <h3 class="title">Our Gallery</h3>
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
    </section> --}}

    <!--====== FARMERS PART ENDS ======-->
    
   

@endsection