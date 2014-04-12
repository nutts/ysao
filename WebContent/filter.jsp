<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<div class="filters collapse">
			<div class="intro-filter clearfix filters-section"
				data-behavior="tooltip" data-position="left" title="旅程">

				<h6 class="filter-label col-3">旅程</h6>

				<form class="form-horizontal trip-form">

					<i class="icon icon-arrow-right icon-gray"></i> <input
						name="checkin" type="text" class="checkin input-medium"
						placeholder="入住"> <input name="checkout" type="text"
						class="checkout input-medium" placeholder="退房">

					<div class="select input-medium">
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
					</div>

				</form>

			</div>

			<div class="clearfix room-type-group intro-filter filters-section"
				data-behavior="tooltip" data-position="left" title="房间类型">

				<h6 class="filter-label col-3">房间类型</h6>

				<div class="btn btn-large btn-flat icon-toggle"
					data-name="Entire home/apt">
					<i class="icon icon-entire-place"></i>
					<div class="h5">整套房子/公寓</div>
				</div>

				<div class="btn btn-large btn-flat icon-toggle"
					data-name="Private room">
					<i class="icon icon-private-room"></i>
					<div class="h5">私人房间</div>
				</div>

				<div class="btn btn-large btn-flat icon-toggle"
					data-name="Shared room">
					<i class="icon icon-shared-room"></i>
					<div class="h5">共用房间</div>
				</div>

				<i class="icon icon-question icon-gray" id="room-type-tooltip"></i>

				<div class="tooltip tooltip-right-top" role="tooltip"
					data-trigger="#room-type-tooltip">

					<div class="panel-body">
						<h5>整套房子/公寓</h5>
						<p>您可拥有整套房子的房源。</p>
					</div>
					<div class="panel-body">
						<h5>私人房间</h5>
						<p>您可拥有自已的房间，但需要與他人分享一些共用空间的房源。</p>
					</div>
					<div class="panel-body">
						<h5>共用房间</h5>
						<p>您将需要共用房间，或者房间本身可能就是共用空间的房源。</p>
					</div>

				</div>

			</div>

			<div
				class="clearfix exp-type-group filters-section intro-filter hide"
				data-behavior="tooltip" data-position="left" title="体验">

				<h6 class="filter-label col-3">体验</h6>

				<div class="btn btn-large btn-flat icon-toggle" data-name="business">
					<i class="icon icon-suitcase"></i>
					<div class="h5">商务</div>
				</div>

				<div class="btn btn-large btn-flat icon-toggle" data-name="family">
					<i class="icon icon-family"></i>
					<div class="h5">适合家庭</div>
				</div>

				<div class="btn btn-large btn-flat icon-toggle" data-name="romantic">
					<i class="icon icon-wine-glasses"></i>
					<div class="h5">浪漫</div>
				</div>

				<div class="btn btn-large btn-flat icon-toggle" data-name="social">
					<i class="icon icon-comments"></i>
					<div class="h5">社交</div>
				</div>

				<i class="icon icon-question icon-gray" id="exp-type-tooltip"></i>

				<div class="tooltip tooltip-right-top" role="tooltip"
					data-trigger="#exp-type-tooltip">

					<div class="panel-body">
						<h5>商务</h5>
						<p>这些房源最适合身处忙碌旅途的职业人士。</p>
					</div>
					<div class="panel-body">
						<h5>适合家庭</h5>
						<p>这些房源舒适宽敞，适合携带各年龄孩子的家庭。</p>
					</div>
					<div class="panel-body">
						<h5>浪漫</h5>
						<p>这些房源最适合希望享受浪漫私密氛围的情侣。</p>
					</div>
					<div class="panel-body">
						<h5>社交</h5>
						<p>通过这些房源，您可以结识新朋友，体验当地文化。</p>
					</div>

				</div>

			</div>

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
						最低价格: <strong> $<span class="price"></span> SGD
						</strong>
					</p>

					<p class="max-price">
						最高价格: <strong> $<span class="price"></span> SGD
						</strong>
					</p>

				</div>

			</div>

			<div class="clearfix size-group filters-section"
				data-behavior="tooltip" data-position="left" title="面积">

				<h6 class="filter-label col-3">面积</h6>

				<form class="form-horizontal">

					<div class="select input-medium">
						<select name="min_bedrooms">
							<option value="-1">卧室</option>
							<option value="1">1间卧室</option>
							<option value="2">2间卧室</option>
							<option value="3">3间卧室</option>
							<option value="4">4间卧室</option>
							<option value="5">5间卧室</option>
							<option value="6">6间卧室</option>
							<option value="7">7间卧室</option>
							<option value="8">8间卧室</option>
							<option value="9">9间卧室</option>
							<option value="10">10间卧室</option>
						</select>
					</div>

					<div class="select input-medium">
						<select name="min_bathrooms" class="input-medium">
							<option value="-1">卫生间</option>
							<option value="0.0">0个卫生间</option>
							<option value="0.5">0.5个卫生间</option>
							<option value="1.0">1个卫生间</option>
							<option value="1.5">1.5个卫生间</option>
							<option value="2.0">2个卫生间</option>
							<option value="2.5">2.5个卫生间</option>
							<option value="3.0">3个卫生间</option>
							<option value="3.5">3.5个卫生间</option>
							<option value="4.0">4个卫生间</option>
							<option value="4.5">4.5个卫生间</option>
							<option value="5.0">5个卫生间</option>
							<option value="5.5">5.5个卫生间</option>
							<option value="6.0">6个卫生间</option>
							<option value="6.5">6.5个卫生间</option>
							<option value="7.0">7个卫生间</option>
							<option value="7.5">7.5个卫生间</option>
							<option value="8">8+个卫生间</option>
						</select>
					</div>

					<div class="select input-medium">
						<select name="min_beds" class="input-medium">
							<option value="-1">床位</option>
							<option value="1">1张床</option>
							<option value="2">2张床</option>
							<option value="3">3张床</option>
							<option value="4">4张床</option>
							<option value="5">5张床</option>
							<option value="6">6张床</option>
							<option value="7">7张床</option>
							<option value="8">8张床</option>
							<option value="9">9张床</option>
							<option value="10">10张床</option>
							<option value="11">11张床</option>
							<option value="12">12张床</option>
							<option value="13">13张床</option>
							<option value="14">14张床</option>
							<option value="15">15张床</option>
							<option value="16">16+张床</option>
						</select>
					</div>

				</form>

			</div>
			
			<div class="clearfix checkbox-group neighborhoods filters-section"
				data-name="neighborhoods" data-behavior="tooltip"
				data-position="left" title="街区">

				<h6 class="filter-label col-3">街区</h6>

				<div class="control-group">
					<div class="filters-columns">
						<label class="media media-condensed checkbox"> <input
							type="checkbox" name="neighborhood" value="Chaoyang"
							class="pull-left"> <span class="media-body">Chaoyang</span>
						</label> <label class="media media-condensed checkbox"> <input
							type="checkbox" name="neighborhood" value="Dongcheng"
							class="pull-left"> <span class="media-body">Dongcheng</span>
						</label> <label class="media media-condensed checkbox"> <input
							type="checkbox" name="neighborhood" value="Sunlitan"
							class="pull-left"> <span class="media-body">Sunlitan</span>
						</label>
					</div>
					<div class="filters-more hide">
						<hr>
						<div class="filters-columns">
							<label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Ahn Jung"
								class="pull-left"> <span class="media-body">Ahn
									Jung</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Bei Tai Ping Zhuang"
								class="pull-left"> <span class="media-body">Bei
									Tai Ping Zhuang</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Beiyuan"
								class="pull-left"> <span class="media-body">Beiyuan</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood"
								value="Chaoyang Park/Tuan Jie Hu" class="pull-left"> <span
								class="media-body">Chaoyang Park/Tuan Jie Hu</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Chongwenmen"
								class="pull-left"> <span class="media-body">Chongwenmen</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Dahongmen"
								class="pull-left"> <span class="media-body">Dahongmen</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Dawanglu"
								class="pull-left"> <span class="media-body">Dawanglu</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Dong Si"
								class="pull-left"> <span class="media-body">Dong
									Si</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Dongzhimen"
								class="pull-left"> <span class="media-body">Dongzhimen</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Fang Zhuang"
								class="pull-left"> <span class="media-body">Fang
									Zhuang</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Fengtai"
								class="pull-left"> <span class="media-body">Fengtai</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Foreign Trade"
								class="pull-left"> <span class="media-body">Foreign
									Trade</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Guangqumenwai"
								class="pull-left"> <span class="media-body">Guangqumenwai</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Haidian"
								class="pull-left"> <span class="media-body">Haidian</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Hu Fangqiao"
								class="pull-left"> <span class="media-body">Hu
									Fangqiao</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Huaxiang"
								class="pull-left"> <span class="media-body">Huaxiang</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="ITC"
								class="pull-left"> <span class="media-body">ITC</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood"
								value="Jian Guo Men/Beijing Railway Station" class="pull-left">
								<span class="media-body">Jian Guo Men/Beijing Railway
									Station</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Jinsong/Panjiayuan"
								class="pull-left"> <span class="media-body">Jinsong/Panjiayuan</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Jiuxianqiao"
								class="pull-left"> <span class="media-body">Jiuxianqiao</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Jiàn Wài Dàjiē"
								class="pull-left"> <span class="media-body">Jiàn
									Wài Dàjiē</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Kaiyangli"
								class="pull-left"> <span class="media-body">Kaiyangli</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood"
								value="Liang Ma Qiao/Sanyuanqiao" class="pull-left"> <span
								class="media-body">Liang Ma Qiao/Sanyuanqiao</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood"
								value="Liuliqiao/Lize Bridge" class="pull-left"> <span
								class="media-body">Liuliqiao/Lize Bridge</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Peace"
								class="pull-left"> <span class="media-body">Peace</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Qianmen"
								class="pull-left"> <span class="media-body">Qianmen</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Qinghe"
								class="pull-left"> <span class="media-body">Qinghe</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Shazikou"
								class="pull-left"> <span class="media-body">Shazikou</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Shichahai"
								class="pull-left"> <span class="media-body">Shichahai</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Shilipu"
								class="pull-left"> <span class="media-body">Shilipu</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Shuangjing"
								class="pull-left"> <span class="media-body">Shuangjing</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Shuangyushu"
								class="pull-left"> <span class="media-body">Shuangyushu</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Suzhouqiao"
								class="pull-left"> <span class="media-body">Suzhouqiao</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Temple of Heaven"
								class="pull-left"> <span class="media-body">Temple
									of Heaven</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood"
								value="Third Road Jucun/Liucun" class="pull-left"> <span
								class="media-body">Third Road Jucun/Liucun</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Wai Avenue"
								class="pull-left"> <span class="media-body">Wai
									Avenue</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Wangfujing/Dongdan"
								class="pull-left"> <span class="media-body">Wangfujing/Dongdan</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Wangjing"
								class="pull-left"> <span class="media-body">Wangjing</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Weigongcun"
								class="pull-left"> <span class="media-body">Weigongcun</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Wudaokou"
								class="pull-left"> <span class="media-body">Wudaokou</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Xicheng"
								class="pull-left"> <span class="media-body">Xicheng</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Xinjiekou"
								class="pull-left"> <span class="media-body">Xinjiekou</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Xizhimen"
								class="pull-left"> <span class="media-body">Xizhimen</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Xuanwu"
								class="pull-left"> <span class="media-body">Xuanwu</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="You'anmen"
								class="pull-left"> <span class="media-body">You'anmen</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Yue Tan"
								class="pull-left"> <span class="media-body">Yue
									Tan</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Zhongguancun"
								class="pull-left"> <span class="media-body">Zhongguancun</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Zhuang"
								class="pull-left"> <span class="media-body">Zhuang</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Zizhuqiao"
								class="pull-left"> <span class="media-body">Zizhuqiao</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="neighborhood" value="Zuojiazhuang"
								class="pull-left"> <span class="media-body">Zuojiazhuang</span>
							</label>
						</div>
					</div>
				</div>

				<a class="btn show-more"> <span><i
						class="icon icon-caret-down"></i></span> <span class="hide"><i
						class="icon icon-caret-up"></i></span>
				</a>

			</div>

			<div
				class="clearfix checkbox-group hosting_amenities filters-section"
				data-name="hosting_amenities" data-behavior="tooltip"
				data-position="left" title="便利设施">

				<h6 class="filter-label col-3">便利设施</h6>

				<div class="control-group">
					<div class="filters-columns">
						<label class="media media-condensed checkbox"> <input
							type="checkbox" name="amenities" value="4" class="pull-left">
							<span class="media-body">无线网络</span>
						</label> <label class="media media-condensed checkbox"> <input
							type="checkbox" name="amenities" value="1" class="pull-left">
							<span class="media-body">电视</span>
						</label> <label class="media media-condensed checkbox"> <input
							type="checkbox" name="amenities" value="8" class="pull-left">
							<span class="media-body">厨房</span>
						</label>
					</div>
					<div class="filters-more hide">
						<hr>
						<div class="filters-columns">
							<label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="36" class="pull-left">
								<span class="media-body">一氧化碳探测器</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="15" class="pull-left">
								<span class="media-body">健身房</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="11" class="pull-left">
								<span class="media-body">允许吸烟</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="12" class="pull-left">
								<span class="media-body">允许携带宠物</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="9" class="pull-left">
								<span class="media-body">内部提供免费停车位</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="21" class="pull-left">
								<span class="media-body">大厦内电梯</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="38" class="pull-left">
								<span class="media-body">安全卡</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="27" class="pull-left">
								<span class="media-body">室内壁炉</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="37" class="pull-left">
								<span class="media-body">急救包</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="6" class="pull-left">
								<span class="media-body">无障碍设施</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="16" class="pull-left">
								<span class="media-body">早餐</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="30" class="pull-left">
								<span class="media-body">暖气</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="2" class="pull-left">
								<span class="media-body">有线电视</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="31" class="pull-left">
								<span class="media-body">欢迎家庭/携带孩子入住</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="41" class="pull-left">
								<span class="media-body">洗发水</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="33" class="pull-left">
								<span class="media-body">洗衣机</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="7" class="pull-left">
								<span class="media-body">游泳池</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="39" class="pull-left">
								<span class="media-body">灭火器</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="34" class="pull-left">
								<span class="media-body">烘干机</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="35" class="pull-left">
								<span class="media-body">烟雾探测器</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="25" class="pull-left">
								<span class="media-body">热水浴缸</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="40" class="pull-left">
								<span class="media-body">生活必需品</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="5" class="pull-left">
								<span class="media-body">空调</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="3" class="pull-left">
								<span class="media-body">网络</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="28" class="pull-left">
								<span class="media-body">蜂鸣器/无线对讲机</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="32" class="pull-left">
								<span class="media-body">适合举办活动</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="amenities" value="14" class="pull-left">
								<span class="media-body">门卫</span>
							</label>
						</div>
					</div>
				</div>

				<a class="btn show-more"> <span><i
						class="icon icon-caret-down"></i></span> <span class="hide"><i
						class="icon icon-caret-up"></i></span>
				</a>

			</div>

			<div class="clearfix checkbox-group property_type_id filters-section"
				data-name="property_type_id" data-behavior="tooltip"
				data-position="left" title="房源类型">

				<h6 class="filter-label col-3">房源类型</h6>

				<div class="control-group">
					<div class="filters-columns">
						<label class="media media-condensed checkbox"> <input
							type="checkbox" name="property_type_id" value="1"
							class="pull-left"> <span class="media-body">公寓</span>
						</label> <label class="media media-condensed checkbox"> <input
							type="checkbox" name="property_type_id" value="2"
							class="pull-left"> <span class="media-body">独立屋</span>
						</label> <label class="media media-condensed checkbox"> <input
							type="checkbox" name="property_type_id" value="3"
							class="pull-left"> <span class="media-body">住宿加早餐</span>
						</label>
					</div>
					<div class="filters-more hide">
						<hr>
						<div class="filters-columns">
							<label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="35"
								class="pull-left"> <span class="media-body">Loft</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="29"
								class="pull-left"> <span class="media-body">停车位</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="33"
								class="pull-left"> <span class="media-body">其它</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="11"
								class="pull-left"> <span class="media-body">别墅</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="16"
								class="pull-left"> <span class="media-body">圆锥形帐篷</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="12"
								class="pull-left"> <span class="media-body">圆顶小屋</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="23"
								class="pull-left"> <span class="media-body">土房</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="5"
								class="pull-left"> <span class="media-body">城堡</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="9"
								class="pull-left"> <span class="media-body">宿舍</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="24"
								class="pull-left"> <span class="media-body">小屋</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="4"
								class="pull-left"> <span class="media-body">小木屋</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="19"
								class="pull-left"> <span class="media-body">岛屿</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="34"
								class="pull-left"> <span class="media-body">帐篷</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="6"
								class="pull-left"> <span class="media-body">树屋</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="30"
								class="pull-left"> <span class="media-body">汽车</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="18"
								class="pull-left"> <span class="media-body">洞穴</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="25"
								class="pull-left"> <span class="media-body">火车</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="10"
								class="pull-left"> <span class="media-body">灯塔</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="22"
								class="pull-left"> <span class="media-body">牧人小屋</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="8"
								class="pull-left"> <span class="media-body">船</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="15"
								class="pull-left"> <span class="media-body">蒙古包</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="32"
								class="pull-left"> <span class="media-body">露营车/房车</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="31"
								class="pull-left"> <span class="media-body">面包车</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="property_type_id" value="28"
								class="pull-left"> <span class="media-body">飞机</span>
							</label>
						</div>
					</div>
				</div>

				<a class="btn show-more"> <span><i
						class="icon icon-caret-down"></i></span> <span class="hide"><i
						class="icon icon-caret-up"></i></span>
				</a>

			</div>

			<div
				class="clearfix checkbox-group languages filters-section
              intro-filter"
				data-name="languages" data-behavior="tooltip" data-position="left"
				title="房东语言">

				<h6 class="filter-label col-3">房东语言</h6>

				<div class="control-group">
					<div class="filters-columns">
						<label class="media media-condensed checkbox"> <input
							type="checkbox" name="languages" value="128" class="pull-left">
							<span class="media-body">中文</span>
						</label> <label class="media media-condensed checkbox"> <input
							type="checkbox" name="languages" value="1" class="pull-left">
							<span class="media-body">English</span>
						</label> <label class="media media-condensed checkbox"> <input
							type="checkbox" name="languages" value="64" class="pull-left">
							<span class="media-body">Español</span>
						</label>
					</div>
					<div class="filters-more hide">
						<hr>
						<div class="filters-columns">
							<label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="4096" class="pull-left">
								<span class="media-body">Bahasa Indonesia</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="4194304"
								class="pull-left"> <span class="media-body">Bahasa
									Malaysia</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="32768" class="pull-left">
								<span class="media-body">Bengali</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="16777216"
								class="pull-left"> <span class="media-body">Dansk</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="4" class="pull-left">
								<span class="media-body">Deutsch</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="2" class="pull-left">
								<span class="media-body">Français</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="512" class="pull-left">
								<span class="media-body">Hindi</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="16" class="pull-left">
								<span class="media-body">Italiano</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="536870912"
								class="pull-left"> <span class="media-body">Magyar</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="8192" class="pull-left">
								<span class="media-body">Nederlands</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="67108864"
								class="pull-left"> <span class="media-body">Norsk</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="2097152"
								class="pull-left"> <span class="media-body">Polski</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="1024" class="pull-left">
								<span class="media-body">Português</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="131072"
								class="pull-left"> <span class="media-body">Punjabi</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="524288"
								class="pull-left"> <span class="media-body">Sign
									Language</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="134217728"
								class="pull-left"> <span class="media-body">Suomi</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="33554432"
								class="pull-left"> <span class="media-body">Svenska</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="8388608"
								class="pull-left"> <span class="media-body">Tagalog</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="2048" class="pull-left">
								<span class="media-body">Türkçe</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="268435456"
								class="pull-left"> <span class="media-body">Čeština</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="262144"
								class="pull-left"> <span class="media-body">Ελληνικά</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="32" class="pull-left">
								<span class="media-body">Русский</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="1073741824"
								class="pull-left"> <span class="media-body">українська</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="1048576"
								class="pull-left"> <span class="media-body">עברית</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="256" class="pull-left">
								<span class="media-body">العربية</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="65536" class="pull-left">
								<span class="media-body">ภาษาไทย</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="8" class="pull-left">
								<span class="media-body">日本語</span>
							</label> <label class="media media-condensed checkbox"> <input
								type="checkbox" name="languages" value="16384" class="pull-left">
								<span class="media-body">한국어</span>
							</label>
						</div>
					</div>
				</div>

				<a class="btn show-more"> <span><i
						class="icon icon-caret-down"></i></span> <span class="hide"><i
						class="icon icon-caret-up"></i></span>
				</a>

			</div>

			<div class="clearfix keywords filters-section"
				data-behavior="tooltip" data-position="left" title="关键词">

				<h6 class="filter-label col-3">关键词</h6>

				<form class="form-horizontal">
					<input class="keywords-input" type="text" name="keywords"
						placeholder="位处海边，交通方便，可令身心得到放松…">
				</form>

			</div>

			<div class="filters-footer">
				<button class="btn btn-block btn-large btn-primary search-button">
					显示房源</button>
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