<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="utf-8"%>
<html lang="zh" xmlns:fb="http://ogp.me/ns/fb#">
<head>
<link
	href="css/common_o1.0.css" media="all" rel="stylesheet" type="text/css" />

<link
	href="css/map_search.css"
	media="screen" rel="stylesheet" type="text/css" />


<style>
</style>

<meta id="csrf-param-meta-tag" name="csrf-param"
	content="authenticity_token" />
<meta id="csrf-token-meta-tag" name="csrf-token" content="" />

<title>北京 月嫂 | 搜索 - Ysao</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<link rel="canonical" href="https://zh.airbnb.com/s/北京--中国">
<meta name="description" content="向在北京居住的人租房，房价每晚$16 SGD/起 510 房源。">
<meta property="og:image"
	content="https://a0.muscache.com/airbnb/static/logos/200x200-2bfa74c5a3542a898901cdee9638a6ee.png">
<meta name="viewport" content="width=1000,maximum-scale=1.0">
<link rel="image_src"
	href="https://a0.muscache.com/airbnb/static/airbnb_logo-0887e76cd6fd403d016dd652455acbb6.png">
<link rel="search" type="application/opensearchdescription+xml"
	href="/opensearch.xml" title="Airbnb">
<link rel="shortcut icon" type="image/x-icon"
	href="https://a0.muscache.com/airbnb/static/logotype_favicon-2e5a2c7c6a64c00b95ed01dec8b85f57.ico">
</head>
<body class=" ">

	<jsp:include page="header.html" />
	<!-- script src="scripts/header_cookie.js" type="text/javascript"></script-->
	<script src="scripts/jquery.min.js" type="text/javascript"></script>
	<!-- script>new HeaderPreload();</script-->

	<div class='span12 flash-container'>
    </div>


	<div class="sidebar">
		

		<jsp:include page="filter.jsp" />

			<input type="button" name="test_button" value="test_button" onclick="loadSearch();" />
		<div class="sidebar-header-placeholder"></div>
		<div class="search-results">

			<div class="alert disaster-rooster hide row-space-4">
				<a href="#" class="alert-close close">&times;</a>
				<div class="h4 row-space-2">
					为受<span class='disaster-name'></span>影响而无家可归的人士提供的紧急住宿
				</div>
				<a class="btn btn-primary disaster-guest" data-url-prefix="/s?">
					我需要一个地方住 </a> <a class="btn btn-special disaster-host"
					data-url-prefix="/disaster/"> 我可以免费提供我的空间 </a>
			</div>

			<div class="outer-listings-container">
				<ul id="results" class="listings-container list-unstyled clearfix">
