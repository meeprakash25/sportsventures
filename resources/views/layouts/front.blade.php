<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    @if(isset($page->meta_tag) && isset($page->meta_description))
        <meta name="keywords" content="{{ $page->meta_tag }}">
        <meta name="description" content="{{ $page->meta_description }}">
        <title>{{$gs->title}}</title>
    @elseif(isset($blog->meta_tag) && isset($blog->meta_description))
        <meta name="keywords" content="{{ $blog->meta_tag }}">
        <meta name="description" content="{{ $blog->meta_description }}">
        <title>{{$gs->title}}</title>
    @elseif(isset($productt))
        <meta name="keywords" content="{{ !empty($productt->meta_tag) ? implode(',', $productt->meta_tag ): '' }}">
        <meta name="description" content="{{ $productt->meta_description != null ? $productt->meta_description : strip_tags($productt->description) }}">
        <meta property="og:title" content="{{$productt->name}}"/>
        <meta property="og:description" content="{{ $productt->meta_description != null ? $productt->meta_description : strip_tags($productt->description) }}"/>
        <meta property="og:image" content="{{asset('public/assets/images/thumbnails/'.$productt->thumbnail)}}"/>
        <meta name="author" content="GeniusOcean">
        <title>{{substr($productt->name, 0,11)."-"}}{{$gs->title}}</title>
    @else
        <meta name="keywords" content="{{ $seo->meta_keys }}">
        <meta name="author" content="GeniusOcean">
        <title>{{$gs->title}}</title>
    @endif
<!-- favicon -->
    <link rel="icon" type="image/x-icon" href="{{asset('public/assets/images/'.$gs->favicon)}}"/>


    @if($langg->rtl == "1")

    <!-- stylesheet -->
        <link rel="stylesheet" href="{{asset('public/assets/front/css/rtl/all.css')}}">

        <!--Updated CSS-->
        <link rel="stylesheet"
              href="{{ asset('public/assets/front/css/rtl/styles.php?color='.str_replace('#','',$gs->colors).'&amp;'.'header_color='.str_replace('#','',$gs->header_color).'&amp;'.'footer_color='.str_replace('#','',$gs->footer_color).'&amp;'.'copyright_color='.str_replace('#','',$gs->copyright_color).'&amp;'.'menu_color='.str_replace('#','',$gs->menu_color).'&amp;'.'menu_hover_color='.str_replace('#','',$gs->menu_hover_color)) }}">

    @else
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick-theme.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.css">
        <!-- stylesheet -->
        <link rel="stylesheet" href="{{asset('public/assets/front/css/all.css')}}">

        <!--Updated CSS-->
        @include('includes.dynamiccss')
    @endif



    @yield('styles')

    <style>
        .navbar .dropdown-menu div[class*="col"] {
            margin-bottom: 1rem;
        }

        .navbar .dropdown-menu {
            border: none;
            background-color: #193e69 !important;
        }

        /*#navbarSupportedContent{*/
        /*    background-color: #0049c8 !important;*/
        /*    z-index:99;*/
        /*}*/

        @media screen and (min-width: 992px) {

            .navbar {
                padding-top: 0px;
                padding-bottom: 0px;
                margin-top: -1px;
            }

            .navbar .nav-item {
                padding: 0 .5rem 0 .5rem;
                margin: 0 .25rem 0 .25rem;
            }

            .navbar .dropdown {
                position: static;
            }

            .navbar .dropdown-menu {
                width: 100%;
                left: 0;
                right: 0;
                top: 45px;
                margin-top: -6px;
                display: block;
                visibility: hidden;
                opacity: 0;
                transition: visibility 0s, opacity 0.3s linear;

            }

            .navbar .dropdown:hover .dropdown-menu, .navbar .dropdown .dropdown-menu:hover {
                display: block;
                visibility: visible;
                opacity: 1;
                transition: visibility 0s, opacity 0.3s linear;
                z-index: 1000;
            }

            .navbar a {
                color: #fff !important;
            }

            .navbar a:hover {
                color: orangered !important;
            }

        }
    </style>

</head>

<body>

@if($gs->is_loader == 1)
    <div class="preloader" id="preloader" style="background: url({{asset('public/assets/images/'.$gs->loader)}}) no-repeat scroll center center #FFF;"></div>
@endif

@if($gs->is_popup== 1)

    @if(isset($visited))
        {{--    	<div style="display:none">--}}
        {{--    		<img src="{{asset('public/assets/images/'.$gs->popup_background)}}">--}}
        {{--    	</div>--}}

        <!--  Starting of subscribe-pre-loader Area   -->
        <div class="subscribe-preloader-wrap" id="subscriptionForm" style="display: none;">
            <div class="subscribePreloader__thumb" {{--@if(isset($gs->popup_background)) style="background-image: url({{asset('public/assets/images/'.$gs->popup_background)}});" @endif--}}>
                <div class="subscribePreloader__text text-center">
                    <span class="preload-close"><i class="fas fa-times"></i></span>
                    <h1>{{$gs->popup_title}}</h1>
                    <p>{{$gs->popup_text}}</p>
                    <form action="{{route('front.subscribe')}}" id="subscribeform" method="POST">
                        {{csrf_field()}}
                        <div class="form-group">
                            <input type="email" name="email" placeholder="{{ $langg->lang741 }}" required="">
                            <button id="sub-btn" type="submit">{{ $langg->lang742 }}</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--  Ending of subscribe-pre-loader Area   -->

    @endif

