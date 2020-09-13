@extends('layouts.admin')

@section('content')

    <div class="content-area">
        <div class="mr-breadcrumb">
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="heading">{{ __('Alert Settings') }}</h4>
                    <ul class="links">
                        <li>
                            <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
                        </li>
                        <li>
                            <a href="javascript:;">{{ __('Alert Settings') }}</a>
                        </li>
                        <li>
                            <a href="{{ route('admin-alert-config') }}">{{ __('Alert Settings') }}</a>
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

                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">
                                            {{ __('Create Customer Welcome') }} ({{__('Email')}})
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="action-list">
                                        <select class="process select droplinks {{ $gs->create_customer_email == 1 ? 'drop-success' : 'drop-danger' }}">
                                            <option data-val="1"
                                                    value="{{route('admin-gs-create-customer-email',1)}}" {{ $gs->create_customer_email == 1 ? 'selected' : '' }}>{{ __('Activated') }}</option>
                                            <option data-val="0"
                                                    value="{{route('admin-gs-create-customer-email',0)}}" {{ $gs->create_customer_email == 0 ? 'selected' : '' }}>{{ __('Deactivated') }}</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">
                                            {{ __('Create Customer Welcome') }} ({{__('SMS')}})
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="action-list">
                                        <select class="process select droplinks {{ $gs->create_customer_sms == 1 ? 'drop-success' : 'drop-danger' }}">
                                            <option data-val="1"
                                                    value="{{route('admin-gs-create-customer-sms',1)}}" {{ $gs->create_customer_sms == 1 ? 'selected' : '' }}>{{ __('Activated') }}</option>
                                            <option data-val="0"
                                                    value="{{route('admin-gs-create-customer-sms',0)}}" {{ $gs->create_customer_sms == 0 ? 'selected' : '' }}>{{ __('Deactivated') }}</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <hr>

                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">
                                            {{ __('Order') }} ({{__('Email')}})
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="action-list">
                                        <select class="process select droplinks {{ $gs->order_email == 1 ? 'drop-success' : 'drop-danger' }}">
                                            <option data-val="1"
                                                    value="{{route('admin-gs-order-email',1)}}" {{ $gs->order_email == 1 ? 'selected' : '' }}>{{ __('Activated') }}</option>
                                            <option data-val="0"
                                                    value="{{route('admin-gs-order-email',0)}}" {{ $gs->order_email == 0 ? 'selected' : '' }}>{{ __('Deactivated') }}</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">
                                            {{ __('Order') }} ({{__('SMS')}})
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="action-list">
                                        <select class="process select droplinks {{ $gs->order_sms == 1 ? 'drop-success' : 'drop-danger' }}">
                                            <option data-val="1"
                                                    value="{{route('admin-gs-order-sms',1)}}" {{ $gs->order_sms == 1 ? 'selected' : '' }}>{{ __('Activated') }}</option>
                                            <option data-val="0"
                                                    value="{{route('admin-gs-order-sms',0)}}" {{ $gs->order_sms == 0 ? 'selected' : '' }}>{{ __('Deactivated') }}</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <hr>

                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">
                                            {{ __('Order Status') }} ({{__('Email')}})
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="action-list">
                                        <select class="process select droplinks {{ $gs->order_status_email == 1 ? 'drop-success' : 'drop-danger' }}">
                                            <option data-val="1"
                                                    value="{{route('admin-gs-order-status-email',1)}}" {{ $gs->order_status_email == 1 ? 'selected' : '' }}>{{ __('Activated') }}</option>
                                            <option data-val="0"
                                                    value="{{route('admin-gs-order-status-email',0)}}" {{ $gs->order_status_email == 0 ? 'selected' : '' }}>{{ __('Deactivated') }}</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">
                                            {{ __('Order Status') }} ({{__('SMS')}})
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="action-list">
                                        <select class="process select droplinks {{ $gs->order_status_sms == 1 ? 'drop-success' : 'drop-danger' }}">
                                            <option data-val="1"
                                                    value="{{route('admin-gs-order-status-sms',1)}}" {{ $gs->order_status_sms == 1 ? 'selected' : '' }}>{{ __('Activated') }}</option>
                                            <option data-val="0"
                                                    value="{{route('admin-gs-order-status-sms',0)}}" {{ $gs->order_status_sms == 0 ? 'selected' : '' }}>{{ __('Deactivated') }}</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <hr>

                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">
                                            {{ __('Order Tracking') }} ({{__('Email')}})
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="action-list">
                                        <select class="process select droplinks {{ $gs->order_track_email == 1 ? 'drop-success' : 'drop-danger' }}">
                                            <option data-val="1"
                                                    value="{{route('admin-gs-order-track-email',1)}}" {{ $gs->order_track_email == 1 ? 'selected' : '' }}>{{ __('Activated') }}</option>
                                            <option data-val="0"
                                                    value="{{route('admin-gs-order-track-email',0)}}" {{ $gs->order_track_email == 0 ? 'selected' : '' }}>{{ __('Deactivated') }}</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row justify-content-center">
                                <div class="col-lg-3">
                                    <div class="left-area">
                                        <h4 class="heading">
                                            {{ __('Order Tracking') }} ({{__('SMS')}})
                                        </h4>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="action-list">
                                        <select class="process select droplinks {{ $gs->order_track_sms == 1 ? 'drop-success' : 'drop-danger' }}">
                                            <option data-val="1"
                                                    value="{{route('admin-gs-order-track-sms',1)}}" {{ $gs->order_track_sms == 1 ? 'selected' : '' }}>{{ __('Activated') }}</option>
                                            <option data-val="0"
                                                    value="{{route('admin-gs-order-track-sms',0)}}" {{ $gs->order_track_sms == 0 ? 'selected' : '' }}>{{ __('Deactivated') }}</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <hr>

