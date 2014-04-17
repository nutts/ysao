<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="filters collapse">
	<div class="intro-filter clearfix filters-section"
		data-behavior="tooltip" data-position="left" title="旅程">

		<h6 class="filter-label col-3">时间</h6>

		<form class="form-horizontal trip-form">

			<i class="icon icon-arrow-right icon-gray"></i> <input name="checkin"
				type="text" class="checkin input-medium" placeholder="预产期">

			<!--  input name="checkout" type="text"
						class="checkout input-medium" placeholder="退房"-->


			<!-- div class="select input-medium">
						<select name="guests" class="guest-select" data-prefill="">
							<option value="1">1位房客</option>
							<option value="2">2位房客</option>
							<option value="3">3位房客</option>
							<option value="4">4位房客</option>
							<option value="5">5位房客</option>
							<option value="6">6位房客</option>
							<option value="7">7位房客</option>
							<option value="8">8位房客</option>
							<option value="9">9位房客</option>
							<option value="10">10位房客</option>
							<option value="11">11位房客</option>
							<option value="12">12位房客</option>
							<option value="13">13位房客</option>
							<option value="14">14位房客</option>
							<option value="15">15位房客</option>
							<option value="16">16+位房客</option>
						</select>
					</div-->

		</form>

	</div>


	<div class="clearfix filters-section
              intro-filter"
		data-behavior="tooltip" data-position="left" aria-label="Price">

		<h6 class="filter-label col-3">价格</h6>

		<div
			class="price-range-slider ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all"
			data-min-price="3000" data-max-price="8000" 
			aria-disabled="false">
			<div class="ui-slider-handle ui-state-default ui-corner-all"
				style="left: 0%;"></div>
			<div class="ui-slider-handle ui-state-default ui-corner-all"
				style="left: 100%;"></div>

			<p class="min-price">
				最低价: <strong> ￥<span class="price">12</span> 元
				</strong>
			</p>

			<p class="max-price">
				最高价: <strong> ￥<span class="price">1000</span> 元
				</strong>
			</p>

			<div class="ui-slider-range ui-widget-header ui-corner-all"
				style="left: 0%; width: 100%;"></div>

		</div>

	</div>


	<!-- 
			<div class="clearfix filters-section
              "
				data-behavior="tooltip" data-position="left" title="价格">

				<h6 class="filter-label col-3">价格</h6>

				<div class="price-range-slider" data-min-price-daily="12"
					data-max-price-daily="1000" data-min-price-monthly="190"
					data-max-price-monthly="20000">

					<div class="ui-slider-handle"></div>
					<div class="ui-slider-handle"></div>

					<p class="min-price">
						最低价格: <strong> $<span class="price"></span> 元
						</strong>
					</p>

					<p class="max-price">
						最高价格: <strong> $<span class="price"></span> 元
						</strong>
					</p>

				</div>

			</div>
 -->
	<div class="filters-footer">
		<button class="btn btn-block btn-large btn-primary search-button">
			搜索</button>
	</div>
</div>
<div class="sidebar-header clearfix">
	<button class="btn gray show-filters">
		<i class="icon icon-filter"></i> <span class="text-more-filters">更多筛选条件</span><span
			class="text-filters">筛选条件</span>
	</button>
	<ul class="applied-filters list-unstyled">
		<li class="hide" data-applied-filter="room_types"><h6>
				<span>&times;</span> 房间类型
			</h6></li>
		<li class="hide" data-applied-filter="price"><h6>
				<span>&times;</span> 价格
			</h6></li>
		<li class="hide" data-applied-filter="size"><h6>
				<span>&times;</span> 面积
			</h6></li>
		<li class="hide" data-applied-filter="connected"><h6>
				<span>&times;</span> 社会联系
			</h6></li>
		<li class="hide" data-applied-filter="empHost"><h6>
				<span>&times;</span> 员工房东
			</h6></li>
		<li class="hide" data-applied-filter="exp_types"><h6>
				<span>&times;</span> 体验
			</h6></li>
		<li class="hide" data-applied-filter="neighborhoods"><h6>
				<span>&times;</span> 街区
			</h6></li>
		<li class="hide" data-applied-filter="hosting_amenities"><h6>
				<span>&times;</span> 便利设施
			</h6></li>
		<li class="hide" data-applied-filter="property_type_id"><h6>
				<span>&times;</span> 房源类型
			</h6></li>
		<li class="hide" data-applied-filter="languages"><h6>
				<span>&times;</span> 房东语言
			</h6></li>
		<li class="hide" data-applied-filter="keywords"><h6>
				<span>&times;</span> 关键词
			</h6></li>
		<li class="results-count-item"><h1 class="results-count">510个出租房源
				&middot; 北京</h1></li>
	</ul>
</div>