@endif
{{--	<section class="top-header">--}}
{{--		<div class="container">--}}
{{--			<div class="row">--}}
{{--				<div class="col-lg-12 remove-padding">--}}
{{--					<div class="content">--}}
{{--						<div class="left-content">--}}
{{--							<div class="list">--}}
{{--								<ul>--}}
{{--									@if($gs->is_language == 1)--}}
{{--									<li>--}}
{{--										<div class="language-selector">--}}
{{--											<i class="fas fa-globe-americas"></i>--}}
{{--											<select name="language" class="language selectors nice">--}}
{{--										@foreach(DB::table('languages')->get() as $language)--}}
{{--											<option value="{{route('front.language',$language->id)}}" {{ Session::has('language') ? ( Session::get('language') == $language->id ? 'selected' : '' ) : (DB::table('languages')->where('is_default','=',1)->first()->id == $language->id ? 'selected' : '') }} >{{$language->language}}</option>--}}
{{--										@endforeach--}}
{{--											</select>--}}
{{--										</div>--}}
{{--									</li>--}}
{{--									@endif--}}

{{--									@if($gs->is_currency == 1)--}}
{{--									<li>--}}
{{--										<div class="currency-selector">--}}
{{--										<span>{{ Session::has('currency') ?   DB::table('currencies')->where('id','=',Session::get('currency'))->first()->sign   : DB::table('currencies')->where('is_default','=',1)->first()->sign }}</span>--}}
{{--										<select name="currency" class="currency selectors nice">--}}
{{--										@foreach(DB::table('currencies')->get() as $currency)--}}
{{--											<option value="{{route('front.currency',$currency->id)}}" {{ Session::has('currency') ? ( Session::get('currency') == $currency->id ? 'selected' : '' ) : (DB::table('currencies')->where('is_default','=',1)->first()->id == $currency->id ? 'selected' : '') }} >{{$currency->name}}</option>--}}
{{--										@endforeach--}}
{{--										</select>--}}
{{--										</div>--}}
{{--									</li>--}}
{{--									@endif--}}


{{--								</ul>--}}
{{--							</div>--}}
{{--						</div>--}}



{{--						<div class="right-content">--}}
{{--							<div class="list">--}}
{{--								<ul>--}}
{{--									@if(!Auth::guard('web')->check())--}}
{{--									<li class="login">--}}
{{--										<a href="{{ route('user.login') }}" class="sign-log">--}}
{{--											<div class="links">--}}
{{--												<span class="sign-in">{{ $langg->lang12 }}</span> <span>|</span>--}}
{{--												<span class="join">{{ $langg->lang13 }}</span>--}}
{{--											</div>--}}
{{--										</a>--}}
{{--									</li>--}}
{{--									@else--}}
{{--										<li class="profilearea my-dropdown">--}}
{{--											<a href="javascript: ;" id="profile-icon" class="profile carticon">--}}
{{--												<span class="text">--}}
{{--													<i class="far fa-user"></i>	{{ $langg->lang11 }} <i class="fas fa-chevron-down"></i>--}}
{{--												</span>--}}
{{--											</a>--}}
{{--											<div class="my-dropdown-menu profile-dropdown">--}}
{{--												<ul class="profile-links">--}}
{{--													<li>--}}
{{--														<a href="{{ route('user-dashboard') }}"><i class="fas fa-angle-double-right"></i> {{ $langg->lang221 }}</a>--}}
{{--													</li>--}}
{{--													@if(Auth::user()->IsVendor())--}}
{{--													<li>--}}
{{--														<a href="{{ route('vendor-dashboard') }}"><i class="fas fa-angle-double-right"></i> {{ $langg->lang222 }}</a>--}}
{{--													</li>--}}
{{--													@endif--}}

{{--													<li>--}}
{{--														<a href="{{ route('user-profile') }}"><i class="fas fa-angle-double-right"></i> {{ $langg->lang205 }}</a>--}}
{{--													</li>--}}

{{--													<li>--}}
{{--														<a href="{{ route('user-logout') }}"><i class="fas fa-angle-double-right"></i> {{ $langg->lang223 }}</a>--}}
{{--													</li>--}}
{{--												</ul>--}}
{{--											</div>--}}
{{--										</li>--}}
{{--									@endif--}}


{{--                        			@if($gs->reg_vendor == 1)--}}
{{--										<li>--}}
{{--                        				@if(Auth::check())--}}
{{--	                        				@if(Auth::guard('web')->user()->is_vendor == 2)--}}
{{--	                        					<a href="{{ route('vendor-dashboard') }}" class="sell-btn">{{ $langg->lang220 }}</a>--}}
{{--	                        				@else--}}
{{--	                        					<a href="{{ route('user-package') }}" class="sell-btn">{{ $langg->lang220 }}</a>--}}
{{--	                        				@endif--}}
{{--										</li>--}}
{{--                        				@else--}}
{{--										<li>--}}
{{--											<a href="javascript:;" data-toggle="modal" data-target="#vendor-login" class="sell-btn">{{ $langg->lang220 }}</a>--}}
{{--										</li>--}}
{{--										@endif--}}
{{--									@endif--}}