<!-- 
<li class="search-result"><h4>GOOODDD</h4><div data-name="??" data-url="/aunts/show.jsp?aid=1 data-user="1" class="listing"><div class="listing-img media-photo"><a class="wish_list_button" rel="tooltip" data-tooltip-position="right" title="????????????"><i class="icon icon-heart"></i></a><div class="listing-img-container"><img src="images/016ed0c9_original.jpg" data-current="0"  data-urls="https://a1.muscache.com/ic/pictures/18026901/016ed0c9_original.jpg"/></div></div></li><li class="search-result"><h4>GOOODDD</h4><div data-name="??" data-url="/aunts/show.jsp?aid=2 data-user="2" class="listing"><div class="listing-img media-photo"><a class="wish_list_button" rel="tooltip" data-tooltip-position="right" title="????????????"><i class="icon icon-heart"></i></a><div class="listing-img-container"><img src="images/016ed0c9_original.jpg" data-current="0"  data-urls="https://a1.muscache.com/ic/pictures/18026901/016ed0c9_original.jpg"/></div></div></li><li class="search-result"><h4>GOOODDD</h4><div data-name="??" data-url="/aunts/show.jsp?aid=3 data-user="3" class="listing"><div class="listing-img media-photo"><a class="wish_list_button" rel="tooltip" data-tooltip-position="right" title="????????????"><i class="icon icon-heart"></i></a><div class="listing-img-container"><img src="images/016ed0c9_original.jpg" data-current="0"  data-urls="https://a1.muscache.com/ic/pictures/18026901/016ed0c9_original.jpg"/></div></div></li>
-->

					<li class="search-result">

						<div data-lat="39.97250876985633" data-lng="116.4171318731256"
							data-name="Best Homestay close to BJ center"
							data-url="/rooms/1195448?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
							data-user="3630863" data-id="1195448" class="listing">

							<div class="listing-img media-photo">
								<a class="wish_list_button" data-hosting_id="1195448"
									data-name="Best Homestay close to BJ center" data-address="北京"
									data-img="https://a1.muscache.com/ic/pictures/18026901/016ed0c9_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u"
									rel="tooltip" data-tooltip-position="right"
									title="保存此房源以便以后评价。"> <i class="icon icon-heart"></i>

								</a>

								<div class="listing-img-container">
								<!-- 
									<img
										src="https://a1.muscache.com/ic/pictures/18026901/016ed0c9_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u"
										data-current="0"
										data-urls="[&quot;https://a1.muscache.com/ic/pictures/18026901/016ed0c9_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/18026716/c2ff5d70_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/24471171/9eb5f3ed_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/24151070/03aed6ad_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/24151193/2c29d406_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/24151128/6f25b7b8_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/24151119/a24f4ce9_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/24471242/f2741cef_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/24471366/cf181a20_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/24151202/6a9c0c7a_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/24151230/40f9130f_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/24151276/e1af405d_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/24151256/e1ddfbc2_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/24151210/7159c90b_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/23800178/54a4081d_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/24151169/998b180a_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/23078014/c47c193a_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/17973212/c171f770_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/17973135/85f47be5_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/23078006/2afdef3b_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/23078118/7966043b_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/23078425/14348cf9_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/17973174/68cf96ad_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/17973295/02fbd647_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;]" />
									-->	
										 
										<img
										src="https://a1.muscache.com/ic/pictures/18026901/016ed0c9_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u"/>
								
								</div>


								<div class="target-prev listing-slideshow-target block-link">
									<i class="icon icon-chevron-left listing-slideshow-chevron"></i>
								</div>
								<a
									class="target-details
                    listing-slideshow-target
                    block-link
                    "
									href="/rooms/1195448?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"></a>
								<div class="target-next listing-slideshow-target block-link">
									<i class="icon icon-chevron-right listing-slideshow-chevron"></i>
								</div>

								<a class="listing-name media-caption h4"
									href="/rooms/1195448?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									<span class="btn btn-primary btn-small instant-book-button">
										即时预订 </span><br> Best Homestay close to BJ center
								</a> <i class="icon icon-comment listing-review-count"
									data-behavior="tooltip" title="此房源的评价"> <span class="count">15</span>

								</i>

							</div>


							<div class="listing-footer clearfix">

								<a href="/users/show/3630863"
									class="media-link media-photo host-img"> <img
									src="https://a2.muscache.com/ic/users/3630863/profile_pic/1394721935/original.jpg?interpolation=progressive-bicubic&amp;crop=w:w;*,*&amp;crop=h:h;*,*&amp;resize=50:*&amp;output-format=jpg&amp;output-quality=85" />
								</a> <a class="listing-quick-info"
									href="/rooms/1195448?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
									title="私人房间 | 安贞（Ahn Jung）, 北京"> <span
									class="listing-room-type"> 私人房间<br /> 安贞（Ahn
										Jung）,&nbsp;北京


								</span>
								</a> <a class="listing-price"
									href="/rooms/1195448?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									<span class="shift text-special price"> <span
										class="currency">$</span> <span class="h2 price-amount">33</span>
										<span class="currency"> SGD</span>
								</span> <span class="price-sub"> 每晚 </span>
								</a>

							</div>
						</div>


					</li>


					<li class="search-result">

						<div data-lat="39.94113446058807" data-lng="116.42848009410883"
							data-name="Cozy room in perfect location"
							data-url="/rooms/1228323?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
							data-user="2607692" data-id="1228323" class="listing">

							<div class="listing-img media-photo">
								<a class="wish_list_button" data-hosting_id="1228323"
									data-name="Cozy room in perfect location" data-address="北京"
									data-img="https://a0.muscache.com/ic/pictures/19065027/e9b5c266_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u"
									rel="tooltip" data-tooltip-position="right"
									title="保存此房源以便以后评价。"> <i class="icon icon-heart"></i>

								</a>

								<div class="listing-img-container">
									<img
										src="https://a0.muscache.com/ic/pictures/19065027/e9b5c266_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u"
										data-current="0"
										data-urls="[&quot;https://a0.muscache.com/ic/pictures/19065027/e9b5c266_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/19065031/450ba82d_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/19065030/1d632168_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/18916902/9a6ee12a_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/18916878/790af14b_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/18490789/46a63a83_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/18490792/e84f9a94_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/18916923/855cf162_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/18916883/bd71ccc4_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;]" />
								</div>


								<div class="target-prev listing-slideshow-target block-link">
									<i class="icon icon-chevron-left listing-slideshow-chevron"></i>
								</div>
								<a
									class="target-details
                    listing-slideshow-target
                    block-link
                    "
									href="/rooms/1228323?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"></a>
								<div class="target-next listing-slideshow-target block-link">
									<i class="icon icon-chevron-right listing-slideshow-chevron"></i>
								</div>

								<a class="listing-name media-caption h4"
									href="/rooms/1228323?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									Cozy room in perfect location </a> <i
									class="icon icon-comment listing-review-count"
									data-behavior="tooltip" title="此房源的评价"> <span class="count">27</span>

								</i>

							</div>


							<div class="listing-footer clearfix">

								<a href="/users/show/2607692"
									class="media-link media-photo host-img"> <img
									src="https://a2.muscache.com/ic/users/2607692/profile_pic/1339447076/original.jpg?interpolation=progressive-bicubic&amp;crop=w:w;*,*&amp;crop=h:h;*,*&amp;resize=50:*&amp;output-format=jpg&amp;output-quality=85" />
								</a> <a class="listing-quick-info"
									href="/rooms/1228323?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
									title="私人房间 | Dongzhimen, 北京"> <span
									class="listing-room-type"> 私人房间<br />
										Dongzhimen,&nbsp;北京


								</span>
								</a> <a class="listing-price"
									href="/rooms/1228323?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									<span class="shift text-special price"> <span
										class="currency">$</span> <span class="h2 price-amount">37</span>
										<span class="currency"> SGD</span>
								</span> <span class="price-sub"> 每晚 </span>
								</a>

							</div>
						</div>


					</li>


					<li class="search-result">

						<div data-lat="39.92429510058122" data-lng="116.4992213008772"
							data-name="红领巾公园东大3居高端国际公寓带管家服务"
							data-url="/rooms/834989?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
							data-user="4377197" data-id="834989" class="listing">

							<div class="listing-img media-photo">
								<a class="wish_list_button" data-hosting_id="834989"
									data-name="红领巾公园东大3居高端国际公寓带管家服务" data-address="北京"
									data-img="https://a2.muscache.com/ic/pictures/12073785/6d0ce7be_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v"
									rel="tooltip" data-tooltip-position="right"
									title="保存此房源以便以后评价。"> <i class="icon icon-heart"></i>

								</a>

								<div class="listing-img-container">
									<img
										src="https://a2.muscache.com/ic/pictures/12073785/6d0ce7be_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v"
										data-current="0"
										data-urls="[&quot;https://a2.muscache.com/ic/pictures/12073785/6d0ce7be_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/12073773/0b6916e7_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/12166527/77f44851_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/12073757/dfb8a6b7_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/12073808/044bc240_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/12073833/091598bf_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/12073840/2372452d_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/12073845/96acfb8c_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/12073869/282fe94a_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/12073883/29515081_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/12073942/ab2b3e1c_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/12073953/24251e24_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/12073990/e149425e_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/12074044/e499bdc3_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/12074105/57b148e6_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/12074130/037174f7_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/12073893/f86c2f4e_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/12073899/f0703d4c_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/12073907/cec00435_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/12073925/bd9a6a7b_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/12073919/4c9fe63d_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/11974449/97c351eb_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/11974448/01e43e52_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/13076583/397d455d_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/11974432/f6785b1c_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/11974452/5a3881d7_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/11974454/16addc09_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/12722902/72d554f3_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;]" />
								</div>


								<div class="target-prev listing-slideshow-target block-link">
									<i class="icon icon-chevron-left listing-slideshow-chevron"></i>
								</div>
								<a
									class="target-details
                    listing-slideshow-target
                    block-link
                    "
									href="/rooms/834989?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"></a>
								<div class="target-next listing-slideshow-target block-link">
									<i class="icon icon-chevron-right listing-slideshow-chevron"></i>
								</div>

								<a class="listing-name media-caption h4"
									href="/rooms/834989?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									红领巾公园东大3居高端国际公寓带管家服务 </a> <i
									class="icon icon-comment listing-review-count"
									data-behavior="tooltip" title="此房源的评价"> <span class="count">8</span>

								</i>

							</div>


							<div class="listing-footer clearfix">

								<a href="/users/show/4377197"
									class="media-link media-photo host-img"> <img
									src="https://a2.muscache.com/ic/users/4377197/profile_pic/1394074294/original.jpg?interpolation=progressive-bicubic&amp;crop=w:w;*,*&amp;crop=h:h;*,*&amp;resize=50:*&amp;output-format=jpg&amp;output-quality=85" />
								</a> <a class="listing-quick-info"
									href="/rooms/834989?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
									title="私人房间 | Shilipu, 北京"> <span class="listing-room-type">
										私人房间<br /> Shilipu,&nbsp;北京


								</span>
								</a> <a class="listing-price"
									href="/rooms/834989?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									<span class="shift text-special price"> <span
										class="currency">$</span> <span class="h2 price-amount">94</span>
										<span class="currency"> SGD</span>
								</span> <span class="price-sub"> 每晚 </span>
								</a>

							</div>
						</div>


					</li>


					<li class="search-result">

						<div data-lat="39.93982058924825" data-lng="116.41339461597732"
							data-name="传统 hutong Gulou east stree-胡同猫"
							data-url="/rooms/1383228?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
							data-user="4861004" data-id="1383228" class="listing">

							<div class="listing-img media-photo">
								<a class="wish_list_button" data-hosting_id="1383228"
									data-name="传统 hutong Gulou east stree-胡同猫" data-address="北京"
									data-img="https://a0.muscache.com/ic/pictures/29502209/cfc35de2_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u"
									rel="tooltip" data-tooltip-position="right"
									title="保存此房源以便以后评价。"> <i class="icon icon-heart"></i>

								</a>

								<div class="listing-img-container">
									<img
										src="https://a0.muscache.com/ic/pictures/29502209/cfc35de2_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u"
										data-current="0"
										data-urls="[&quot;https://a0.muscache.com/ic/pictures/29502209/cfc35de2_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/32707600/e156e0a7_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/32711913/9ba46361_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/29502202/7541ee55_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/29502193/90ab9011_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/29502215/8e2345ba_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/29502161/04c22961_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/29502175/50cb6288_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/29502224/493e990b_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/29502233/4794eea4_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/32711865/3c4e12eb_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/32714784/5b696e9a_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/32714950/d6aad0c5_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/32834146/bd0f2f60_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/32834164/d47a9616_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/32834153/5a3d97ba_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/32834150/46ee73cd_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/32834166/94e9ad3e_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/32834141/46a61a58_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/32834158/e13f88a8_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;]" />
								</div>


								<div class="target-prev listing-slideshow-target block-link">
									<i class="icon icon-chevron-left listing-slideshow-chevron"></i>
								</div>
								<a
									class="target-details
                    listing-slideshow-target
                    block-link
                    "
									href="/rooms/1383228?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"></a>
								<div class="target-next listing-slideshow-target block-link">
									<i class="icon icon-chevron-right listing-slideshow-chevron"></i>
								</div>

								<a class="listing-name media-caption h4"
									href="/rooms/1383228?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									传统 hutong Gulou east stree-胡同猫 </a> <i
									class="icon icon-comment listing-review-count"
									data-behavior="tooltip" title="此房源的评价"> <span class="count">4</span>

								</i>

							</div>


							<div class="listing-footer clearfix">

								<a href="/users/show/4861004"
									class="media-link media-photo host-img"> <img
									src="https://a2.muscache.com/ic/users/4861004/profile_pic/1390905269/original.jpg?interpolation=progressive-bicubic&amp;crop=w:w;*,*&amp;crop=h:h;*,*&amp;resize=50:*&amp;output-format=jpg&amp;output-quality=85" />
								</a> <a class="listing-quick-info"
									href="/rooms/1383228?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
									title="私人房间 | Dongzhimen, 北京"> <span
									class="listing-room-type"> 私人房间<br />
										Dongzhimen,&nbsp;北京


								</span>
								</a> <a class="listing-price"
									href="/rooms/1383228?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									<span class="shift text-special price"> <span
										class="currency">$</span> <span class="h2 price-amount">33</span>
										<span class="currency"> SGD</span>
								</span> <span class="price-sub"> 每晚 </span>
								</a>

							</div>
						</div>


					</li>


					<li class="search-result">

						<div data-lat="39.94032099365852" data-lng="116.44226783470181"
							data-name="High-flr studio in downtown Beijing"
							data-url="/rooms/287511?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
							data-user="1456491" data-id="287511" class="listing">

							<div class="listing-img media-photo">
								<a class="wish_list_button" data-hosting_id="287511"
									data-name="High-flr studio in downtown Beijing"
									data-address="北京"
									data-img="https://a1.muscache.com/ic/pictures/2980388/c09aa048_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u"
									rel="tooltip" data-tooltip-position="right"
									title="保存此房源以便以后评价。"> <i class="icon icon-heart"></i>

								</a>

								<div class="listing-img-container">
									<img
										src="https://a1.muscache.com/ic/pictures/2980388/c09aa048_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u"
										data-current="0"
										data-urls="[&quot;https://a1.muscache.com/ic/pictures/2980388/c09aa048_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/2980385/ef85c55a_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/2980390/d4b58044_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/2980396/077e05a0_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/2980399/e55ba1b2_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/2980402/6a60c829_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/2980409/679f68f2_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/2980412/179068b3_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/4513803/71b928e4_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/2980417/b5409c9f_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/2980421/436df73a_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/2980424/af58e088_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/2980436/f90c327c_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;]" />
								</div>


								<div class="target-prev listing-slideshow-target block-link">
									<i class="icon icon-chevron-left listing-slideshow-chevron"></i>
								</div>
								<a
									class="target-details
                    listing-slideshow-target
                    block-link
                    "
									href="/rooms/287511?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"></a>
								<div class="target-next listing-slideshow-target block-link">
									<i class="icon icon-chevron-right listing-slideshow-chevron"></i>
								</div>

								<a class="listing-name media-caption h4"
									href="/rooms/287511?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									High-flr studio in downtown Beijing </a> <i
									class="icon icon-comment listing-review-count"
									data-behavior="tooltip" title="此房源的评价"> <span class="count">16</span>

								</i>

							</div>


							<div class="listing-footer clearfix">

								<a href="/users/show/1456491"
									class="media-link media-photo host-img"> <img
									src="https://a2.muscache.com/ic/users/1456491/profile_pic/1367242276/original.jpg?interpolation=progressive-bicubic&amp;crop=w:w;*,*&amp;crop=h:h;*,*&amp;resize=50:*&amp;output-format=jpg&amp;output-quality=85" />
								</a> <a class="listing-quick-info"
									href="/rooms/287511?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
									title="整套房子/公寓 | Sunlitan, 北京"> <span
									class="listing-room-type"> 整套房子/公寓<br />
										Sunlitan,&nbsp;北京


								</span>
								</a> <a class="listing-price"
									href="/rooms/287511?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									<span class="shift text-special price"> <span
										class="currency">$</span> <span class="h2 price-amount">89</span>
										<span class="currency"> SGD</span>
								</span> <span class="price-sub"> 每晚 </span>
								</a>

							</div>
						</div>


					</li>


					<li class="search-result">

						<div data-lat="39.92270519285724" data-lng="116.61726214673567"
							data-name="3 Br 2 bathroom suitable sleep 4- 7"
							data-url="/rooms/2146289?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
							data-user="10772693" data-id="2146289" class="listing">

							<div class="listing-img media-photo">
								<a class="wish_list_button" data-hosting_id="2146289"
									data-name="3 Br 2 bathroom suitable sleep 4- 7"
									data-address="北京"
									data-img="https://a0.muscache.com/ic/pictures/29166931/a57ae3cd_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u"
									rel="tooltip" data-tooltip-position="right"
									title="保存此房源以便以后评价。"> <i class="icon icon-heart"></i>

								</a>

								<div class="listing-img-container">
									<img
										src="https://a0.muscache.com/ic/pictures/29166931/a57ae3cd_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u"
										data-current="0"
										data-urls="[&quot;https://a0.muscache.com/ic/pictures/29166931/a57ae3cd_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/29167115/c895cebf_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/29167089/f24ababc_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/29167095/c6d77234_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/29167099/8bdffa96_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/29167102/4fc68bfd_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/29167105/64301261_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/29167106/403117a0_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/29167109/6d4ca7f8_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/29167111/f7cb814c_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/29167086/cf1aff49_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/29167118/19aa84db_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/29167122/b9b86e77_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/29167126/346beadd_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/29167132/b711580c_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/29167139/3899aadb_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/29167144/07db8701_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/29167148/09294a0f_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/29167150/51dee10a_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/29167153/927f043f_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/29167155/997710a8_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/31378295/6e33ed08_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/31379833/99ab8060_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;]" />
								</div>


								<div class="target-prev listing-slideshow-target block-link">
									<i class="icon icon-chevron-left listing-slideshow-chevron"></i>
								</div>
								<a
									class="target-details
                    listing-slideshow-target
                    block-link
                    "
									href="/rooms/2146289?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"></a>
								<div class="target-next listing-slideshow-target block-link">
									<i class="icon icon-chevron-right listing-slideshow-chevron"></i>
								</div>

								<a class="listing-name media-caption h4"
									href="/rooms/2146289?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									3 Br 2 bathroom suitable sleep 4- 7 </a> <i
									class="icon icon-comment listing-review-count"
									data-behavior="tooltip" title="此房源的评价"> <span class="count">7</span>

								</i>

							</div>


							<div class="listing-footer clearfix">

								<a href="/users/show/10772693"
									class="media-link media-photo host-img"> <img
									src="https://a2.muscache.com/ic/users/10772693/profile_pic/1387796497/original.jpg?interpolation=progressive-bicubic&amp;crop=w:w;*,*&amp;crop=h:h;*,*&amp;resize=50:*&amp;output-format=jpg&amp;output-quality=85" />
								</a> <a class="listing-quick-info"
									href="/rooms/2146289?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
									title="整套房子/公寓 | Zhuang, 北京"> <span
									class="listing-room-type"> 整套房子/公寓<br /> Zhuang,&nbsp;北京


								</span>
								</a> <a class="listing-price"
									href="/rooms/2146289?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									<span class="shift text-special price"> <span
										class="currency">$</span> <span class="h2 price-amount">116</span>
										<span class="currency"> SGD</span>
								</span> <span class="price-sub"> 每晚 </span>
								</a>

							</div>
						</div>


					</li>


					<li class="search-result">

						<div data-lat="39.944857398171614" data-lng="116.39962146135129"
							data-name="Rare, Well-Designed Hutong Hideaway"
							data-url="/rooms/569938?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
							data-user="446864" data-id="569938" class="listing">

							<div class="listing-img media-photo">
								<a class="wish_list_button" data-hosting_id="569938"
									data-name="Rare, Well-Designed Hutong Hideaway"
									data-address="北京"
									data-img="https://a0.muscache.com/ic/pictures/11033116/a5e0f411_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v"
									rel="tooltip" data-tooltip-position="right"
									title="保存此房源以便以后评价。"> <i class="icon icon-heart"></i>

								</a>



								<div class="listing-img-container">
									<img class="hide" data-current="0"
										data-urls="[&quot;https://a0.muscache.com/ic/pictures/11033116/a5e0f411_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/11033017/ebd9c41e_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/11033023/ed578798_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/11033054/1bad5f03_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/11033060/4ec0b6fa_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/11033077/fbc75751_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/11033088/40374ec6_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/11033095/6f2b6fda_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/11033106/9b388807_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/11033111/bb347d4e_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/11033121/dab1df86_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/11033131/1a954eb1_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/11033153/61e5b1a7_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/11033174/52314bba_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/11033185/82b1bdcc_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/11033194/8224813d_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/11033202/ffcbf0f3_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/11033205/e16c7f72_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/11033210/43e30894_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;]" />
								</div>

								<noscript>
									<img
										src="https://a0.muscache.com/ic/pictures/11033116/a5e0f411_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v" />
								</noscript>


								<div class="target-prev listing-slideshow-target block-link">
									<i class="icon icon-chevron-left listing-slideshow-chevron"></i>
								</div>
								<a
									class="target-details
                    listing-slideshow-target
                    block-link
                    "
									href="/rooms/569938?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"></a>
								<div class="target-next listing-slideshow-target block-link">
									<i class="icon icon-chevron-right listing-slideshow-chevron"></i>
								</div>

								<a class="listing-name media-caption h4"
									href="/rooms/569938?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									Rare, Well-Designed Hutong Hideaway </a> <i
									class="icon icon-comment listing-review-count"
									data-behavior="tooltip" title="此房源的评价"> <span class="count">11</span>

								</i>

							</div>


							<div class="listing-footer clearfix">

								<a href="/users/show/446864"
									class="media-link media-photo host-img"> <img
									src="https://a1.muscache.com/ic/users/446864/profile_pic/1369785859/original.jpg?interpolation=progressive-bicubic&amp;crop=w:w;*,*&amp;crop=h:h;*,*&amp;resize=50:*&amp;output-format=jpg&amp;output-quality=85" />
								</a> <a class="listing-quick-info"
									href="/rooms/569938?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
									title="私人房间 | Shichahai, 北京"> <span
									class="listing-room-type"> 私人房间<br /> Shichahai,&nbsp;北京


								</span>
								</a> <a class="listing-price"
									href="/rooms/569938?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									<span class="shift text-special price"> <span
										class="currency">$</span> <span class="h2 price-amount">84</span>
										<span class="currency"> SGD</span>
								</span> <span class="price-sub"> 每晚 </span>
								</a>

							</div>
						</div>


					</li>


					<li class="search-result">

						<div data-lat="39.895719978276674" data-lng="116.45909597179664"
							data-name="1BR Service Apt in Fulicheng (CBD) "
							data-url="/rooms/398784?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
							data-user="192875" data-id="398784" class="listing">

							<div class="listing-img media-photo">
								<a class="wish_list_button" data-hosting_id="398784"
									data-name="1BR Service Apt in Fulicheng (CBD) "
									data-address="北京"
									data-img="https://a0.muscache.com/ic/pictures/10579714/d0f121db_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u"
									rel="tooltip" data-tooltip-position="right"
									title="保存此房源以便以后评价。"> <i class="icon icon-heart"></i>

								</a>



								<div class="listing-img-container">
									<img class="hide" data-current="0"
										data-urls="[&quot;https://a0.muscache.com/ic/pictures/10579714/d0f121db_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/4487030/aa8740ce_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/4487020/6859819f_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/4487022/141c2eb4_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/4487028/cd1b2bde_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/4487026/86fe2272_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/10579720/9f0379b4_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/10579721/49a570f3_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/10579708/db3ac1d1_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/10579712/2c76b567_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;]" />
								</div>

								<noscript>
									<img
										src="https://a0.muscache.com/ic/pictures/10579714/d0f121db_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u" />
								</noscript>


								<div class="target-prev listing-slideshow-target block-link">
									<i class="icon icon-chevron-left listing-slideshow-chevron"></i>
								</div>
								<a
									class="target-details
                    listing-slideshow-target
                    block-link
                    "
									href="/rooms/398784?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"></a>
								<div class="target-next listing-slideshow-target block-link">
									<i class="icon icon-chevron-right listing-slideshow-chevron"></i>
								</div>

								<a class="listing-name media-caption h4"
									href="/rooms/398784?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									1BR Service Apt in Fulicheng (CBD) </a>


							</div>


							<div class="listing-footer clearfix">

								<a href="/users/show/192875"
									class="media-link media-photo host-img"> <img
									src="https://a0.muscache.com/ic/users/192875/profile_pic/1392520104/original.jpg?interpolation=progressive-bicubic&amp;crop=w:w;*,*&amp;crop=h:h;*,*&amp;resize=50:*&amp;output-format=jpg&amp;output-quality=85" />
								</a> <a class="listing-quick-info"
									href="/rooms/398784?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
									title="整套房子/公寓 | Shuangjing, 北京"> <span
									class="listing-room-type"> 整套房子/公寓<br />
										Shuangjing,&nbsp;北京


								</span>
								</a> <a class="listing-price"
									href="/rooms/398784?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									<span class="shift text-special price"> <span
										class="currency">$</span> <span class="h2 price-amount">167</span>
										<span class="currency"> SGD</span>
								</span> <span class="price-sub"> 每晚 </span>
								</a>

							</div>
						</div>


					</li>


					<li class="search-result">

						<div data-lat="40.00867941706408" data-lng="116.53083955389607"
							data-name="Comfy Flat Near Airport &amp; 798 Area"
							data-url="/rooms/2415302?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
							data-user="10000266" data-id="2415302" class="listing">

							<div class="listing-img media-photo">
								<a class="wish_list_button" data-hosting_id="2415302"
									data-name="Comfy Flat Near Airport &amp; 798 Area"
									data-address="北京"
									data-img="https://a1.muscache.com/ic/pictures/34600214/11339078_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u"
									rel="tooltip" data-tooltip-position="right"
									title="保存此房源以便以后评价。"> <i class="icon icon-heart"></i>

								</a>



								<div class="listing-img-container">
									<img class="hide" data-current="0"
										data-urls="[&quot;https://a1.muscache.com/ic/pictures/34600214/11339078_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/32640059/42b5b26f_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/34601157/0188c98b_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/34695235/5e7e53c8_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/34603585/7301d528_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/32639328/4bbeefc5_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/32640411/b6459bd0_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/32245284/02fa8883_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;]" />
								</div>

								<noscript>
									<img
										src="https://a1.muscache.com/ic/pictures/34600214/11339078_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u" />
								</noscript>


								<div class="target-prev listing-slideshow-target block-link">
									<i class="icon icon-chevron-left listing-slideshow-chevron"></i>
								</div>
								<a
									class="target-details
                    listing-slideshow-target
                    block-link
                    "
									href="/rooms/2415302?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"></a>
								<div class="target-next listing-slideshow-target block-link">
									<i class="icon icon-chevron-right listing-slideshow-chevron"></i>
								</div>

								<a class="listing-name media-caption h4"
									href="/rooms/2415302?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									<span class="btn btn-primary btn-small instant-book-button">
										即时预订 </span><br> Comfy Flat Near Airport &amp; 798 Area
								</a> <i class="icon icon-comment listing-review-count"
									data-behavior="tooltip" title="此房源的评价"> <span class="count">2</span>

								</i>

							</div>


							<div class="listing-footer clearfix">

								<a href="/users/show/10000266"
									class="media-link media-photo host-img"> <img
									src="https://a0.muscache.com/ic/users/10000266/profile_pic/1384419716/original.jpg?interpolation=progressive-bicubic&amp;crop=w:w;*,*&amp;crop=h:h;*,*&amp;resize=50:*&amp;output-format=jpg&amp;output-quality=85" />
								</a> <a class="listing-quick-info"
									href="/rooms/2415302?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
									title="私人房间 | Chaoyang, 北京"> <span
									class="listing-room-type"> 私人房间<br /> Chaoyang,&nbsp;北京


								</span>
								</a> <a class="listing-price"
									href="/rooms/2415302?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									<span class="shift text-special price"> <span
										class="currency">$</span> <span class="h2 price-amount">17</span>
										<span class="currency"> SGD</span>
								</span> <span class="price-sub"> 每晚 </span>
								</a>

							</div>
						</div>


					</li>


					<li class="search-result">

						<div data-lat="39.93674374196305" data-lng="116.44876339257206"
							data-name="Quiet Room near Sanlitun Village"
							data-url="/rooms/1022435?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
							data-user="5628977" data-id="1022435" class="listing">

							<div class="listing-img media-photo">
								<a class="wish_list_button" data-hosting_id="1022435"
									data-name="Quiet Room near Sanlitun Village" data-address="北京"
									data-img="https://a2.muscache.com/ic/pictures/15971393/2149f65a_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v"
									rel="tooltip" data-tooltip-position="right"
									title="保存此房源以便以后评价。"> <i class="icon icon-heart"></i>

								</a>



								<div class="listing-img-container">
									<img class="hide" data-current="0"
										data-urls="[&quot;https://a2.muscache.com/ic/pictures/15971393/2149f65a_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/15971548/29feb00a_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/15971446/86ec2935_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/15971493/fb1b12d4_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/15971147/67a18527_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/15971307/d20aeb98_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/15970772/01bb89d7_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/15970838/f9e2430e_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/15970985/b2e1f094_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/15971112/aae0bb74_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/15971020/0035761c_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/15971584/f824648d_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/15971607/de325c56_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/15971628/09dc37b0_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/16063252/a41f633e_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/16180978/2dcc1728_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/16181223/178a503b_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;]" />
								</div>

								<noscript>
									<img
										src="https://a2.muscache.com/ic/pictures/15971393/2149f65a_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v" />
								</noscript>


								<div class="target-prev listing-slideshow-target block-link">
									<i class="icon icon-chevron-left listing-slideshow-chevron"></i>
								</div>
								<a
									class="target-details
                    listing-slideshow-target
                    block-link
                    "
									href="/rooms/1022435?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"></a>
								<div class="target-next listing-slideshow-target block-link">
									<i class="icon icon-chevron-right listing-slideshow-chevron"></i>
								</div>

								<a class="listing-name media-caption h4"
									href="/rooms/1022435?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									Quiet Room near Sanlitun Village </a> <i
									class="icon icon-comment listing-review-count"
									data-behavior="tooltip" title="此房源的评价"> <span class="count">4</span>

								</i>

							</div>


							<div class="listing-footer clearfix">

								<a href="/users/show/5628977"
									class="media-link media-photo host-img"> <img
									src="https://a0.muscache.com/ic/users/5628977/profile_pic/1364742464/original.jpg?interpolation=progressive-bicubic&amp;crop=w:w;*,*&amp;crop=h:h;*,*&amp;resize=50:*&amp;output-format=jpg&amp;output-quality=85" />
								</a> <a class="listing-quick-info"
									href="/rooms/1022435?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
									title="私人房间 | Sunlitan, 北京"> <span
									class="listing-room-type"> 私人房间<br /> Sunlitan,&nbsp;北京


								</span>
								</a> <a class="listing-price"
									href="/rooms/1022435?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									<span class="shift text-special price"> <span
										class="currency">$</span> <span class="h2 price-amount">42</span>
										<span class="currency"> SGD</span>
								</span> <span class="price-sub"> 每晚 </span>
								</a>

							</div>
						</div>


					</li>


					<li class="search-result">

						<div data-lat="39.921000169713395" data-lng="116.42152430494603"
							data-name="Fly by Knight Courtyard Double Bed2"
							data-url="/rooms/225479?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
							data-user="1149170" data-id="225479" class="listing">

							<div class="listing-img media-photo">
								<a class="wish_list_button" data-hosting_id="225479"
									data-name="Fly by Knight Courtyard Double Bed2"
									data-address="北京"
									data-img="https://a2.muscache.com/ic/pictures/10551471/cb3aedcb_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v"
									rel="tooltip" data-tooltip-position="right"
									title="保存此房源以便以后评价。"> <i class="icon icon-heart"></i>

								</a>



								<div class="listing-img-container">
									<img class="hide" data-current="0"
										data-urls="[&quot;https://a2.muscache.com/ic/pictures/10551471/cb3aedcb_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/10551400/6c578646_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/10551405/b694af9d_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/10551410/7c476f4d_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/10551418/3c93be81_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/10551426/c22d4d70_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/10551434/837e62c0_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/10551443/8504c630_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/10551451/217330f6_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/10551463/132e8473_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/10551484/9573f4c9_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/10551494/170950da_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/10551502/1cde449c_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/10551516/ec58bfe1_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/10551534/afa1163a_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/10551549/65f0d509_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/10551559/97b39cbd_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/10551569/cd4d1393_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/10551718/ccb0a1f6_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/10551642/475504fd_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a0.muscache.com/ic/pictures/10551672/cccaba9c_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a1.muscache.com/ic/pictures/10551688/4c71cf58_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/10551701/cec85a5c_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v&quot;, &quot;https://a2.muscache.com/ic/pictures/10551728/11d04cd7_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/10551731/4eb004d5_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/10551736/a96803db_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/10551740/9451e638_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/10551743/510768ff_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/10551754/ccdf6ecc_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/2045771/c482682c_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;]" />
								</div>

								<noscript>
									<img
										src="https://a2.muscache.com/ic/pictures/10551471/cb3aedcb_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=v" />
								</noscript>


								<div class="target-prev listing-slideshow-target block-link">
									<i class="icon icon-chevron-left listing-slideshow-chevron"></i>
								</div>
								<a
									class="target-details
                    listing-slideshow-target
                    block-link
                    "
									href="/rooms/225479?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"></a>
								<div class="target-next listing-slideshow-target block-link">
									<i class="icon icon-chevron-right listing-slideshow-chevron"></i>
								</div>

								<a class="listing-name media-caption h4"
									href="/rooms/225479?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									Fly by Knight Courtyard Double Bed2 </a> <i
									class="icon icon-comment listing-review-count"
									data-behavior="tooltip" title="此房源的评价"> <span class="count">6</span>

								</i>

							</div>


							<div class="listing-footer clearfix">

								<a href="/users/show/1149170"
									class="media-link media-photo host-img"> <img
									src="https://a1.muscache.com/ic/users/1149170/profile_pic/1392219449/original.jpg?interpolation=progressive-bicubic&amp;crop=w:w;*,*&amp;crop=h:h;*,*&amp;resize=50:*&amp;output-format=jpg&amp;output-quality=85" />
								</a> <a class="listing-quick-info"
									href="/rooms/225479?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
									title="私人房间 | Wangfujing/Dongdan, 北京"> <span
									class="listing-room-type"> 私人房间<br />
										Wangfujing/Dongdan,&nbsp;北京


								</span>
								</a> <a class="listing-price"
									href="/rooms/225479?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									<span class="shift text-special price"> <span
										class="currency">$</span> <span class="h2 price-amount">115</span>
										<span class="currency"> SGD</span>
								</span> <span class="price-sub"> 每晚 </span>
								</a>

							</div>
						</div>


					</li>


					<li class="search-result">

						<div data-lat="40.00010541844221" data-lng="116.3412276583127"
							data-name="Big Flat, 1BR, Tsinghua, Wudaokou"
							data-url="/rooms/1769854?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
							data-user="9297894" data-id="1769854" class="listing">

							<div class="listing-img media-photo">
								<a class="wish_list_button" data-hosting_id="1769854"
									data-name="Big Flat, 1BR, Tsinghua, Wudaokou" data-address="北京"
									data-img="https://a1.muscache.com/ic/pictures/24992537/e42eb34f_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u"
									rel="tooltip" data-tooltip-position="right"
									title="保存此房源以便以后评价。"> <i class="icon icon-heart"></i>

								</a>



								<div class="listing-img-container">
									<img class="hide" data-current="0"
										data-urls="[&quot;https://a1.muscache.com/ic/pictures/24992537/e42eb34f_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/24992553/1f344c9a_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/24992568/44e3c752_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/24992585/ad176343_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/24992604/f0b0ec1a_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/24992626/8834f35c_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/24992641/760ca619_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/26215174/fe1c09d1_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/26220275/08ee0d70_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;]" />
								</div>

								<noscript>
									<img
										src="https://a1.muscache.com/ic/pictures/24992537/e42eb34f_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u" />
								</noscript>


								<div class="target-prev listing-slideshow-target block-link">
									<i class="icon icon-chevron-left listing-slideshow-chevron"></i>
								</div>
								<a
									class="target-details
                    listing-slideshow-target
                    block-link
                    "
									href="/rooms/1769854?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"></a>
								<div class="target-next listing-slideshow-target block-link">
									<i class="icon icon-chevron-right listing-slideshow-chevron"></i>
								</div>

								<a class="listing-name media-caption h4"
									href="/rooms/1769854?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									Big Flat, 1BR, Tsinghua, Wudaokou </a> <i
									class="icon icon-comment listing-review-count"
									data-behavior="tooltip" title="此房源的评价"> <span class="count">2</span>

								</i>

							</div>


							<div class="listing-footer clearfix">

								<a href="/users/show/9297894"
									class="media-link media-photo host-img"> <img
									src="https://a1.muscache.com/ic/users/9297894/profile_pic/1381217084/original.jpg?interpolation=progressive-bicubic&amp;crop=w:w;*,*&amp;crop=h:h;*,*&amp;resize=50:*&amp;output-format=jpg&amp;output-quality=85" />
								</a> <a class="listing-quick-info"
									href="/rooms/1769854?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
									title="整套房子/公寓 | 五道口, 北京"> <span class="listing-room-type">
										整套房子/公寓<br /> 五道口,&nbsp;北京


								</span>
								</a> <a class="listing-price"
									href="/rooms/1769854?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									<span class="shift text-special price"> <span
										class="currency">$</span> <span class="h2 price-amount">63</span>
										<span class="currency"> SGD</span>
								</span> <span class="price-sub"> 每晚 </span>
								</a>

							</div>
						</div>


					</li>


					<li class="search-result">

						<div data-lat="40.0060354538537" data-lng="116.3602088871712"
							data-name="Cozy apartment in WUDAOKOU area！！"
							data-url="/rooms/1478954?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
							data-user="5796917" data-id="1478954" class="listing">

							<div class="listing-img media-photo">
								<a class="wish_list_button" data-hosting_id="1478954"
									data-name="Cozy apartment in WUDAOKOU area！！" data-address="北京"
									data-img="https://a2.muscache.com/ic/pictures/21858376/307479c7_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u"
									rel="tooltip" data-tooltip-position="right"
									title="保存此房源以便以后评价。"> <i class="icon icon-heart"></i>

								</a>



								<div class="listing-img-container">
									<img class="hide" data-current="0"
										data-urls="[&quot;https://a2.muscache.com/ic/pictures/21858376/307479c7_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/21858252/b4c72c16_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/21858266/fd90abec_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/21858281/78708a41_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/21858287/dacca952_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/21858271/837d538f_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/21858296/eca67a6b_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/21858339/68405a3e_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/21858344/c991a573_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/21858329/d929c0e1_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/21858320/66981bd3_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;]" />
								</div>

								<noscript>
									<img
										src="https://a2.muscache.com/ic/pictures/21858376/307479c7_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u" />
								</noscript>


								<div class="target-prev listing-slideshow-target block-link">
									<i class="icon icon-chevron-left listing-slideshow-chevron"></i>
								</div>
								<a
									class="target-details
                    listing-slideshow-target
                    block-link
                    "
									href="/rooms/1478954?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"></a>
								<div class="target-next listing-slideshow-target block-link">
									<i class="icon icon-chevron-right listing-slideshow-chevron"></i>
								</div>

								<a class="listing-name media-caption h4"
									href="/rooms/1478954?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									Cozy apartment in WUDAOKOU area！！ </a> <i
									class="icon icon-comment listing-review-count"
									data-behavior="tooltip" title="此房源的评价"> <span class="count">2</span>

								</i>

							</div>


							<div class="listing-footer clearfix">

								<a href="/users/show/5796917"
									class="media-link media-photo host-img"> <img
									src="https://a2.muscache.com/ic/users/5796917/profile_pic/1366960580/original.jpg?interpolation=progressive-bicubic&amp;crop=w:w;*,*&amp;crop=h:h;*,*&amp;resize=50:*&amp;output-format=jpg&amp;output-quality=85" />
								</a> <a class="listing-quick-info"
									href="/rooms/1478954?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
									title="私人房间 | 五道口, 北京"> <span class="listing-room-type">
										私人房间<br /> 五道口,&nbsp;北京


								</span>
								</a> <a class="listing-price"
									href="/rooms/1478954?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									<span class="shift text-special price"> <span
										class="currency">$</span> <span class="h2 price-amount">41</span>
										<span class="currency"> SGD</span>
								</span> <span class="price-sub"> 每晚 </span>
								</a>

							</div>
						</div>


					</li>


					<li class="search-result">

						<div data-lat="39.896369520900215" data-lng="116.38587942473026"
							data-name="Courtyard in Hutong @ Centre Peking"
							data-url="/rooms/2711941?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
							data-user="6796893" data-id="2711941" class="listing">

							<div class="listing-img media-photo">
								<a class="wish_list_button" data-hosting_id="2711941"
									data-name="Courtyard in Hutong @ Centre Peking"
									data-address="北京"
									data-img="https://a0.muscache.com/ic/pictures/35407772/2bbe1db7_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u"
									rel="tooltip" data-tooltip-position="right"
									title="保存此房源以便以后评价。"> <i class="icon icon-heart"></i>

								</a>



								<div class="listing-img-container">
									<img class="hide" data-current="0"
										data-urls="[&quot;https://a0.muscache.com/ic/pictures/35407772/2bbe1db7_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/35407779/7c8592a9_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/35407759/4b409580_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/35407791/955a4d08_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/35407813/c35fa022_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/35407824/303e2558_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/35407837/8c474fcc_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/35407752/54bc5e13_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/35407725/551060d6_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/35407744/21e68820_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/35407911/585e2c20_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/35407877/ea98f9cc_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/35407717/9fe0c3f9_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/35407901/fe3ed635_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/35407921/10761ac7_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/35407887/f27d29a8_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/35407855/8d5953b4_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/35407866/e0c7df8e_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/35407940/3b393659_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;]" />
								</div>

								<noscript>
									<img
										src="https://a0.muscache.com/ic/pictures/35407772/2bbe1db7_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u" />
								</noscript>


								<div class="target-prev listing-slideshow-target block-link">
									<i class="icon icon-chevron-left listing-slideshow-chevron"></i>
								</div>
								<a
									class="target-details
                    listing-slideshow-target
                    block-link
                    "
									href="/rooms/2711941?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"></a>
								<div class="target-next listing-slideshow-target block-link">
									<i class="icon icon-chevron-right listing-slideshow-chevron"></i>
								</div>

								<a class="listing-name media-caption h4"
									href="/rooms/2711941?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									<span class="btn btn-primary btn-small instant-book-button">
										即时预订 </span><br> Courtyard in Hutong @ Centre Peking
								</a>


							</div>


							<div class="listing-footer clearfix">

								<a href="/users/show/6796893"
									class="media-link media-photo host-img"> <img
									src="https://a1.muscache.com/ic/users/6796893/profile_pic/1393481954/original.jpg?interpolation=progressive-bicubic&amp;crop=w:w;*,*&amp;crop=h:h;*,*&amp;resize=50:*&amp;output-format=jpg&amp;output-quality=85" />
								</a> <a class="listing-quick-info"
									href="/rooms/2711941?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
									title="私人房间 | Qianmen, 北京"> <span class="listing-room-type">
										私人房间<br /> Qianmen,&nbsp;北京


								</span>
								</a> <a class="listing-price"
									href="/rooms/2711941?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									<span class="shift text-special price"> <span
										class="currency">$</span> <span class="h2 price-amount">50</span>
										<span class="currency"> SGD</span>
								</span> <span class="price-sub"> 每晚 </span>
								</a>

							</div>
						</div>


					</li>


					<li class="search-result">

						<div data-lat="39.92519733621062" data-lng="116.42811931034929"
							data-name="Perfect Home base while in Beijing "
							data-url="/rooms/1984128?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
							data-user="3541967" data-id="1984128" class="listing">

							<div class="listing-img media-photo">
								<a class="wish_list_button" data-hosting_id="1984128"
									data-name="Perfect Home base while in Beijing "
									data-address="北京"
									data-img="https://a0.muscache.com/ic/pictures/27356801/796f9af3_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u"
									rel="tooltip" data-tooltip-position="right"
									title="保存此房源以便以后评价。"> <i class="icon icon-heart"></i>

								</a>



								<div class="listing-img-container">
									<img class="hide" data-current="0"
										data-urls="[&quot;https://a0.muscache.com/ic/pictures/27356801/796f9af3_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/27356510/73368d45_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/27356843/db36be83_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/27356498/c6532e47_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/27357735/2b4649ae_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/27356904/48db3037_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/27356417/d10ab380_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;]" />
								</div>

								<noscript>
									<img
										src="https://a0.muscache.com/ic/pictures/27356801/796f9af3_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u" />
								</noscript>


								<div class="target-prev listing-slideshow-target block-link">
									<i class="icon icon-chevron-left listing-slideshow-chevron"></i>
								</div>
								<a
									class="target-details
                    listing-slideshow-target
                    block-link
                    "
									href="/rooms/1984128?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"></a>
								<div class="target-next listing-slideshow-target block-link">
									<i class="icon icon-chevron-right listing-slideshow-chevron"></i>
								</div>

								<a class="listing-name media-caption h4"
									href="/rooms/1984128?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									Perfect Home base while in Beijing </a> <i
									class="icon icon-comment listing-review-count"
									data-behavior="tooltip" title="此房源的评价"> <span class="count">1</span>

								</i>

							</div>


							<div class="listing-footer clearfix">

								<a href="/users/show/3541967"
									class="media-link media-photo host-img"> <img
									src="https://a1.muscache.com/ic/users/3541967/profile_pic/1385390707/original.jpg?interpolation=progressive-bicubic&amp;crop=w:w;*,*&amp;crop=h:h;*,*&amp;resize=50:*&amp;output-format=jpg&amp;output-quality=85" />
								</a> <a class="listing-quick-info"
									href="/rooms/1984128?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
									title="私人房间 | 建国门/北京火车站, 北京"> <span
									class="listing-room-type"> 私人房间<br /> 建国门/北京火车站,&nbsp;北京


								</span>
								</a> <a class="listing-price"
									href="/rooms/1984128?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									<span class="shift text-special price"> <span
										class="currency">$</span> <span class="h2 price-amount">44</span>
										<span class="currency"> SGD</span>
								</span> <span class="price-sub"> 每晚 </span>
								</a>

							</div>
						</div>


					</li>


					<li class="search-result">

						<div data-lat="39.941163371083405" data-lng="116.4350001193966"
							data-name="1-Bed in Nice Apt, Central Location"
							data-url="/rooms/1631919?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
							data-user="8670630" data-id="1631919" class="listing">

							<div class="listing-img media-photo">
								<a class="wish_list_button" data-hosting_id="1631919"
									data-name="1-Bed in Nice Apt, Central Location"
									data-address="北京"
									data-img="https://a2.muscache.com/ic/pictures/24318328/a17c2e29_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u"
									rel="tooltip" data-tooltip-position="right"
									title="保存此房源以便以后评价。"> <i class="icon icon-heart"></i>

								</a>



								<div class="listing-img-container">
									<img class="hide" data-current="0"
										data-urls="[&quot;https://a2.muscache.com/ic/pictures/24318328/a17c2e29_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/24319686/ab1b5be0_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/24318130/ab387240_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/24318205/d076ed1e_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/24318280/587d0973_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/24318015/a97d7ec2_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/24317979/9cae6813_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/24319448/8f641819_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/24319454/6ad80164_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;]" />
								</div>

								<noscript>
									<img
										src="https://a2.muscache.com/ic/pictures/24318328/a17c2e29_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u" />
								</noscript>


								<div class="target-prev listing-slideshow-target block-link">
									<i class="icon icon-chevron-left listing-slideshow-chevron"></i>
								</div>
								<a
									class="target-details
                    listing-slideshow-target
                    block-link
                    "
									href="/rooms/1631919?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"></a>
								<div class="target-next listing-slideshow-target block-link">
									<i class="icon icon-chevron-right listing-slideshow-chevron"></i>
								</div>

								<a class="listing-name media-caption h4"
									href="/rooms/1631919?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									1-Bed in Nice Apt, Central Location </a> <i
									class="icon icon-comment listing-review-count"
									data-behavior="tooltip" title="此房源的评价"> <span class="count">8</span>

								</i>

							</div>


							<div class="listing-footer clearfix">

								<a href="/users/show/8670630"
									class="media-link media-photo host-img"> <img
									src="https://a2.muscache.com/ic/users/8670630/profile_pic/1378482026/original.jpg?interpolation=progressive-bicubic&amp;crop=w:w;*,*&amp;crop=h:h;*,*&amp;resize=50:*&amp;output-format=jpg&amp;output-quality=85" />
								</a> <a class="listing-quick-info"
									href="/rooms/1631919?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
									title="私人房间 | Sunlitan, 北京"> <span
									class="listing-room-type"> 私人房间<br /> Sunlitan,&nbsp;北京


								</span>
								</a> <a class="listing-price"
									href="/rooms/1631919?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									<span class="shift text-special price"> <span
										class="currency">$</span> <span class="h2 price-amount">76</span>
										<span class="currency"> SGD</span>
								</span> <span class="price-sub"> 每晚 </span>
								</a>

							</div>
						</div>


					</li>


					<li class="search-result">

						<div data-lat="39.94056338357555" data-lng="116.4425628932723"
							data-name="Delicate Apartment in Beijing"
							data-url="/rooms/314453?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
							data-user="1455726" data-id="314453" class="listing">

							<div class="listing-img media-photo">
								<a class="wish_list_button" data-hosting_id="314453"
									data-name="Delicate Apartment in Beijing" data-address="北京"
									data-img="https://a1.muscache.com/ic/pictures/24811883/dc3a8ea7_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u"
									rel="tooltip" data-tooltip-position="right"
									title="保存此房源以便以后评价。"> <i class="icon icon-heart"></i>

								</a>



								<div class="listing-img-container">
									<img class="hide" data-current="0"
										data-urls="[&quot;https://a1.muscache.com/ic/pictures/24811883/dc3a8ea7_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/24724838/f32171c9_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/24810496/d313a010_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/24810801/2c927274_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/24810894/09f2550b_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/24811270/38c36a4d_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/24811358/89d8f516_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/24811766/56b2874a_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/24811801/58c0f598_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/24811836/d9c6c4a2_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/24811639/60cec5fd_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;]" />
								</div>

								<noscript>
									<img
										src="https://a1.muscache.com/ic/pictures/24811883/dc3a8ea7_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u" />
								</noscript>


								<div class="target-prev listing-slideshow-target block-link">
									<i class="icon icon-chevron-left listing-slideshow-chevron"></i>
								</div>
								<a
									class="target-details
                    listing-slideshow-target
                    block-link
                    "
									href="/rooms/314453?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"></a>
								<div class="target-next listing-slideshow-target block-link">
									<i class="icon icon-chevron-right listing-slideshow-chevron"></i>
								</div>

								<a class="listing-name media-caption h4"
									href="/rooms/314453?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									Delicate Apartment in Beijing </a> <i
									class="icon icon-comment listing-review-count"
									data-behavior="tooltip" title="此房源的评价"> <span class="count">4</span>

								</i>

							</div>


							<div class="listing-footer clearfix">

								<a href="/users/show/1455726"
									class="media-link media-photo host-img"> <img
									src="https://a1.muscache.com/ic/users/1455726/profile_pic/1396243513/original.jpg?interpolation=progressive-bicubic&amp;crop=w:w;*,*&amp;crop=h:h;*,*&amp;resize=50:*&amp;output-format=jpg&amp;output-quality=85" />
								</a> <a class="listing-quick-info"
									href="/rooms/314453?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
									title="整套房子/公寓 | Sunlitan, 北京"> <span
									class="listing-room-type"> 整套房子/公寓<br />
										Sunlitan,&nbsp;北京


								</span>
								</a> <a class="listing-price"
									href="/rooms/314453?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									<span class="shift text-special price"> <span
										class="currency">$</span> <span class="h2 price-amount">85</span>
										<span class="currency"> SGD</span>
								</span> <span class="price-sub"> 每晚 </span>
								</a>

							</div>
						</div>


					</li>


					<li class="search-result">

						<div data-lat="39.99519215064092" data-lng="116.3414676330196"
							data-name="Cozy and clean in Wudakou! BLCU"
							data-url="/rooms/1345564?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
							data-user="7196347" data-id="1345564" class="listing">

							<div class="listing-img media-photo">
								<a class="wish_list_button" data-hosting_id="1345564"
									data-name="Cozy and clean in Wudakou! BLCU" data-address="北京"
									data-img="https://a1.muscache.com/ic/pictures/23934458/bb82f018_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u"
									rel="tooltip" data-tooltip-position="right"
									title="保存此房源以便以后评价。"> <i class="icon icon-heart"></i>

								</a>



								<div class="listing-img-container">
									<img class="hide" data-current="0"
										data-urls="[&quot;https://a1.muscache.com/ic/pictures/23934458/bb82f018_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/20275133/b86583d6_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a0.muscache.com/ic/pictures/23934424/fa66d084_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/23934484/5e9e1a07_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/20275109/464c7106_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a1.muscache.com/ic/pictures/20275118/41823c1b_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/20275137/1280d44f_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;, &quot;https://a2.muscache.com/ic/pictures/23934388/d8589772_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u&quot;]" />
								</div>

								<noscript>
									<img
										src="https://a1.muscache.com/ic/pictures/23934458/bb82f018_original.jpg?interpolation=progressive-bicubic&amp;size=x_medium&amp;output-format=jpg&amp;output-quality=85&amp;wm=u" />
								</noscript>


								<div class="target-prev listing-slideshow-target block-link">
									<i class="icon icon-chevron-left listing-slideshow-chevron"></i>
								</div>
								<a
									class="target-details
                    listing-slideshow-target
                    block-link
                    "
									href="/rooms/1345564?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"></a>
								<div class="target-next listing-slideshow-target block-link">
									<i class="icon icon-chevron-right listing-slideshow-chevron"></i>
								</div>

								<a class="listing-name media-caption h4"
									href="/rooms/1345564?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									Cozy and clean in Wudakou! BLCU </a> <i
									class="icon icon-comment listing-review-count"
									data-behavior="tooltip" title="此房源的评价"> <span class="count">5</span>

								</i>

							</div>


							<div class="listing-footer clearfix">

								<a href="/users/show/7196347"
									class="media-link media-photo host-img"> <img
									src="https://a0.muscache.com/ic/users/7196347/profile_pic/1372605714/original.jpg?interpolation=progressive-bicubic&amp;crop=w:w;*,*&amp;crop=h:h;*,*&amp;resize=50:*&amp;output-format=jpg&amp;output-quality=85" />
								</a> <a class="listing-quick-info"
									href="/rooms/1345564?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ"
									title="私人房间 | 五道口, 北京"> <span class="listing-room-type">
										私人房间<br /> 五道口,&nbsp;北京


								</span>
								</a> <a class="listing-price"
									href="/rooms/1345564?checkin=2014-04-24&amp;checkout=2014-04-30&amp;s=dMxJ">
									<span class="shift text-special price"> <span
										class="currency">$</span> <span class="h2 price-amount">36</span>
										<span class="currency"> SGD</span>
								</span> <span class="price-sub"> 每晚 </span>
								</a>

							</div>
						</div>


					</li>



				</ul>

			</div>

			<div class="results-footer">

				<div class="page-divider"></div>

				<div class="pagination-buttons-container">
					<div class="results_count">
						<h4>510个出租房源的1 – 18</h4>
					</div>
					<div class="pagination">
						<ul class="list-unstyled">
							<li class="active"><a rel="start" target="1"
								href="/s/%E5%8C%97%E4%BA%AC?cdn_spdy=1&amp;checkin=2014-04-24&amp;checkout=2014-04-30&amp;location=%E5%8C%97%E4%BA%AC&amp;ne_lat=40.09718819855099&amp;ne_lng=116.66326589861796&amp;page=1&amp;search_by_map=true&amp;sw_lat=39.79995558505683&amp;sw_lng=116.29522390643046&amp;zoom=11">1</a></li>
							<li><a rel="next" target="2"
								href="/s/%E5%8C%97%E4%BA%AC?cdn_spdy=1&amp;checkin=2014-04-24&amp;checkout=2014-04-30&amp;location=%E5%8C%97%E4%BA%AC&amp;ne_lat=40.09718819855099&amp;ne_lng=116.66326589861796&amp;page=2&amp;search_by_map=true&amp;sw_lat=39.79995558505683&amp;sw_lng=116.29522390643046&amp;zoom=11">2</a></li>
							<li><a target="3"
								href="/s/%E5%8C%97%E4%BA%AC?cdn_spdy=1&amp;checkin=2014-04-24&amp;checkout=2014-04-30&amp;location=%E5%8C%97%E4%BA%AC&amp;ne_lat=40.09718819855099&amp;ne_lng=116.66326589861796&amp;page=3&amp;search_by_map=true&amp;sw_lat=39.79995558505683&amp;sw_lng=116.29522390643046&amp;zoom=11">3</a></li>
							<li class="gap"><span class="gap">&hellip;</span></li>
							<li><a target="29"
								href="/s/%E5%8C%97%E4%BA%AC?cdn_spdy=1&amp;checkin=2014-04-24&amp;checkout=2014-04-30&amp;location=%E5%8C%97%E4%BA%AC&amp;ne_lat=40.09718819855099&amp;ne_lng=116.66326589861796&amp;page=29&amp;search_by_map=true&amp;sw_lat=39.79995558505683&amp;sw_lng=116.29522390643046&amp;zoom=11">29</a></li>
							<li class="next next_page"><a target="2" rel="next"
								href="/s/%E5%8C%97%E4%BA%AC?cdn_spdy=1&amp;checkin=2014-04-24&amp;checkout=2014-04-30&amp;location=%E5%8C%97%E4%BA%AC&amp;ne_lat=40.09718819855099&amp;ne_lng=116.66326589861796&amp;page=2&amp;search_by_map=true&amp;sw_lat=39.79995558505683&amp;sw_lng=116.29522390643046&amp;zoom=11">></a></li>
						</ul>
					</div>
				</div>

				<div class="breadcrumbs" itemprop="breadcrumb">
					<span itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
						<a href="/s/%E4%B8%AD%E5%9B%BD" itemprop="url"> <span
							itemprop="title">中国</span>
					</a> <i class="icon icon-chevron-right breadcrumb-spacer"></i>
					</span> <span itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
						<a href="/s/%E5%8C%97%E4%BA%AC--%E4%B8%AD%E5%9B%BD" itemprop="url">
							<span itemprop="title">北京</span>
					</a> <i class="icon icon-chevron-right breadcrumb-spacer"></i>
					</span> <span>北京</span>
				</div>

			</div>

		</div>
	</div>

	<button class="btn footer-toggle">
		<span class="open-content"> <i class="icon icon-globe"></i>
			语言和货币
		</span> <span class="close-content"><i class="icon icon-remove"></i>
			关闭</span>
	</button>

	</div>



	<div id="footer"
		class="row-space-top-4 container-brand-dark footer-surround footer-container">
		<div class="footer-content-container container page-container">
			<div class="row row-condensed">
				<div class="span2 col-2">
					<h5>地区设定</h5>

					<div class="language-curr-picker clearfix">
						<div class="language-picker"></div>
						<div class="currency-picker"></div>
					</div>
					<div id="use-english-language">
						<a href="#" class="picker-item" data-locale='en'>Airbnb.com in
							English</a>
					</div>
					<div>
						<ul id="asset-experiment-links" class="list-layout unstyled hide">
							<li id="show-pretzel" class="hide"><a
								class="btn btn-contrast btn-large large btn-block" href="#">Show
									Pretzel</a></li>
							<li id="hide-pretzel" class="hide"><a
								class="btn btn-contrast btn-large large btn-block" href="#">Hide
									Pretzel</a></li>
						</ul>
					</div>
				</div>

				<div class="span3 col-3 offset1 col-offset-1">
					<h5>公司信息</h5>
					<ul class="unstyled list-layout">
						<li><a href="/about/about-us">关于</a></li>
						<li><a href="/jobs">招贤纳士</a></li>
						<li><a href="/press/news">新闻</a></li>
						<li><a href="http://blog.airbnb.com">博客</a></li>
						<li><a href="/help">帮助</a></li>
						<li><a href="/policies">政策</a></li>
						<li><a href="/disaster-response">灾难响应</a></li>
						<li><a href="/terms">条款与隐私</a></li>
					</ul>
				</div>

				<div class="span3 col-3">
					<h5>发现</h5>
					<ul class="unstyled list-layout">
						<li><a href="/trust">信任与安全</a></li>
						<li><a href="/invite?r=6">邀请好友</a></li>
						<li><a href="/wishlists/airbnb_picks">Airbnb 精选</a></li>
						<li><a href="/mobile">移动版</a></li>
						<li><a href="/sitemaps">网站地图</a></li>
					</ul>
				</div>

				<div class="span3 col-3">
					<h5>出租</h5>
					<ul class="unstyled list-layout">
						<li><a href="/info/why_host">为什么要出租?</a></li>
						<li><a href="/hospitality">好客之道</a></li>
						<li><a href="/help/responsible-hosting">房东义务</a></li>
						<li><a href="/stories">故事</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="footer-content-container-slim container-semi-opaque">
			<div class="container page-container">
				<div class="row">
					<div class="text-center span4 col-4 col-offset-4 offset4">
						<h5>关注我们</h5>
						<ul class="unstyled list-unstyled list-inline">
							<li><a href="http://www.weibo.com/airbnb" target="_blank">新浪微博</a></li>
							<li><a href="//twitter.com/airbnb" target="_blank">
									Twitter </a></li>
							<li><a href="//www.facebook.com/airbnb" target="_blank">
									Facebook </a></li>
							<li><a href="https://plus.google.com/+airbnb"
								rel="publisher" target="_blank"> 谷歌 </a></li>
							<li><a href="http://www.youtube.com/airbnb" target="_blank">
									YouTube </a></li>
						</ul>
						<div id="copyright">&copy; Airbnb, Inc.</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<div id="fb-root"></div>

	<!--[if lt IE 9]>
      <script src="https://a0.muscache.com/airbnb/static/libs_jquery_1x-da2b7120de1fca716ec9b10839dfc882.js" type="text/javascript"></script>
    <![endif]-->
	<!--[if gte IE 9]><!-->
	<!-- 
	<script 	src="scripts/libs_jquery_2x.js"
		type="text/javascript"></script>
		--> 
		<script src="scripts/jquery-ui-1.10.4.js" type="text/javascript"></script>
	<!--<![endif]-->
	<!-- 
	<script
		src="scripts/o2.1.js"
		type="text/javascript"></script>
		-->
		<!-- 
	<script
		src="scripts/core.js"
		type="text/javascript"></script>
-->
	<script>
   /*    I18n.init(
        {"country":"US","currencies":{"ARS":{"symbol":"$","code_required":true,"options":null},"AUD":{"symbol":"$","code_required":true,"options":null},"BRL":{"symbol":"R$","code_required":false,"options":{"space_between_price_and_symbol":true}},"CAD":{"symbol":"$","code_required":true,"options":null},"CHF":{"symbol":"CHF","code_required":false,"options":{"position":"after","space_between_price_and_symbol":true}},"CNY":{"symbol":"&yen;","code_required":false,"options":{"unicode_symbol":"¥"}},"CZK":{"symbol":"&#75;&#269;","code_required":false,"options":{"unicode_symbol":"Kč"}},"DKK":{"symbol":"kr","code_required":true,"options":{"position":"after","space_between_price_and_symbol":true,"explicit_currency_not_aesthetic":true}},"EUR":{"symbol":"&euro;","code_required":false,"options":{"unicode_symbol":"€","position":"special"}},"GBP":{"symbol":"&pound;","code_required":false,"options":{"unicode_symbol":"£"}},"HKD":{"symbol":"$","code_required":true,"options":null},"HUF":{"symbol":"Ft","code_required":false,"options":null},"IDR":{"symbol":"Rp","code_required":false,"options":null},"ILS":{"symbol":"&#8362;","code_required":false,"options":{"unicode_symbol":"₪","space_between_price_and_symbol":true}},"INR":{"symbol":"&#8377;","code_required":false,"options":{"unicode_symbol":"₹"}},"JPY":{"symbol":"&yen;","code_required":false,"options":{"unicode_symbol":"¥","space_between_price_and_symbol":true}},"KRW":{"symbol":"&#8361;","code_required":false,"options":{"unicode_symbol":"₩","space_between_price_and_symbol":true}},"MYR":{"symbol":"&#82;&#77;","code_required":false,"options":{"unicode_symbol":"RM"}},"MXN":{"symbol":"$","code_required":true,"options":null},"NOK":{"symbol":"kr","code_required":true,"options":{"position":"after","space_between_price_and_symbol":true,"explicit_currency_not_aesthetic":true}},"NZD":{"symbol":"$","code_required":true,"options":null},"PHP":{"symbol":"&#8369;","code_required":false,"options":{"unicode_symbol":"₱"}},"PLN":{"symbol":"z&#22;&#322;","code_required":false,"options":{"unicode_symbol":"zł"}},"RUB":{"symbol":"&#1088;","code_required":false,"options":{"unicode_symbol":"р","position":"after"}},"SEK":{"symbol":"kr","code_required":true,"options":{"position":"after","space_between_price_and_symbol":true,"explicit_currency_not_aesthetic":true}},"SGD":{"symbol":"$","code_required":true,"options":null},"THB":{"symbol":"&#3647;","code_required":false,"options":{"unicode_symbol":"฿"}},"TRY":{"symbol":"&#84;&#76;","code_required":false,"options":{"unicode_symbol":"TL","position":"after","space_between_price_and_symbol":true}},"TWD":{"symbol":"$","code_required":true,"options":null},"USD":{"symbol":"$","code_required":false,"options":null},"VND":{"symbol":"&#8363;","code_required":false,"options":{"unicode_symbol":"₫"}},"ZAR":{"symbol":"R","code_required":true,"options":null}},"current_locale_name":"中文","languages":[{"locale_name":"Bahasa Indonesia","locale":"id"},{"locale_name":"Bahasa Melayu","locale":"ms"},{"locale_name":"Català","locale":"ca"},{"locale_name":"Dansk","locale":"da"},{"locale_name":"Deutsch","locale":"de"},{"locale_name":"English","locale":"en"},{"locale_name":"Español","locale":"es"},{"locale_name":"Eλληνικά","locale":"el"},{"locale_name":"Français","locale":"fr"},{"locale_name":"Italiano","locale":"it"},{"locale_name":"Magyar","locale":"hu"},{"locale_name":"Nederlands","locale":"nl"},{"locale_name":"Norsk","locale":"no"},{"locale_name":"Polski","locale":"pl"},{"locale_name":"Português","locale":"pt"},{"locale_name":"Suomi","locale":"fi"},{"locale_name":"Svenska","locale":"sv"},{"locale_name":"Türkçe","locale":"tr"},{"locale_name":"Íslenska","locale":"is"},{"locale_name":"Čeština","locale":"cs"},{"locale_name":"Русский","locale":"ru"},{"locale_name":"ภาษาไทย","locale":"th"},{"locale_name":"中文 (简体)","locale":"zh"},{"locale_name":"中文 (繁體)","locale":"zh-TW"},{"locale_name":"日本語","locale":"ja"},{"locale_name":"한국어","locale":"ko"}]}
      );
      I18n.extend({"Password":"\u5bc6\u7801","users.Confirm_Password_to_Continue":"\u786e\u8ba4\u5bc6\u7801\u4ee5\u7ee7\u7eed","users.Confirm_Password":"\u786e\u8ba4\u5bc6\u7801","users.Cancel":"\u53d6\u6d88","users.Please_enter_your_Airbnb_password_to_continue.":"\u4e3a\u4e86\u60a8\u7684\u5b89\u5168\uff0c\u8bf7\u8f93\u5165\u60a8\u7684Airbnb\u5bc6\u7801\u4ee5\u7ee7\u7eed\u64cd\u4f5c\u3002","user.signup.forgot_password":"\u5fd8\u8bb0\u5bc6\u7801\uff1f","users.Confirm_Facebook_Password":"\u786e\u8ba4Facebook\u5bc6\u7801","choose_language":"\u9009\u62e9\u8bed\u8a00","choose_currency":"\u9009\u62e9\u8d27\u5e01","clear_dates":"\u6e05\u9664\u65e5\u671f"});
  */   </script>


	<!-- script>
  (function(c,a){window.mixpanel=a;var b,d,h,e;
  a._i=[];a.init=function(b,c,f){function d(a,b){var c=b.split(".");2==c.length&&(a=a[c[0]],b=c[1]);a[b]=function(){a.push([b].concat(Array.prototype.slice.call(arguments,0)))}}var g=a;"undefined"!==typeof f?g=a[f]=[]:f="mixpanel";g.people=g.people||[];h=['disable','track','track_pageview','track_links','track_forms','register','register_once','unregister','identify','name_tag','set_config','people.identify','people.set','people.increment'];for(e=0;e<h.length;e++)d(g,h[e]);a._i.push([b,c,f])};a.__SV=1.1;})(document,window.mixpanel||[]);mixpanel.init("871bd83d174bd67e8c8643e833a4514d");
</script-->


	
	<script>
    //I18n.extend({"priv.everyone":"\u6bcf\u4e2a\u4eba","priv.only_me":"\u53ea\u6709\u6211","priv.description":"\u8c01\u53ef\u4ee5\u770b\u5230\u8fd9\u4e9b\uff1f","priv.everyone_description":"\u5bf9\u6240\u6709\u4eba\u53ef\u89c1\u5e76\u5305\u62ec\u5728\u60a8\u7684 Airbnb \u4e2a\u4eba\u8d44\u6599\u516c\u5171\u9875\u9762\u5185\u3002","priv.only_me_description":"\u4ec5\u81ea\u5df1\u53ef\u89c1\uff0c\u4e0d\u4f9b\u5206\u4eab\u3002","save_to_wish_list":"\u4fdd\u5b58\u5230Wish List","save_to_wish_list_and_fb":"\u4fdd\u5b58\u5230Wish List\u53caFacebook\u65f6\u95f4\u8f74","wl_modal.create_new":"\u521b\u5efa\u65b0\u7684","wl_modal.make_a_new":"\u521b\u5efa\u4e00\u4e2a\u65b0\u7684Wish List\u2026","wl_modal.create":"\u521b\u5efa","wl_modal.add_note":"\u6dfb\u52a0\u5907\u6ce8","wl_modal.add_to_timeline":"\u6dfb\u52a0\u5230\u65f6\u95f4\u8f74","wl_modal.share_wishlists_on_timeline":"\u628aWish Lists\u5206\u4eab\u5230\u65f6\u95f4\u8f74","wl_modal.done":"\u5b8c\u6210","wl_modal.save":"\u4fdd\u5b58","wl_modal.change_sharing":"\u60a8\u53ef\u4ee5\u968f\u65f6\u5728\u201c\u5e10\u53f7\u8bbe\u7f6e\u201d\u4e2d\u66f4\u6539\u5171\u4eab\u9009\u9879\u3002","refresh_list":"\u5237\u65b0\u5217\u8868","who_can_see_new_wishlist":"\u8c01\u53ef\u4ee5\u770b\u5230\u60a8\u7684\u65b0Wish List\uff1f"});
  </script>
 
	<!-- script
		src="scripts/map_search.js"
		type="text/javascript"--></script>

	<script>
   /*    try {
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-2725447-1']);
        _gaq.push(['_setDomainName', '.airbnb.com']);
        _gaq.push(['_setAllowLinker', true]);
        _gaq.push(['_trackPageview']);

        setTimeout(function() {
          var ga = document.createElement('script');
          ga.src = '//stats.g.doubleclick.net/dc.js';
          var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        }, 0);

        window.___gcfg = {lang: 'zh', parsetags: 'onload'};


        (function() {
          var initOptions = {"canonical_host":"zh.airbnb.com","canonical_url":"https://zh.airbnb.com/s/%E5%8C%97%E4%BA%AC--%E4%B8%AD%E5%9B%BD","locale":"zh"};
          Airbnb.init(initOptions);

          Airbnb.o2Version = "o2.1";

          Airbnb.LangCurrPicker.init();


          Airbnb.header = new Airbnb.Header();

          if (Airbnb.Tracking) {
            var userID = Airbnb.userAttributes.id || null,
                roleType = "production";

            Airbnb.Tracking.addDefaultContext();
            Airbnb.Tracking.addContext(
              _.extend({"o2Version":"o2.1","source":"monorail","platform":"js","version":"159cce1d610bce4e2cc7b11e8e5ad77a75c0d56d","controller":"search","action":"index","req_uuid":"07086340-d987-4b35-b2ca-b7b44c406f91"}, {
                user_id: userID
              }));

            Airbnb.addInitHook(function() {
              Airbnb.Tracking.init();

              if (Airbnb.ExceptionTracker && window.TraceKit) {
                Airbnb.ExceptionTracker.init(window.TraceKit,
                                             Airbnb.Tracking,
                                             userID,
                                             roleType);
              }

            });
          }

        })();

        Airbnb.Api.configure({"baseUrl":"https://zh.airbnb.com/api","key":"d306zoyjsyarp7ifhu67rjxn52tv0t20"});
 */

       /*    (function() {
            var flash = require('o2-flash');
            flash.display('.flash-container');
          })();

          require('map_search/MapSearchPage').attachTo('.map-search');
  jQuery(window).on('load', function() {
    Airbnb.Utils.logGoogleMapsTimings();
  });
  if (dataLayer) {
    dataLayer.push({dynx_params:
      {dynx_pagetype: 'p2', dynx_itemid: "beijing--china"}});
  }


      } catch(e) {
        if (window.TraceKit) {
          TraceKit.report(e);
        }
      } */
    </script>

	<script>
/* (function($, ua) {
  $(window).on('load.pellet', function(){
    if(ua.should_drop_pellet){
      Airbnb.Pellet.drop('kfgn8s24');
    }
  });

  if (ua.should_drop_sift_pellet) {
    $(window).on('load', function(){
      window._sift = window._sift || [];
      _sift.push(['_setAccount', '5d704de7e8']);
      _sift.push(['_setUserId', ua.eid || '']);
      _sift.push(['_setSessionId', Airbnb.Utils.readCookie('esid')]);
      _sift.push(['_trackPageview']);
      LazyLoad.js('//cdn.siftscience.com/s.js');
    });
  }

})(jQuery, Airbnb.userAttributes);
 */
</script>
<script>
function loadSearch(){
	$.ajax({
		type:"get",
		dataType:"json",
		url:"/ysao/Server",
	    data: "page=1&name=张三",
	    complete: function(){console.debug("complete");},
	    success:function(msg){
	    	
	    	console.debug("before empty " + $("li").length);
	    	
	    	$('#results').empty();

	    	console.debug("after empty " + $("li").length);
	    	console.debug(msg);
	    	//console.debug('<li class="search-result"><h4>GOOODDD</h4><div data-name="??" data-url="/aunts/show.jsp?aid=1 data-user="1" class="listing"><div class="listing-img media-photo"><a class="wish_list_button" rel="tooltip" data-tooltip-position="right" title="????????????"><i class="icon icon-heart"></i></a><div class="listing-img-container"><img src="images/016ed0c9_original.jpg" data-current="0"  data-urls="https://a1.muscache.com/ic/pictures/18026901/016ed0c9_original.jpg"/></div></div></li><li class="search-result"><h4>GOOODDD</h4><div data-name="??" data-url="/aunts/show.jsp?aid=2 data-user="2" class="listing"><div class="listing-img media-photo"><a class="wish_list_button" rel="tooltip" data-tooltip-position="right" title="????????????"><i class="icon icon-heart"></i></a><div class="listing-img-container"><img src="images/016ed0c9_original.jpg" data-current="0"  data-urls="https://a1.muscache.com/ic/pictures/18026901/016ed0c9_original.jpg"/></div></div></li><li class="search-result"><h4>GOOODDD</h4><div data-name="??" data-url="/aunts/show.jsp?aid=3 data-user="3" class="listing"><div class="listing-img media-photo"><a class="wish_list_button" rel="tooltip" data-tooltip-position="right" title="????????????"><i class="icon icon-heart"></i></a><div class="listing-img-container"><img src="images/016ed0c9_original.jpg" data-current="0"  data-urls="https://a1.muscache.com/ic/pictures/18026901/016ed0c9_original.jpg"/></div></div></li>');
	    	//$("#results").append('<li class="search-result"><h4>GOOODDD</h4><div data-name="??" data-url="/aunts/show.jsp?aid=1 data-user="1" class="listing"><div class="listing-img media-photo"><a class="wish_list_button" rel="tooltip" data-tooltip-position="right" title="????????????"><i class="icon icon-heart"></i></a><div class="listing-img-container"><img src="images/016ed0c9_original.jpg" data-current="0"  data-urls="https://a1.muscache.com/ic/pictures/18026901/016ed0c9_original.jpg"/></div></div></li><li class="search-result"><h4>GOOODDD</h4><div data-name="??" data-url="/aunts/show.jsp?aid=2 data-user="2" class="listing"><div class="listing-img media-photo"><a class="wish_list_button" rel="tooltip" data-tooltip-position="right" title="????????????"><i class="icon icon-heart"></i></a><div class="listing-img-container"><img src="images/016ed0c9_original.jpg" data-current="0"  data-urls="https://a1.muscache.com/ic/pictures/18026901/016ed0c9_original.jpg"/></div></div></li><li class="search-result"><h4>GOOODDD</h4><div data-name="??" data-url="/aunts/show.jsp?aid=3 data-user="3" class="listing"><div class="listing-img media-photo"><a class="wish_list_button" rel="tooltip" data-tooltip-position="right" title="????????????"><i class="icon icon-heart"></i></a><div class="listing-img-container"><img src="images/016ed0c9_original.jpg" data-current="0"  data-urls="https://a1.muscache.com/ic/pictures/18026901/016ed0c9_original.jpg"/></div></div></li>');
	    	
	    	//var obj = jQuery.parseJSON(msg);
	    	console.debug(msg.results);
	    	$("#results").append(msg.results);
	    	
	    	console.debug("appened");
	    	console.debug("after append2 " + $("li").length);
	    	console.debug("appended2");
	    }
	});
 
} 



