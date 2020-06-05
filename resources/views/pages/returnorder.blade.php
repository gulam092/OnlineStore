@extends('layouts.app')
@section('content')
<!-- content wrpper -->
@php
$order = DB::table('orders')->where('user_id',Auth::id())
            ->orderBy('id','DESC')->limit(10)->get();
@endphp 


<div class="contact_form">
  <div class="container"> 
    <div class="row">
      <div class="col-8 card">
        <table class="table table-response">
          <thead>
            <tr>
              <th scope="col">Payment Type </th>
              <th scope="col">Return</th>
              <th scope="col">Amount </th>
              <th scope="col">Date </th>
              <th scope="col">Status</th>
           
              <th scope="col">Action </th>

            </tr>
          </thead>
          <tbody>
            @foreach($order  as $row)
            <tr>
               <td scope="col">{{$row->payment_type}} </td>
              <td scope="col">
                 @if($row->return_order == 0)
          <span class="badge badge-warning">No request</span>
          @elseif($row->status == 1)
          <span class="badge badge-info">Pendding</span>
            @elseif($row->status == 2)
            <span class="badge badge-warning">Success</span>
            @elseif($row->status == 3)
          

          @endif 
              </td>
              <td scope="col">{{$row->total  }}</td>
              <td scope="col">{{$row->date }}</td>
              <td scope="col">
            @if($row->status == 0)
          <span class="badge badge-warning">Pending</span>
          @elseif($row->status == 1)
          <span class="badge badge-info">Payment Accept</span>
            @elseif($row->status == 2)
            <span class="badge badge-warning">Progress</span>
            @elseif($row->status == 3)
            <span class="badge badge-success">Delevered</span>
            @else
            <span class="badge badge-danger">Cancle</span>

          @endif  
              </td>
            
             
              <td scope="col">
        @if($row->return_order == 0)
        <a href="{{url('request/return/'.$row->id)}}" class="btn btn-sm btn-danger" id ="return">Return</a>
          <span class="badge badge-warning">No request</span>
          @elseif($row->status == 1)
          <span class="badge badge-info">Pendding</span>
            @elseif($row->status == 2)
            <span class="badge badge-warning">Success</span>
            @elseif($row->status == 3)
          

          @endif 
                
              </td>
            </tr>
              @endforeach
          </tbody>
        </table>
      </div>
       <div class="col-4">
        <div class="card">
          <img src="{{ asset('public/frontend/images/shopping_cart.jpg') }}" class="card-img-top" style="height: 100px; width: 100px; margin-left: 34%;">
           <div class="card-body">
            <h5 class="card-title text-center">{{ Auth::user()->name }}</h5>
         </div>
        <ul class="list-group list-group-flush">
           <li class="list-group-item"> <a href="{{ route('password.change') }}">Change Password</a></li>
           <li class="list-group-item">Edit Profile</li>
           <li class="list-group-item"><a href="{{route('success.orderList')}}"> Return Order</a> </li> 
      </ul>
          <div class="card-body">
            <a href="{{ route('user.logout') }}" class="btn btn-danger btn-sm btn-block">Logout</a>
          </div>

        </div>
      </div>
    </div>
  </div>
</div>


@endsection