{{--								</ul>--}}
{{--							</div>--}}
{{--						</div>--}}
{{--					</div>--}}
{{--				</div>--}}
{{--			</div>--}}
{{--		</div>--}}
{{--	</section>--}}
<!-- Top Header Area End -->

<!-- Logo Header Area Start -->
<section class="logo-header">
    <div class="container">
        <div class="row ">
            <div class="col-lg-2 col-md-3 col-sm-6 col-xs-3 col-3 remove-padding">
                <div class="logo">
                    <a href="{{ route('front.index') }}">
                        <img src="{{asset('public/assets/images/'.$gs->logo)}}" alt="" class="logo-img" style="max-height: 50px">
                    </a>
                </div>
            </div>
            <div class="col-md-5 col-sm-12 col-xs-12 col-12 remove-padding order-last order-sm-2 order-md-2">
                <div class="search-box-wrapper">
                    <div class="search-box">
                        {{--                        <div class="categori-container" id="catSelectForm">--}}
                        {{--                            <select name="category" id="category_select" class="categoris">--}}
                        {{--                                <option value="">{{ $langg->lang1 }}</option>--}}
                        {{--                                @foreach($categories as $data)--}}
                        {{--                                    <option value="{{ $data->slug }}" {{ Request::route('category') == $data->slug ? 'selected' : '' }}>{{ $data->name }}</option>--}}
                        {{--                                @endforeach--}}
                        {{--                            </select>--}}
                        {{--                        </div>--}}

                        <form id="searchForm" class="search-form"
                              action="{{ route('front.category', [Request::route('category'),Request::route('subcategory'),Request::route('childcategory')]) }}" method="GET">
                            @if (!empty(request()->input('sort')))
                                <input type="hidden" name="sort" value="{{ request()->input('sort') }}">
                            @endif
                            @if (!empty(request()->input('minprice')))
                                <input type="hidden" name="minprice" value="{{ request()->input('minprice') }}">
                            @endif
                            @if (!empty(request()->input('maxprice')))
                                <input type="hidden" name="maxprice" value="{{ request()->input('maxprice') }}">
                            @endif
                            <input type="text" id="prod_name" name="search" placeholder="{{ $langg->lang2 }}" value="{{ request()->input('search') }}" autocomplete="off">
                            <div class="autocomplete">
                                <div id="myInputautocomplete-list" class="autocomplete-items"></div>
                            </div>
                            <button type="submit"><i class="icofont-search-1"></i></button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6 col-xs-5 col-5 remove-padding order-md-2">
                <div class="helpful-links">
                    <ul class="helpful-links-inner">
                        <li class="my-dropdown" data-toggle="tooltip" data-placement="left" title="{{ $langg->lang3 }}">
                            <a href="javascript:;" class="cart carticon">
                                <div class="icon">
                                    <i class="icofont-cart"></i>
                                    <span class="cart-quantity" id="cart-count">{{ Session::has('cart') ? count(Session::get('cart')->items) : '0' }}</span>
                                </div>

                            </a>
                            <div class="my-dropdown-menu" id="cart-items">
                                @include('load.cart')
                            </div>
                        </li>
                        <li class="wishlist" data-toggle="tooltip" data-placement="left" title="{{ $langg->lang9 }}">
                            @if(Auth::guard('web')->check())
                                <a href="{{ route('user-wishlists') }}" class="wish">
                                    <i class="far fa-heart"></i>
                                    <span id="wishlist-count">{{ Auth::user()->wishlistCount() }}</span>
                                </a>
                            @else
                                <a href="javascript:;" data-toggle="modal" id="wish-btn" data-target="#comment-log-reg" class="wish">
                                    <i class="far fa-heart"></i>
                                    <span id="wishlist-count">0</span>
                                </a>
                            @endif
                        </li>
                        <li class="compare" data-toggle="tooltip" data-placement="left" title="{{ $langg->lang10 }}">
                            <a href="{{ route('product.compare') }}" class="wish compare-product">
                                <div class="icon">
                                    <i class="fas fa-exchange-alt"></i>
                                    <span id="compare-count">{{ Session::has('compare') ? count(Session::get('compare')->items) : '0' }}</span>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-6 col-xs-4 col-4 order-md-last mt-2">
                <div class="top-header">
                    <ul>
                        @if(!Auth::guard('web')->check())
                            <li class="login">
                                <a href="{{ route('user.login') }}" class="sign-log text-nowrap">
                                    <div class="links">
                                        <span class="sign-in">{{ $langg->lang12 }} | {{ $langg->lang13 }}</span>
                                    </div>
                                </a>
                            </li>
                        @else
                            <li class="profilearea my-dropdown text-left text-nowrap my-auto my-sm-0">
                                <a href="javascript: ;" id="profile-icon" class="profile carticon">
									<span class="text-bold">
										<i class="far fa-user"></i> Account {{--{{ $langg->lang11 }}--}} <i class="fas fa-chevron-down"></i>
									</span>
                                </a>
                                <div class="my-dropdown-menu profile-dropdown">
                                    <ul class="profile-links">
                                        <li>
                                            <a href="{{ route('user-dashboard') }}"><i class="fas fa-angle-double-right"></i> {{ $langg->lang221 }}</a>
                                        </li>
                                        @if(Auth::user()->IsVendor())
                                            <li>
                                                <a href="{{ route('vendor-dashboard') }}"><i class="fas fa-angle-double-right"></i> {{ $langg->lang222 }}</a>
                                            </li>
                                        @endif

                                        <li>
                                            <a href="{{ route('user-profile') }}"><i class="fas fa-angle-double-right"></i> {{ $langg->lang205 }}</a>
                                        </li>

                                        <li>
                                            <a href="{{ route('user-logout') }}"><i class="fas fa-angle-double-right"></i> {{ $langg->lang223 }}</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        @endif


                        {{--						@if($gs->reg_vendor == 1)--}}
                        {{--							<li>--}}
                        {{--								@if(Auth::check())--}}
                        {{--									@if(Auth::guard('web')->user()->is_vendor == 2)--}}
                        {{--										<a href="{{ route('vendor-dashboard') }}" class="sell-btn">{{ $langg->lang220 }}</a>--}}
                        {{--									@else--}}
                        {{--										<a href="{{ route('user-package') }}" class="sell-btn">{{ $langg->lang220 }}</a>--}}
                        {{--									@endif--}}
                        {{--							</li>--}}
                        {{--						@else--}}
                        {{--							<li>--}}
                        {{--								<a href="javascript:;" data-toggle="modal" data-target="#vendor-login" class="sell-btn">{{ $langg->lang220 }}</a>--}}
                        {{--							</li>--}}
                        {{--						@endif--}}
                        {{--						@endif--}}


                    </ul>
                </div>
            </div>
            <div class="col-lg-1 col-md-3 col-sm-6 col-xs-4 col-4 remove-padding order-md-6 order-lg-last ">
                @php
                    $partners = DB::table('partners')->get();
                @endphp
                <div class="brand-slider float-right">
                    @foreach($partners as $partner)
                        <div>
                            <a href="{{route('front.brand',$partner->slug)}}"><img class="item" src="{{asset('public/assets/images/partner/'.$partner->photo)}}"></a>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Logo Header Area End -->

<!--Main-Menu Area Start-->
<div class="mainmenu-area mainmenu-bb">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false"
                            aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            @foreach($categories as $category)
                                @if(count($category->subs) > 0)
                                    <li class="nav-item dropdown">
                                        @if(count($category->subs) > 0)
                                            <a class="nav-link dropdown-toggle" href="{{ route('front.category',$category->slug) }}" id="navbarDropdown">
                                                {{ $category->name }}
                                            </a>
                                            @if(count($category->subs) > 0)
                                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                    <div class="container">
                                                        <div class="row d-none d-lg-block">
                                                            <div class="col-md-12 text-center mt-1">
                                                                <h5 class="text-danger">{{ $category->name }}</h5>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            @foreach($category->subs as $subcat)
                                                                <div class="col-md-3">
                                                                    <a href="{{ route('front.subcat',['slug1' => $subcat->category->slug, 'slug2' => $subcat->slug]) }}">
                                                                        <span class="text-uppercase text-white">{{$subcat->name}}</span>
                                                                    </a>

                                                                    @if(count($subcat->childs) > 0)
                                                                        <ul class="nav flex-column">
                                                                            @foreach($subcat->childs as $childcat)
                                                                                <li class="nav-item">
                                                                                    <a class="nav-link py-1" href="{{ route('front.childcat',['slug1' => $childcat->subcategory->category->slug,
                                                                                'slug2' => $childcat->subcategory->slug, 'slug3' => $childcat->slug]) }}">{{$childcat->name}}</a>
                                                                                </li>
                                                                            @endforeach
                                                                        </ul>
                                                                    @endif
                                                                </div>
                                                            @endforeach
                                                        </div>
                                                    </div>
                                                </div>
                                            @endif
                                        @endif
                                    </li>
                                @else
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{ route('front.category',$category->slug) }}">
                                            {{ $category->name }}
                                        </a>
                                    </li>
                                @endif
                            @endforeach
                        </ul>
                        <ul class="navbar-nav ml-auto">
                            @if($gs->is_home == 1)
                                <li class="nav-item"><a class="nav-link" href="{{ route('front.index') }}">{{ $langg->lang17 }}</a></li>
                            @endif
                            @foreach(DB::table('pages')->where('header','=',1)->get() as $data)
                                <li class="nav-item"><a class="nav-link" href="{{ route('front.page',$data->slug) }}">{{ $data->title }}</a></li>
                            @endforeach
                            @if($gs->is_faq == 1)
                                <li class="nav-item"><a class="nav-link" href="{{ route('front.faq') }}">{{ $langg->lang19 }}</a></li>
                            @endif
                            <li class="nav-item"><a class="nav-link" href="{{ route('front.blog') }}">{{ $langg->lang18 }}</a></li>
                            @if($gs->is_contact == 1)
                                <li class="nav-item"><a class="nav-link" href="{{ route('front.contact') }}">{{ $langg->lang20 }}</a></li>
                            @endif
                            <li class="nav-item">
                                <a class="nav-link" href="javascript:;" data-toggle="modal" data-target="#track-order-modal" class="track-btn">{{ $langg->lang16 }}</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</div>
<!--Main-Menu Area End-->

@yield('content')