{{--                            <div class="row justify-content-center">--}}
{{--                                <div class="col-lg-3">--}}
{{--                                    <div class="left-area">--}}
{{--                                        <h4 class="heading">--}}
{{--                                            {{ __('New Product') }} ({{__('Email')}})--}}
{{--                                        </h4>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                                <div class="col-lg-6">--}}
{{--                                    <div class="action-list">--}}
{{--                                        <select class="process select droplinks {{ $gs->new_product_email == 1 ? 'drop-success' : 'drop-danger' }}">--}}
{{--                                            <option data-val="1"--}}
{{--                                                    value="{{route('admin-gs-new-product-email',1)}}" {{ $gs->new_product_email == 1 ? 'selected' : '' }}>{{ __('Activated') }}</option>--}}
{{--                                            <option data-val="0"--}}
{{--                                                    value="{{route('admin-gs-new-product-email',0)}}" {{ $gs->new_product_email == 0 ? 'selected' : '' }}>{{ __('Deactivated') }}</option>--}}
{{--                                        </select>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}

{{--                            <div class="row justify-content-center">--}}
{{--                                <div class="col-lg-3">--}}
{{--                                    <div class="left-area">--}}
{{--                                        <h4 class="heading">--}}
{{--                                            {{ __('New Product') }} ({{__('SMS')}})--}}
{{--                                        </h4>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                                <div class="col-lg-6">--}}
{{--                                    <div class="action-list">--}}
{{--                                        <select class="process select droplinks {{ $gs->new_product_sms == 1 ? 'drop-success' : 'drop-danger' }}">--}}
{{--                                            <option data-val="1"--}}
{{--                                                    value="{{route('admin-gs-new-product-sms',1)}}" {{ $gs->new_product_sms == 1 ? 'selected' : '' }}>{{ __('Activated') }}</option>--}}
{{--                                            <option data-val="0"--}}
{{--                                                    value="{{route('admin-gs-new-product-sms',0)}}" {{ $gs->new_product_sms == 0 ? 'selected' : '' }}>{{ __('Deactivated') }}</option>--}}
{{--                                        </select>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}

{{--                            <hr>--}}

{{--                            <div class="row justify-content-center">--}}
{{--                                <div class="col-lg-3">--}}
{{--                                    <div class="left-area">--}}
{{--                                        <h4 class="heading">--}}
{{--                                            {{ __('News') }} ({{__('Email')}})--}}
{{--                                        </h4>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                                <div class="col-lg-6">--}}
{{--                                    <div class="action-list">--}}
{{--                                        <select class="process select droplinks {{ $gs->news_email == 1 ? 'drop-success' : 'drop-danger' }}">--}}
{{--                                            <option data-val="1"--}}
{{--                                                    value="{{route('admin-gs-news-email',1)}}" {{ $gs->news_email == 1 ? 'selected' : '' }}>{{ __('Activated') }}</option>--}}
{{--                                            <option data-val="0"--}}
{{--                                                    value="{{route('admin-gs-news-email',0)}}" {{ $gs->news_email == 0 ? 'selected' : '' }}>{{ __('Deactivated') }}</option>--}}
{{--                                        </select>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}

{{--                            <div class="row justify-content-center">--}}
{{--                                <div class="col-lg-3">--}}
{{--                                    <div class="left-area">--}}
{{--                                        <h4 class="heading">--}}
{{--                                            {{ __('News') }} ({{__('SMS')}})--}}
{{--                                        </h4>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                                <div class="col-lg-6">--}}
{{--                                    <div class="action-list">--}}
{{--                                        <select class="process select droplinks {{ $gs->news_sms == 1 ? 'drop-success' : 'drop-danger' }}">--}}
{{--                                            <option data-val="1" value="{{route('admin-gs-news-sms',1)}}" {{ $gs->news_sms == 1 ? 'selected' : '' }}>{{ __('Activated') }}</option>--}}
{{--                                            <option data-val="0"--}}
{{--                                                    value="{{route('admin-gs-news-sms',0)}}" {{ $gs->news_sms == 0 ? 'selected' : '' }}>{{ __('Deactivated') }}</option>--}}
{{--                                        </select>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}

                            <hr>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection