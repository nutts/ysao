<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="filters">
	<div class="intro-filter clearfix filters-section"
		data-behavior="tooltip" data-position="left" title="旅程">

		<h6 class="filter-label col-3">时间</h6>

		<form class="form-horizontal trip-form">

			<i class="icon icon-gray"></i> <input name="checkin"
				type="text" class="checkin input-medium" placeholder="预产期">
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
            <input type="checkbox" name="neighborhood" value="Chaoyang" class="pull-left">
            <span class="media-body">湖南</span>
          </label>
          <label class="media media-condensed checkbox">
            <input type="checkbox" name="neighborhood" value="Dongcheng" class="pull-left">
            <span class="media-body">山东</span>
          </label>
          <label class="media media-condensed checkbox">
            <input type="checkbox" name="neighborhood" value="Sunlitan" class="pull-left">
            <span class="media-body">安徽</span>
          </label>
      </div>
      <div class="filters-more hide">
        <hr>
        <div class="filters-columns">
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Ahn Jung" class="pull-left">
              <span class="media-body">Ahn Jung</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Bei Tai Ping Zhuang" class="pull-left">
              <span class="media-body">Bei Tai Ping Zhuang</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Chaoyang Park/Tuan Jie Hu" class="pull-left">
              <span class="media-body">Chaoyang Park/Tuan Jie Hu</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Dawanglu" class="pull-left">
              <span class="media-body">Dawanglu</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Dong Si" class="pull-left">
              <span class="media-body">Dong Si</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Dongzhimen" class="pull-left">
              <span class="media-body">Dongzhimen</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Fang Zhuang" class="pull-left">
              <span class="media-body">Fang Zhuang</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Fengtai" class="pull-left">
              <span class="media-body">Fengtai</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Foreign Trade" class="pull-left">
              <span class="media-body">Foreign Trade</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Haidian" class="pull-left">
              <span class="media-body">Haidian</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="ITC" class="pull-left">
              <span class="media-body">ITC</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Jinsong/Panjiayuan" class="pull-left">
              <span class="media-body">Jinsong/Panjiayuan</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Jiuxianqiao" class="pull-left">
              <span class="media-body">Jiuxianqiao</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Jiàn Wài Dàjiē" class="pull-left">
              <span class="media-body">Jiàn Wài Dàjiē</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Kaiyangli" class="pull-left">
              <span class="media-body">Kaiyangli</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Liang Ma Qiao/Sanyuanqiao" class="pull-left">
              <span class="media-body">Liang Ma Qiao/Sanyuanqiao</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Peace" class="pull-left">
              <span class="media-body">Peace</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Qianmen" class="pull-left">
              <span class="media-body">Qianmen</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Shazikou" class="pull-left">
              <span class="media-body">Shazikou</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Shichahai" class="pull-left">
              <span class="media-body">Shichahai</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Shilipu" class="pull-left">
              <span class="media-body">Shilipu</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Shuangjing" class="pull-left">
              <span class="media-body">Shuangjing</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Wai Avenue" class="pull-left">
              <span class="media-body">Wai Avenue</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Wangfujing/Dongdan" class="pull-left">
              <span class="media-body">Wangfujing/Dongdan</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Wangjing" class="pull-left">
              <span class="media-body">Wangjing</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Wudaokou" class="pull-left">
              <span class="media-body">Wudaokou</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Xicheng" class="pull-left">
              <span class="media-body">Xicheng</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Xuanwu" class="pull-left">
              <span class="media-body">Xuanwu</span>
            </label>
            <label class="media media-condensed checkbox">
              <input type="checkbox" name="neighborhood" value="Zuojiazhuang" class="pull-left">
              <span class="media-body">Zuojiazhuang</span>
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

    <h6 class="filter-label col-3">姓名</h6>

    <form class="form-horizontal">
      <input class="keywords-input"
             type="text"
             name="keywords"
             placeholder="姓名">
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