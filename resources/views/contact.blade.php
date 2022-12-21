@extends('partial.master')
@section('content')
@include('partial.title')


    <!--====== CONTACT MASSAGE PART START ======-->
    
    {{-- <section class="contact-massage-area pt-130 pb-130">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact-massage">
                        <div class="row justify-content-end">
                            <div class="col-lg-8">
                                <div class="contact-massage-item ml-35">
                                    <form id="contact-form" action="assets/contact.php" method="post">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="massage-title">
                                                    <h3 class="title">Leave A Message</h3>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="input-box item-1 mt-20">
                                                    <input type="text" placeholder="Your Full Name">
                                                    <i class="far fa-user"></i>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="input-box item-2 mt-20">
                                                    <input type="email" placeholder="Your Email">
                                                    <i class="far fa-envelope"></i>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="input-box mt-20">
                                                    <input type="text" placeholder="Your Subject">
                                                    <i class="far fa-edit"></i>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="input-box mt-20">
                                                    <textarea name="#" id="#" cols="30" rows="10" placeholder="Write Message"></textarea>
                                                    <i class="far fa-pen"></i>
                                                    <button type="submit" class="main-btn" href="#">send message <i class="far fa-plus"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <p class="form-message"></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> --}}

    <!--====== CONTACT MASSAGE PART ENDS ======-->

    <!--====== CONTACT INFO PART START ======-->
    {!! $page->body !!}
    
    {{-- <div class="contact-info-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact-info">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="contact-info-item text-center">
                                    <i class="fal fa-map-marked-alt"></i>
                                    <ul>
                                        <li>Lujoro Village, Amuru District</li>
                                        <li>Northern Uganda</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="contact-info-item text-center">
                                    <i class="fal fa-envelope"></i>
                                    <ul>
                                        <li>deezmiaagrofarms2021@gmail.com</li>
                                        <li></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="contact-info-item text-center">
                                    <i class="fal fa-phone"></i>
                                    <ul>
                                        <li>+256-781-444470</li>
                                        <li>+447-931-726700</li>
                                        <li>+447- 932-556164</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d510078.3578440853!2d31.59017728437845!3d2.8198768979459365!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1771c46832a393d7%3A0xc94d69318489d9a0!2sOtwee%20Public%20School!5e0!3m2!1sen!2sug!4v1661675559167!5m2!1sen!2sug" width="600" height="450" style="border:0;" allowfullscreen=""></iframe>
        </div>
    </div> --}}

    <!--====== CONTACT INFO PART ENDS ======-->
@endsection