<!-- Footer Area Start -->
<footer class="footer" id="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-lg-4">
                <div class="footer-info-area">
                    <div class="footer-logo">
                        <a href="{{ route('front.index') }}" class="logo-link">
                            <img src="{{asset('public/assets/images/'.$gs->footer_logo)}}" alt="">
                        </a>
                    </div>
                    <div class="text">
                        <p>
                            {!! $gs->footer !!}
                        </p>
                    </div>
                </div>
                <div class="fotter-social-links">
                    <ul>

                        @if(App\Models\Socialsetting::find(1)->f_status == 1)
                            <li>
                                <a href="{{ App\Models\Socialsetting::find(1)->facebook }}" class="facebook" target="_blank">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                            </li>
                        @endif


                        @if(App\Models\Socialsetting::find(1)->t_status == 1)
                            <li>
                                <a href="{{ App\Models\Socialsetting::find(1)->twitter }}" class="twitter" target="_blank">
                                    <i class="fab fa-twitter"></i>
                                </a>
                            </li>
                        @endif

                        @if(App\Models\Socialsetting::find(1)->g_status == 1)
                            <li>
                                <a href="{{ App\Models\Socialsetting::find(1)->gplus }}" class="google-plus" target="_blank">
                                    <i class="fab fa-instagram"></i>
                                </a>
                            </li>
                        @endif

                        @if(App\Models\Socialsetting::find(1)->l_status == 1)
                            <li>
                                <a href="{{ App\Models\Socialsetting::find(1)->linkedin }}" class="linkedin" target="_blank">
                                    <i class="fab fa-youtube"></i>
                                </a>
                            </li>
                        @endif

                    </ul>
                </div>
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="footer-widget info-link-widget">
                    <h4 class="title">
                        {{ $langg->lang21 }}
                    </h4>
                    <ul class="link-list">
                        <li>
                            <a href="{{ route('front.index') }}">
                                <i class="fas fa-angle-double-right"></i>{{ $langg->lang22 }}
                            </a>
                        </li>

                        @foreach(DB::table('pages')->where('footer','=',1)->get() as $data)
                            <li>
                                <a href="{{ route('front.page',$data->slug) }}">
                                    <i class="fas fa-angle-double-right"></i>{{ $data->title }}
                                </a>
                            </li>
                        @endforeach

                        <li>
                            <a href="{{ route('front.contact') }}">
                                <i class="fas fa-angle-double-right"></i>{{ $langg->lang23 }}
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="footer-widget recent-post-widget">
                    <h4 class="title">
                        {{ $langg->lang24 }}
                    </h4>
                    <ul class="post-list">
                        @foreach (App\Models\Blog::orderBy('created_at', 'desc')->limit(3)->get() as $blog)
                            <li>
                                <div class="post">
                                    <div class="post-img">
                                        <img style="width: 73px; height: 59px;" src="{{ asset('public/assets/images/blogs/'.$blog->photo) }}" alt="">
                                    </div>
                                    <div class="post-details">
                                        <a href="{{ route('front.blogshow',$blog->id) }}">
                                            <h4 class="post-title">
                                                {{mb_strlen($blog->title,'utf-8') > 45 ? mb_substr($blog->title,0,45,'utf-8')." .." : $blog->title}}
                                            </h4>
                                        </a>
                                        <p class="date">
                                            {{ date('M d - Y',(strtotime($blog->created_at))) }}
                                        </p>
                                    </div>
                                </div>
                            </li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="copy-bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="content">
                        <div class="content">
                            <p>{!! $gs->copyright !!}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Area End -->

<!-- Back to Top Start -->
<div class="bottomtotop">
    <i class="fas fa-chevron-right"></i>
</div>
<!-- Back to Top End -->

