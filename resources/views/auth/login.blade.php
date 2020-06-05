@extends('layouts.app')

@section('content');
       
<link rel="stylesheet" type="text/css" href="{{asset('public/frontend/styles/contact_styles.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('public/frontend/styles/contact_responsive.css')}}">
 

    <!-- Contact Form -->
<div class="contact_form">
<div class="container">
    <div class="row">
        <div class="col-lg-5 offset-lg-1" 
        style="border: 1px solid grey; padding: 20px; border-radius: 25px;">
            <div class="contact_form_container">
                <div class="contact_form_title text-center">Sign In</div>
                <form action="{{route('login')}}" id="contact_form"
                method="post">
                @csrf
<div class="form-group">
        <label for="exampleInputEmail1">Email or Phone</label>
        <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus placeholder="Email Address">
             
             @error('email')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
             @enderror
     </div>
<div class="form-group">
    <label for="exampleInputEmail1">Password</label>
    <input type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password" placeholder="Password">
      @error('password')
        <span class="invalid-feedback" role="alert">
            <strong>{{ $message }}</strong>
        </span>
        @enderror
   
    </div>
              <div class="contact_form_button">
                <button type="submit" class="btn btn-info">Login </button>
                </div>
            </form>
                 <br><br>
            <a href="{{ route('password.request') }}" class="">I forgot my password</a>
                 <br><br>
                  <button type="submit" class="btn btn-primary btn-block"><i class="fab fa-facebook-square"></i> Login with Facebook </button>
                  <a href="{{ url('/auth/redirect/google') }}" class="btn btn-danger btn-block"><i class="fab fa-google"></i> Login with Google </a>
                </div>
                </div>
                 
<div class="col-lg-5 offset-lg-1" style="border: 1px solid grey; padding: 20px; border-radius: 25px;">
    <div class="contact_form_container">
        <div class="contact_form_title text-center">Sign Up</div>
        <form action="{{route('register')}}" id="contact_form" method="post">
            @csrf
        
    <div class="form-group">
        <label for="exampleInputEmail1">Full Name </label>
        <input type="text" class="form-control @error('name') is-invalid @enderror" name="name"  placeholder="Enter Your full Name"  required="">
        <span class="invalid-feedback" role="alert">
            </span>
      </div>
       <div class="form-group">
        <label for="exampleInputEmail1"> Phone</label>
        <input type="text" class="form-control @error('phone') is-invalid @enderror" name="phone" value=""  placeholder="Enter Your Phone"  required="">
        <span class="invalid-feedback" role="alert">
            </span>
      </div>
       <div class="form-group">
        <label for="exampleInputEmail1">Email</label>
        <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" value=""  placeholder="Enter Your Email"  required="">
        <span class="invalid-feedback" role="alert">
            </span>
      </div>
       <div class="form-group">
        <label for="exampleInputEmail1">password</label>
        <input type="password" class="form-control @error('password') is-invalid @enderror" name="password" value=""  placeholder="Enter Your password"  required="">
        <span class="invalid-feedback" role="alert">
            </span>
      </div>

   <div class="form-group">
        <label for="exampleInputEmail1">Confirm password</label>
        <input type="password" class="form-control" name="password_confirmation" value=""  placeholder="Re Type  password"  required="">
        <span class="invalid-feedback" role="alert">
            </span>
      </div>
            <div class="contact_form_button">
            <button type="submit" class="btn btn-info">Sign up</button>
            </div>
            </form>

                </div>
                </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel"></div>
    </div>

    <!-- Map -->

    <div class="contact_map">
        <div id="google_map" class="google_map">
            <div class="map_container">
                <div id="map"></div>
            </div>
        </div>
    </div>

@endsection
