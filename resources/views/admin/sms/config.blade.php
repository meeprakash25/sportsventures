@extends('layouts.admin')

@section('content')

    <div class="content-area">
        <div class="mr-breadcrumb">
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="heading">{{ __('SMS Configuration') }}</h4>
                    <ul class="links">
                        <li>
                            <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
                        </li>
                        <li>
                            <a href="javascript:;">{{ __('SMS Settings') }}</a>
                        </li>
                        <li>
                            <a href="{{ route('admin-sms-config') }}">{{ __('SMS Configuration') }}</a>
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
                            <div class="gocover" style="background: url({{asset("public/assets/images/'.$gs->admin_loader)}}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
                            <form action="{{ route('admin-gs-update') }}" id="geniusform" method="POST" enctype="multipart/form-data">
                                {{ csrf_field() }}

                                @include('includes.admin.form-both')

                                <div class="row justify-content-center">
                                    <div class="col-lg-3">
                                        <div class="left-area">
                                            <h4 class="heading">
                                                {{ __('Aayo SMS') }}
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="action-list">
                                            <select class="process select droplinks {{ $gs->is_sms == 1 ? 'drop-success' : 'drop-danger' }}">
                                                <option data-val="1" value="{{route('admin-gs-issms',1)}}" {{ $gs->is_sms == 1 ? 'selected' : '' }}>{{ __('Activated') }}</option>
                                                <option data-val="0"
                                                        value="{{route('admin-gs-issms',0)}}" {{ $gs->is_sms == 0 ? 'selected' : '' }}>{{ __('Deactivated') }}</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="row justify-content-center">
                                    <div class="col-lg-3">
                                        <div class="left-area">
                                            <h4 class="heading">{{ __('Sender ID') }} *
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <input type="text" class="input-field" placeholder="{{ __('Sender ID') }}" name="sms_sender_id" value="{{ $gs->sms_sender_id }}" required="">
                                    </div>
                                </div>

                                <div class="row justify-content-center">
                                    <div class="col-lg-3">
                                        <div class="left-area">
                                            <h4 class="heading">{{ __('Username') }} *
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <input type="text" class="input-field" placeholder="{{ __('Username') }} " name="sms_username" value="{{ $gs->sms_username }}" required="">
                                    </div>
                                </div>


                                <div class="row justify-content-center">
                                    <div class="col-lg-3">
                                        <div class="left-area">
                                            <h4 class="heading">{{ __('Password') }} *</h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <input type="password" class="input-field" placeholder="{{ __('Password') }} " name="sms_password" value="{{ $gs->sms_password }}"
                                               required="">
                                    </div>
                                </div>

                                <div class="row justify-content-center">
                                    <div class="col-lg-3">
                                        <div class="left-area">

                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <button class="addProductSubmit-btn" type="submit">{{ __('Submit') }}</button>
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