<!-- LOGIN MODAL -->
<div class="modal fade" id="comment-log-reg" tabindex="-1" role="dialog" aria-labelledby="comment-log-reg-Title"
     aria-hidden="true">
    <div class="modal-dialog  modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <nav class="comment-log-reg-tabmenu">
                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                        <a class="nav-item nav-link login active" id="nav-log-tab1" data-toggle="tab" href="#nav-log1"
                           role="tab" aria-controls="nav-log" aria-selected="true">
                            {{ $langg->lang197 }}
                        </a>
                        <a class="nav-item nav-link" id="nav-reg-tab1" data-toggle="tab" href="#nav-reg1" role="tab"
                           aria-controls="nav-reg" aria-selected="false">
                            {{ $langg->lang198 }}
                        </a>
                    </div>
                </nav>
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="nav-log1" role="tabpanel"
                         aria-labelledby="nav-log-tab1">
                        <div class="login-area">
                            <div class="header-area">
                                <h4 class="title">{{ $langg->lang172 }}</h4>
                            </div>
                            <div class="login-form signin-form">
                                @include('includes.admin.form-login')
                                <form class="mloginform" action="{{ route('user.login.submit') }}" method="POST">
                                    {{ csrf_field() }}
                                    <div class="form-input">
                                        <input type="email" name="email" placeholder="{{ $langg->lang173 }}"
                                               required="">
                                        <i class="icofont-user-alt-5"></i>
                                    </div>
                                    <div class="form-input">
                                        <input type="password" class="Password" name="password"
                                               placeholder="{{ $langg->lang174 }}" required="">
                                        <i class="icofont-ui-password"></i>
                                    </div>
                                    <div class="form-forgot-pass">
                                        <div class="left">
                                            <input type="checkbox" name="remember" id="mrp"
                                                    {{ old('remember') ? 'checked' : '' }}>
                                            <label for="mrp">{{ $langg->lang175 }}</label>
                                        </div>
                                        <div class="right">
                                            <a href="javascript:;" id="show-forgot">
                                                {{ $langg->lang176 }}
                                            </a>
                                        </div>
                                    </div>
                                    <input type="hidden" name="modal" value="1">
                                    <input class="mauthdata" type="hidden" value="{{ $langg->lang177 }}">
                                    <button type="submit" class="submit-btn">{{ $langg->lang178 }}</button>
                                    @if(App\Models\Socialsetting::find(1)->f_check == 1 || App\Models\Socialsetting::find(1)->g_check == 1)
                                        <div class="social-area">
                                            <h3 class="title">{{ $langg->lang179 }}</h3>
                                            <p class="text">{{ $langg->lang180 }}</p>
                                            <ul class="social-links">
                                                @if(App\Models\Socialsetting::find(1)->f_check == 1)
                                                    <li>
                                                        <a href="{{ route('social-provider','facebook') }}">
                                                            <i class="fab fa-facebook-f"></i>
                                                        </a>
                                                    </li>
                                                @endif
                                                @if(App\Models\Socialsetting::find(1)->g_check == 1)
                                                    <li>
                                                        <a href="{{ route('social-provider','google') }}">
                                                            <i class="fab fa-google-plus-g"></i>
                                                        </a>
                                                    </li>
                                                @endif
                                            </ul>
                                        </div>
                                    @endif
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-reg1" role="tabpanel" aria-labelledby="nav-reg-tab1">
                        <div class="login-area signup-area">
                            <div class="header-area">
                                <h4 class="title">{{ $langg->lang181 }}</h4>
                            </div>
                            <div class="login-form signup-form">
                                @include('includes.admin.form-login')
                                <form class="mregisterform" action="{{route('user-register-submit')}}"
                                      method="POST">
                                    {{ csrf_field() }}

                                    <div class="form-input">
                                        <input type="text" class="User Name" name="name"
                                               placeholder="{{ $langg->lang182 }}" required="">
                                        <i class="icofont-user-alt-5"></i>
                                    </div>

                                    <div class="form-input">
                                        <input type="email" class="User Name" name="email"
                                               placeholder="{{ $langg->lang183 }}" required="">
                                        <i class="icofont-email"></i>
                                    </div>

                                    <div class="form-input">
                                        <input type="text" class="User Name" name="phone"
                                               placeholder="{{ $langg->lang184 }}" required="">
                                        <i class="icofont-phone"></i>
                                    </div>

                                    <div class="form-input">
                                        <input type="text" class="User Name" name="address"
                                               placeholder="{{ $langg->lang185 }}" required="">
                                        <i class="icofont-location-pin"></i>
                                    </div>

                                    <div class="form-input">
                                        <input type="password" class="Password" name="password"
                                               placeholder="{{ $langg->lang186 }}" required="">
                                        <i class="icofont-ui-password"></i>
                                    </div>

                                    <div class="form-input">
                                        <input type="password" class="Password" name="password_confirmation"
                                               placeholder="{{ $langg->lang187 }}" required="">
                                        <i class="icofont-ui-password"></i>
                                    </div>


                                    @if($gs->is_capcha == 1)

                                        <ul class="captcha-area">
                                            <li>
                                                <p><img class="codeimg1"
                                                        src="{{asset("public/assets/images/capcha_code.png")}}" alt=""> <i
                                                            class="fas fa-sync-alt pointer refresh_code "></i></p>
                                            </li>
                                        </ul>

                                        <div class="form-input">
                                            <input type="text" class="Password" name="codes"
                                                   placeholder="{{ $langg->lang51 }}" required="">
                                            <i class="icofont-refresh"></i>
                                        </div>


                                    @endif

                                    <input class="mprocessdata" type="hidden" value="{{ $langg->lang188 }}">
                                    <button type="submit" class="submit-btn">{{ $langg->lang189 }}</button>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- LOGIN MODAL ENDS -->

<!-- FORGOT MODAL -->
<div class="modal fade" id="forgot-modal" tabindex="-1" role="dialog" aria-labelledby="comment-log-reg-Title"
     aria-hidden="true">
    <div class="modal-dialog  modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <div class="login-area">
                    <div class="header-area forgot-passwor-area">
                        <h4 class="title">{{ $langg->lang191 }} </h4>
                        <p class="text">{{ $langg->lang192 }} </p>
                    </div>
                    <div class="login-form">
                        @include('includes.admin.form-login')
                        <form id="mforgotform" action="{{route('user-forgot-submit')}}" method="POST">
                            {{ csrf_field() }}
                            <div class="form-input">
                                <input type="email" name="email" class="User Name"
                                       placeholder="{{ $langg->lang193 }}" required="">
                                <i class="icofont-user-alt-5"></i>
                            </div>
                            <div class="to-login-page">
                                <a href="javascript:;" id="show-login">
                                    {{ $langg->lang194 }}
                                </a>
                            </div>
                            <input class="fauthdata" type="hidden" value="{{ $langg->lang195 }}">
                            <button type="submit" class="submit-btn">{{ $langg->lang196 }}</button>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<!-- FORGOT MODAL ENDS -->


<!-- VENDOR LOGIN MODAL -->
<div class="modal fade" id="vendor-login" tabindex="-1" role="dialog" aria-labelledby="vendor-login-Title" aria-hidden="true">
    <div class="modal-dialog  modal-dialog-centered" style="transition: .5s;" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <nav class="comment-log-reg-tabmenu">
                    <div class="nav nav-tabs" id="nav-tab1" role="tablist">
                        <a class="nav-item nav-link login active" id="nav-log-tab11" data-toggle="tab" href="#nav-log11" role="tab" aria-controls="nav-log" aria-selected="true">
                            {{ $langg->lang234 }}
                        </a>
                        <a class="nav-item nav-link" id="nav-reg-tab11" data-toggle="tab" href="#nav-reg11" role="tab" aria-controls="nav-reg" aria-selected="false">
                            {{ $langg->lang235 }}
                        </a>
                    </div>
                </nav>
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="nav-log11" role="tabpanel" aria-labelledby="nav-log-tab">
                        <div class="login-area">
                            <div class="login-form signin-form">
                                @include('includes.admin.form-login')
                                <form class="mloginform" action="{{ route('user.login.submit') }}" method="POST">
                                    {{ csrf_field() }}
                                    <div class="form-input">
                                        <input type="email" name="email" placeholder="{{ $langg->lang173 }}" required="">
                                        <i class="icofont-user-alt-5"></i>
                                    </div>
                                    <div class="form-input">
                                        <input type="password" class="Password" name="password" placeholder="{{ $langg->lang174 }}" required="">
                                        <i class="icofont-ui-password"></i>
                                    </div>
                                    <div class="form-forgot-pass">
                                        <div class="left">
                                            <input type="checkbox" name="remember" id="mrp1" {{ old('remember') ? 'checked' : '' }}>
                                            <label for="mrp1">{{ $langg->lang175 }}</label>
                                        </div>
                                        <div class="right">
                                            <a href="javascript:;" id="show-forgot1">
                                                {{ $langg->lang176 }}
                                            </a>
                                        </div>
                                    </div>
                                    <input type="hidden" name="modal" value="1">
                                    <input type="hidden" name="vendor" value="1">
                                    <input class="mauthdata" type="hidden" value="{{ $langg->lang177 }}">
                                    <button type="submit" class="submit-btn">{{ $langg->lang178 }}</button>
                                    @if(App\Models\Socialsetting::find(1)->f_check == 1 || App\Models\Socialsetting::find(1)->g_check == 1)
                                        <div class="social-area">
                                            <h3 class="title">{{ $langg->lang179 }}</h3>
                                            <p class="text">{{ $langg->lang180 }}</p>
                                            <ul class="social-links">
                                                @if(App\Models\Socialsetting::find(1)->f_check == 1)
                                                    <li>
                                                        <a href="{{ route('social-provider','facebook') }}">
                                                            <i class="fab fa-facebook-f"></i>
                                                        </a>
                                                    </li>
                                                @endif
                                                @if(App\Models\Socialsetting::find(1)->g_check == 1)
                                                    <li>
                                                        <a href="{{ route('social-provider','google') }}">
                                                            <i class="fab fa-google-plus-g"></i>
                                                        </a>
                                                    </li>
                                                @endif
                                            </ul>
                                        </div>
                                    @endif
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-reg11" role="tabpanel" aria-labelledby="nav-reg-tab">
                        <div class="login-area signup-area">
                            <div class="login-form signup-form">
                                @include('includes.admin.form-login')
                                <form class="mregisterform" action="{{route('user-register-submit')}}" method="POST">
                                    {{ csrf_field() }}

                                    <div class="row">

                                        <div class="col-lg-6">
                                            <div class="form-input">
                                                <input type="text" class="User Name" name="name" placeholder="{{ $langg->lang182 }}" required="">
                                                <i class="icofont-user-alt-5"></i>
                                            </div>
                                        </div>

                                        <div class="col-lg-6">
                                            <div class="form-input">
                                                <input type="email" class="User Name" name="email" placeholder="{{ $langg->lang183 }}" required="">
                                                <i class="icofont-email"></i>
                                            </div>

                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-input">
                                                <input type="text" class="User Name" name="phone" placeholder="{{ $langg->lang184 }}" required="">
                                                <i class="icofont-phone"></i>
                                            </div>

                                        </div>
                                        <div class="col-lg-6">

                                            <div class="form-input">
                                                <input type="text" class="User Name" name="address" placeholder="{{ $langg->lang185 }}" required="">
                                                <i class="icofont-location-pin"></i>
                                            </div>
                                        </div>

                                        <div class="col-lg-6">
                                            <div class="form-input">
                                                <input type="text" class="User Name" name="shop_name" placeholder="{{ $langg->lang238 }}" required="">
                                                <i class="icofont-cart-alt"></i>
                                            </div>

                                        </div>
                                        <div class="col-lg-6">

                                            <div class="form-input">
                                                <input type="text" class="User Name" name="owner_name" placeholder="{{ $langg->lang239 }}" required="">
                                                <i class="icofont-cart"></i>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">

                                            <div class="form-input">
                                                <input type="text" class="User Name" name="shop_number" placeholder="{{ $langg->lang240 }}" required="">
                                                <i class="icofont-shopping-cart"></i>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">

                                            <div class="form-input">
                                                <input type="text" class="User Name" name="shop_address" placeholder="{{ $langg->lang241 }}" required="">
                                                <i class="icofont-opencart"></i>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">

                                            <div class="form-input">
                                                <input type="text" class="User Name" name="reg_number" placeholder="{{ $langg->lang242 }}" required="">
                                                <i class="icofont-ui-cart"></i>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">

                                            <div class="form-input">
                                                <input type="text" class="User Name" name="shop_message" placeholder="{{ $langg->lang243 }}" required="">
                                                <i class="icofont-envelope"></i>
                                            </div>
                                        </div>

                                        <div class="col-lg-6">
                                            <div class="form-input">
                                                <input type="password" class="Password" name="password" placeholder="{{ $langg->lang186 }}" required="">
                                                <i class="icofont-ui-password"></i>
                                            </div>

                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-input">
                                                <input type="password" class="Password" name="password_confirmation" placeholder="{{ $langg->lang187 }}" required="">
                                                <i class="icofont-ui-password"></i>
                                            </div>
                                        </div>

                                        @if($gs->is_capcha == 1)

                                            <div class="col-lg-6">

                                                <ul class="captcha-area">
                                                    <li>
                                                        <p>
                                                            <img class="codeimg1" src="{{asset("public/assets/images/capcha_code.png")}}" alt=""> <i
                                                                    class="fas fa-sync-alt pointer refresh_code "></i>
                                                        </p>

                                                    </li>
                                                </ul>

                                            </div>

                                            <div class="col-lg-6">

                                                <div class="form-input">
                                                    <input type="text" class="Password" name="codes" placeholder="{{ $langg->lang51 }}" required="">
                                                    <i class="icofont-refresh"></i>

                                                </div>


                                            </div>

                                        @endif

                                        <input type="hidden" name="vendor" value="1">
                                        <input class="mprocessdata" type="hidden" value="{{ $langg->lang188 }}">
                                        <button type="submit" class="submit-btn">{{ $langg->lang189 }}</button>

                                    </div>


                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- VENDOR LOGIN MODAL ENDS -->

<!-- Product Quick View Modal -->

<div class="modal fade" id="quickview" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog quickview-modal modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="submit-loader">
                <img src="{{asset('public/assets/images/'.$gs->loader)}}" alt="">
            </div>
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="container quick-view-modal">

                </div>
            </div>
        </div>
    </div>
</div>
<!-- Product Quick View Modal -->

<!-- Order Tracking modal Start-->
<div class="modal fade" id="track-order-modal" tabindex="-1" role="dialog" aria-labelledby="order-tracking-modal" aria-hidden="true">
    <div class="modal-dialog  modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title"><b>{{ $langg->lang772 }}</b></h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <div class="order-tracking-content">
                    <form id="track-form" class="track-form">
                        {{ csrf_field() }}
                        <input type="text" id="track-code" placeholder="{{ $langg->lang773 }}" required="">
                        <button type="submit" class="mybtn1">{{ $langg->lang774 }}</button>
                        <a href="#" data-toggle="modal" data-target="#order-tracking-modal"></a>
                    </form>
                </div>

                <div>
                    <div class="submit-loader d-none">
                        <img src="{{asset('public/assets/images/'.$gs->loader)}}" alt="">
                    </div>
                    <div id="track-order">

                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<!-- Order Tracking modal End -->

<script type="text/javascript">
    var mainurl = "{{url('/')}}";
    var gs = {!! json_encode($gs) !!};
    var langg = {!! json_encode($langg) !!};
</script>

<!-- jquery -->
{{-- <script src="{{asset('public/assets/front/js/all.js')}}"></script> --}}
<script src="{{asset('public/assets/front/js/jquery.js')}}"></script>
<script src="{{asset('public/assets/front/js/vue.js')}}"></script>
<script src="{{asset('public/assets/front/jquery-ui/jquery-ui.min.js')}}"></script>
<!-- popper -->
<script src="{{asset('public/assets/front/js/popper.min.js')}}"></script>
<!-- bootstrap -->
<script src="{{asset('public/assets/front/js/bootstrap.min.js')}}"></script>
<!-- plugin js-->
<script src="{{asset('public/assets/front/js/plugin.js')}}"></script>

<script src="{{asset('public/assets/front/js/xzoom.min.js')}}"></script>
<script src="{{asset('public/assets/front/js/jquery.hammer.min.js')}}"></script>
<script src="{{asset('public/assets/front/js/setup.js')}}"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.min.js"></script>

<script src="{{asset('public/assets/front/js/toastr.js')}}"></script>
<!-- main -->
<script src="{{asset('public/assets/front/js/main.js')}}"></script>
<!-- custom -->
<script src="{{asset('public/assets/front/js/custom.js')}}"></script>

{!! $seo->google_analytics !!}

@if($gs->is_talkto == 1)
    <!--Start of Tawk.to Script-->
    {!! $gs->talkto !!}
    <!--End of Tawk.to Script-->
@endif

@yield('scripts')

<script>
    $(document).ready(function () {
        $(window).resize(function () {
            if ($(window).width() >= 980) {
                $(".navbar .dropdown-toggle").hover(function () {
                    $(this).parent().toggleClass("show");
                    $(this).parent().find(".dropdown-menu").toggleClass("show");
                });
                $(".navbar .dropdown-menu").mouseleave(function () {
                    $(this).removeClass("show");
                });
            }
        });

        $('.brand-slider').slick({
            dots: false,
            vertical: true,
            slidesToShow: 1,
            slidesToScroll: 1,
            verticalSwiping: true,
            autoplay: true,
            autoplaySpeed: 1000,
        });
    });
</script>

</body>

</html>