</script>

	<script>
    //  LazyLoad.js('//a0.muscache.com/3p/_latest/abb_combo_all_fb_locale-zh_CN.js');
    </script>
<script>
console.debug("start process");

/*
$(".listing-img").find("img").each(function(){
	console.debug("processing image");
	//$(this).attr("src",$(this).data("urls")[0]).removeClass("hide");
	$(this).attr("src","https://a2.muscache.com/ic/pictures/12073785/6d0ce7be_original.jpg?interpolation=progressive-bicubic&size=x_medium&output-format=jpg&output-quality=85&wm=v");
	
	console.debug($(this));
})
 */
 
 //this.initPriceSlider=function(options){
$(document).ready(function(){});

		//console.debug("init...");
	   //var $slider=this.select($(".price-range-slider"));
	   
		/* var $slider=this.select(".price-range-slider");
		
		var minPrice = $slider.data("data-min-price-monthly");
		var maxPrice = $slider.data("data-max-price-monthly");
		
		$slider.data("minPrice", 1000);
		$slider.data("maxPrice", 4000);
		console.debug(minPrice);
		console.debug(maxPrice);
		
		$slider.find(".min-price .price").html(minPrice);
		
		$slider.find(".max-price .price").html(maxPrice);
		
		var updateLabels=function(e,ui){
			$slider.find(".min-price .price").html(ui.values[0]);
			$slider.find(".max-price .price").html(ui.values[1])
		};

		$slider.slider({
			range:true,values:[$slider.data("minPrice"),$slider.data("maxPrice")],min:$slider.data("minPrice"),max:$slider.data("maxPrice"),step:5,slide:updateLabels,change:function(e,ui){updateLabels(e,ui);
			$slider.trigger("click")
			}});
			
			 */
			
	 /* 	var $slider = $(".price-range-slider");
		
		//console.debug($slider.data());
		//console.debug($(".price-range-slider").data("data-min-price-monthly"));
		
		$slider.find(".min-price .price").html($slider.data("minPrice"));
		$slider.find(".max-price .price").html($slider.data("maxPrice"));
		
		//console.debug($("").data("minPrice"));
		
		//console.debug($slider.find(".min-price .price"));
		
		 var updateLabels=function(e,ui){
			console.debug(ui);
			$(".price-range-slider").find(".min-price .price").html(ui.values[0]);
			$(".price-range-slider").find(".max-price .price").html(ui.values[1])
		}; 
		
		$(".price-range-slider").slider({
			range:true,values:[$slider.data("minPrice"),$slider.data("maxPrice")],min:$slider.data("minPrice"),max:$slider.data("maxPrice"),step:5,slide:updateLabels,change:function(e,ui){
				console.debug("changed...");
				updateLabels(e,ui);
			$slider.trigger("click")
			}}); 
		console.debug("end slider init");
	});
 */
	

