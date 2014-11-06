<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="filters">
	<div class="intro-filter clearfix filters-section"
		data-behavior="tooltip" data-position="left" title="旅程">

		<h6 class="filter-label col-3">预产期</h6>

		<form class="form-horizontal trip-form">

			<i class="icon icon-gray"></i> <input name="checkin"
				type="text" class="checkin input-medium" placeholder="时间">
				<input name="onboardtime" type="hidden" id="onboardtime" />
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


	 <div class="clearfix checkbox-group neighborhoods filters-section"
       data-name="neighborhoods"
       data-behavior="tooltip"
       data-position="left"
       title="Neighborhoods">

    <h6 class="filter-label col-3">籍贯</h6>

    <div class="control-group">
      <div class="filters-columns">
          <label class="media media-condensed checkbox">
            <input type="checkbox" name="neighborhood" value="1" class="pull-left">
            <span class="media-body">湖南</span>
          </label>
          <label class="media media-condensed checkbox">
            <input type="checkbox" name="neighborhood" value="2" class="pull-left">
            <span class="media-body">山东</span>
          </label>
          <label class="media media-condensed checkbox">
            <input type="checkbox" name="neighborhood" value="3" class="pull-left">
            <span class="media-body">安徽</span>
          </label>
      </div>
     
      <div class="filters-more hide">
        <hr>
        <div class="filters-columns">
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="4" class="pull-left">
              <span class="media-body">河北</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="5" class="pull-left">
              <span class="media-body">四川</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="6" class="pull-left">
              <span class="media-body">湖北</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="7" class="pull-left">
              <span class="media-body">河南</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="8" class="pull-left">
              <span class="media-body">山西</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="9" class="pull-left">
              <span class="media-body">重庆</span>
            </label>
        </div>
      </div>
    </div>

    <a class="btn show-more">
      <span><i class="icon icon-caret-down"></i></span>
      <span class="hide"><i class="icon icon-caret-up"></i></span>
    </a>

  </div>
  
  
  <div class="clearfix keywords filters-section"
       data-behavior="tooltip"
       data-position="left"
       title="Keywords">

    <h6 class="filter-label col-3">关键字</h6>

    <form class="form-horizontal">
      <input class="keywords-input"
             type="text"
             name="keywords"
             placeholder="姓名, 其他要求">
    </form>

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