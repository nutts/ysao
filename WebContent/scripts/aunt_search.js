!(function(){
	
	var Filters = flight.component(function(){
	this.defaultAttrs({
		priceRangeSliderSelector: ".price-range-slider",
		filtersSectionSelector:".filters-section",
		filtersSelector:".filters",
		checkinSelector:".checkin",
		onBoardTimeSelector:"#onboardtime",
		moreButtonSelector:".show-more",
		FiltersMoreSelector:".filters-more",
		keywordsSelector:"input[name=keywords]",
		neighborhoodsSelector:".neighborhoods",
		searchButtonSelector:".search-button",
		checkboxGroupSelector:".checkbox-group",
		neighborhoodsSelector: ".neighborhoods :checked"
		
	});
	
	var lastFilterData;
	
	this.initPriceSlider=function(){
		console.debug("in function");
		$slider = this.select('priceRangeSliderSelector');
		
		$slider.find(".min-price .price").html($slider.data("minPrice"));
		$slider.find(".max-price .price").html($slider.data("maxPrice"));
		
		console.debug($slider);
		
		console.debug($slider.data("minPrice"));
		
		var updateLabels=function(e,ui){
			console.debug("update Labels");
			
			$slider.find(".min-price .price").html(ui.values[0]);
			$slider.find(".max-price .price").html(ui.values[1]);
			
			$slider.data("minPrice",ui.values[0]);
			$slider.data("maxPrice",ui.values[1]);
		};
		
		$slider.slider({
			range: true,
			values: [$slider.data("minPrice"), $slider.data("maxPrice")],
			min: $slider.data("minPrice"),
			max: $slider.data("maxPrice"),
			step: 5,
			slide: updateLabels,
			change: function(e,ui){
				//console.debug("change");
				updateLabels(e,ui);
				$slider.trigger("click");
				
			}
		});
	};
	
	this.openFiltersPanel=function(event){
		console.debug(" open filters panel");
		//this.select("filtersSelector").removeClass("hide").removeClass("collapse");
		this.$node.removeClass("hide").removeClass("collapse");
	};
	
	this.toggleMoreFilters=function(e,data){
		//var $section=$(data.el).closest(this.attr.filtersSectionSelector);
		
		//$section.find(this.attr.moreFiltersSelector).toggleClass("hide");
		this.select("moreButtonSelector").find("span").toggleClass("hide")
		this.select("FiltersMoreSelector").toggleClass("hide");
	};
	
	this.resetFilter=function(e){
			var $slider=this.select("priceRangeSliderSelector");
			
			$slider.slider("values",0,$slider.slider("option","min"));
			$slider.slider("values",1,$slider.slider("option","max"));
			
			this.select("neighborhoodsSelector").prop("checked",false);
			this.select("keywordsSelector").val("");
			this.triggerFiltersChanged();
	
	};//end of resetFilter;
	
	this.processFilters=function(){
		var filterData={},
		checkin=this.select("checkinSelector").val(),
		keywords=this.select("keywordsSelector").val(),
		$slider = this.select('priceRangeSliderSelector');
		
		if(checkin){
			filterData.checkin = checkin;
		}
		
		if(keywords){
			filterData.keywords = keywords;
		}
		
		filterData.neighborhoods = this.select("neighborhoodsSelector").map(function(){
			return this.getAttribute("value");
		}).get().join();
		
		
		filterData.minPrice = $slider.data("minPrice");
		filterData.maxPrice = $slider.data("maxPrice");
		filterData.changed = true;
		console.debug("filter data is ");
		console.debug(filterData);
		return filterData;
	};
	
	this.triggerFiltersChanged=function(e){
		var filterData=this.processFilters(),
			//filtersChanged=!_.isEqual(filterData,this.lastFilterData);
			filtersChanged = true;
		console.debug("trigger filters ...");
		this.trigger("uiFiltersChanged",{filterData:filterData,changed:filtersChanged});
		this.lastFilterData=filterData;
	};
	//var checkinDatePicker = this.select("checkinSelector").datepicker();
	
	this.neighborhoodChanged= function(e){
		console.debug("check box clicked");
		this.select("neighborhoodsSelector").find("input").prop("checked",false);
		//this.triggerFiltersChanged();
	};

	function availableDates(date){
		if(date > new Date())
			return [true,"",""];
		else
			return [false, "","已过期"];
	}
	
	function checkinOnSelect(date, obj){
		console.debug(obj);
		$("#onboardtime").val(date);
		
		$("#onboardtime").trigger("change");
		$(".checkin").data("minDate",date);
		console.debug($(".checkin").data());
	}
	
	this.initCheckin= function(){
		this.select("checkinSelector").datepicker({
			yearSuffix: "年",
			closeText: "关闭",
			nextText:"下个月",
			dateFormat: 'yy-mm-dd',
			beforeShowDay: availableDates,
			onSelect: checkinOnSelect
				//this.selector("checkinSelector").data(minDate, date);
				//this.parentselect("checkinSelector").trigger("click");
		});
	};
	
	this.after("initialize", function(){
		console.debug("start to init price slider");
		this.initPriceSlider();
		this.initCheckin();
		this.on("click", {
			priceRangeSliderSelector: this.triggerFiltersChanged,
			moreButtonSelector:this.toggleMoreFilters,
			searchButtonSelector:this.triggerFiltersChanged
		});
		this.on(document, "uiFiltersButtonClicked", this.openFiltersPanel);
		this.on("#onboardtime", "change", this.triggerFiltersChanged);
		this.on(document, "uiFilterReset", this.resetFilter);
	
		
		
	});
	}); //end of component Filters;
	
	var SearchResults = flight.component(function(){
		this.defaultAttrs({
			"ListingsContainerSelector": ".listings-container",
				resultsCountSelector:".results-count"
		});
			
		//1. set loading event=dataSearchResultsLoading
		//2. render; list, description, pages. event=dataSearchResultsLoaded
		
		this.setLoading=function(e,data){
			console.debug("loadding status trigger");
			this.$node.addClass("loading");
		};
		
		this.render=function(e,data){
			console.debug("render");
			this.select('ListingsContainerSelector').html(data.results);
			this.select()
			this.$node.removeClass("loading");
			
		};
		
		this.updatePaginationButtons=function(event, data){
			$(".results-footer").replaceWith(data.pagination_html);
			$(".pagination").find("a").each(function(){
				console.debug("override the page button event");
				var _this=$(this);
				_this.click(function(e){
					e.preventDefault();
					console.debug("page button clicked" + _this.attr("target"));
					var newPage=parseInt(_this.attr("target"),10);
					_this.trigger("uiPageRequested",{page:newPage});
					return false
				})
			})
		};
	
	
		this.after("initialize", function(){
			this.on(".outer-listings-container", "dataSearchResultsLoading", this.setLoading);
			this.on(".outer-listings-container", "dataSearchResultsLoaded", this.render);
			this.on(document, "dataResultsLoaded", this.updatePaginationButtons);
			
			
			
		});
		
		
		
		
		
	});//end of component SearchResults
	
	
	var SidebarHeader = flight.component(function(){
		this.defaultAttrs({
			   showFiltersSelector:".show-filters",
			   resultsCountSelector:".results-count",
			   appliedFilterGroupSelector:".applied-filters",
			   appliedFilterSelector:".applied-filters li",
		});
		
		this.filtersButtonClicked=function(){
			this.trigger(document, "uiFilterReset");
		};
		
		this.updateCountAndPagination=function(e,data){
			console.debug(data.results_count_string);
			this.select("resultsCountSelector").html(data.results_count_string);
			//if(data.source==="initial"){this.restoreScrollPosition()}
		};
		
		this.after("initialize", function(){
			//this.on(".outer-listings-container", "dataSearchResultsLoaded", this.updateCountAndPagination);
			//this.on(document, "dataResultsLoaded",this.updateCountAndPagination);
			this.on("click", {showFiltersSelector: this.filtersButtonClicked});
			this.on(document, "dataResultsLoaded", this.updateCountAndPagination);
		});
		
	}); //end of component sidebar;
	
	//the logic component;
	var MapSearchData=flight.component(function(){
		
		this.SEARCH_PARAMS={map:["sw_lat","sw_lng","ne_lat","ne_lng","search_by_map"],
							header:["location"],
							filters:["checkin","price_min","price_max","neighborhoods","keywords"],
							logging:["s_tag"],
							developer:["deb","inst","ops","exps","ib","collection_id","host_id","show_listing"]};
		
		this.defaultAttrs({
			sTagRegex:/([\?&]s=)[0-9a-zA-Z_\-]+/g,
			ListingsContainerSelector: ".listings-container"
			});
		
		this.mergedParams=function(){
//			console.debug(this.SEARCH_PARAMS.map);
			var mapParams={};
//			for(var i=0;i<this.SEARCH_PARAMS.map.length;i++){
//				mapParams[this.SEARCH_PARAMS.map[i]]=this.currentSearch.map[this.SEARCH_PARAMS.map[i]]
//			}
			return $.extend({page:this.currentSearch.page},
							mapParams,
							this.currentSearch.header,
							this.currentSearch.filters,
							this.currentSearch.logging,
							this.currentSearch.developer)
		};
		
		this.currentSearch = {source:"initial",page:"1"};
		
		this.dataLoaded=function(eventName,data){
			
			this.trigger(this.select(".map-search"), "dataResultsLoaded", data);
			
			//this.trigger("dataSearchResultsLoaded",data);
			
		    this.triggerResultsLoaded(data);
			
			this.select('ListingsContainerSelector').html(data.results);
		};
		
		this.getUrlParam = function(name){
			var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
			var r = window.location.search.substr(1).match(reg);
			if (r != null) return unescape(r[2]); return null;
		}
		
		
		//the page is the first load;
		this.loadBootstrapData=function(){
			console.debug(" load bootstrap data ...");
			//var urlParams= $.query.load(window.location.href).keys,
			
			var chkin = this.getUrlParam("checkin");
			var urlParams = $(location).attr('href').keys;
			console.debug("parms " + urlParams);
		
			this.currentSearch={
					page:1,source:"initial",map:{},header:{},filters:{checkin:chkin},logging:{},developer:{}
			};
			
			
			this.fetchResults();
			
		};
			
			
		this.triggerResultsLoaded=function(data){
			this.trigger("dataResultsLoaded",{
				//count:data.visible_results_count,
				page:this.currentSearch.page,
				results_count_string:data.results_count_string,
				pagination_html:data.pagination_footer,
				//source:this.currentSearch.source
				});
		
		};
		
		this.fetchResults=function(){
			console.debug("start to fetch results");
			var params=this.mergedParams();
			console.debug(params);
			if(this.currentSearch.source!=="page"){
				params.page=1;
				this.currentSearch.page=1;
				delete params.s_tag
			}
			
			this.trigger("dataSearchResultsLoading",{currentSearch:this.currentSearch});
			
			if(this._activeRequest){
					this._activeRequest.abort()
			}
			
			console.debug("the request parameters are ...");
			console.debug(params);
			
			this._activeRequest=$.get("/ysao/Server",params,(function(data){		
					console.debug("callback");
					this.dataLoaded("dataSearchResultsLoaded",data);
					this._activeRequest=false;
				}).bind(this))
		}; 
		
		this.searchFromFilters=function(e,params){
			console.debug("search from filters");
			console.debug(params);
			if(params.changed){
				this.currentSearch.filters=params.filterData;
				this.currentSearch.source="filters";
				this.fetchResults();
			}
		}
		
		this.updateFromPagination=function(e,data){
			console.debug("page clicked");
			this.currentSearch.page=data.page;
			this.currentSearch.source="page";
			this.fetchResults();
		};
		
		this.after('initialize',function(){
			this.loadBootstrapData();
			this.on(document,"uiFiltersChanged",this.searchFromFilters);
			this.on("uiPageRequested",this.updateFromPagination)
			
		});
	});  //end of component MapSearchData;
	
	
	Filters.attachTo(".filters");
	SearchResults.attachTo(".outer-listings-container");
    //provide("aunt_search/Filters", Filters);
	SidebarHeader.attachTo(".sidebar-header");
	MapSearchData.attachTo(document);
	
	
	
})();
	
	
	