</script>
<script src="scripts/flight.js"></script>
<script src="scripts/aunt_search.js"></script>

<!-- script src="scripts/jquery-ui-1.10.4.js"></script-->
<script>
/*
 
$(document).ready(function(){
	
	var Filters = flight.component(function(){
		this.defaultAttrs({
			priceRangeSliderSelector: ".price-range-slider",
		});
	
		this.initPriceSlider=function(){
		
		console.debug("in function");
		var $slider = this.select('priceRangeSliderSelector');
		//var $slider = $(".price-range-slider");
		
		$slider.find(".min-price .price").html($slider.data("minPrice"));
		$slider.find(".max-price .price").html($slider.data("maxPrice"));
		
		console.debug($slider);
		//console.debug($slider2);
		console.debug($slider.data("minPrice"));
		
		var updateLabels=function(e,ui){
			console.debug("update Labels");
			
			$slider.find(".min-price .price").html(ui.values[0]);
			$slider.find(".max-price .price").html(ui.values[1]);
		};
		
		$slider.slider({
			range: true,
			values: [$slider.data("minPrice"), $slider.data("maxPrice")],
			min: $slider.data("minPrice"),
			max: $slider.data("maxPrice"),
			step: 5,
			slider: updateLabels,
			change: function(e,ui){
				updateLabels(e,ui),
				$slider.trigger("click");
			}});
	};
	
	
 	this.after("initialize", function(){
		console.debug("start to init price slider");
		this.initPriceSlider();
	});
	}); //end of component Filters;
	
	Filters.attachTo(".filters"); 
	
    //provide("aunt_search/Filters", Filters);
});
	*/
	
//http://simplebutgood.net/building-web-applications-with-flight-part-3/
	
	


</script>
</body>
</html>
<!-- ver. 159cce1d610bce4e2cc7b11e8e5ad77a75c0d56d -->
