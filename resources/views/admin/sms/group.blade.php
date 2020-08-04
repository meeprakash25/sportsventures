@extends('layouts.admin')
@section('styles')
  <style>
    textarea {
      width: 100%;
      margin: 0;
      padding: 10px;
      border-width: 0;
    }
  </style>
@endsection

@section('content')
    <div class="content-area">

        <div class="mr-breadcrumb">
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="heading">{{ __('Group SMS') }}</h4>
                    <ul class="links">
                        <li>
                            <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
                        </li>
                        <li>
                            <a href="javascript:;">{{ __('SMS Settings') }}</a>
                        </li>
                        <li>
                            <a href="{{ route('admin-group-sms-show') }}">{{ __('Group SMS') }}</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="add-product-content1">
            <div class="row">
                <div class="col-lg-12">
                    <div class="product-description">
                        <div class="body-area">
                            <div class="gocover" style="background: url({{asset('assets/images/'.$gs->admin_loader)}}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
                            <form id="geniusform" action="{{route('admin-group-sms-submit')}}" method="POST" enctype="multipart/form-data">

                                @include('includes.admin.form-both')

                                {{csrf_field()}}
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">{{ __('Select User Type') }}*</h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <select name="type" required="">
                                            <option value=""> {{ __('Choose User Type') }} </option>
                                            <option value="0">{{ __('Customers') }}</option>
                                            <option value="1">{{ __('Vendors') }}</option>
                                            <option value="2">{{ __('Subscribers') }}</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">
                                                {{ __('SMS Body') }} *
                                            </h4>
                                            <p class="sub-heading">{{ __('(In Any Language)') }}</p>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <textarea class="" rows="5" name="body" placeholder="{{ __('SMS Body') }}"></textarea>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">

                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <button class="addProductSubmit-btn" type="submit">{{ __('Send SMS') }}</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection