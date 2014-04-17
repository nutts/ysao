!(function(){
	
	var Filters = flight.component(function(){
	this.defaultAttrs({
		priceRangeSliderSelector: ".price-range-slider",
		
	});
	
	this.initPriceSlider=function(){
		console.debug("in function");
		$slider = this.select('priceRangeSliderSelector');
		
		$slider.find(".min-price .price").html("22222");
		$slider.find(".max-price .price").html($slider.data("maxPrice"));
		
		console.debug($slider);
		
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
			slide: updateLabels,
			change: function(e,ui){
				//console.debug("change");
				updateLabels(e,ui);
				$slider.trigger("click");
				
			}
		});
	};
	
	this.toggleMoreFilters=function(e,data){
		var $section=$(data.el).closest(this.attr.filtersSectionSelector);
		$section.find(this.attr.moreFiltersSelector).toggleClass("hide");
		$section.find(this.attr.moreButtonSelector).find("span").toggleClass("hide")
	};
	
	this.processFilters=function(){
		console.debug("process filter, get all filter data");
		
		$slider = this.select('priceRangeSliderSelector');
		return {changed:true,
				minPrice:this.select(".min-price .price").val(),
				maxPrice:this.select(".max-price .price").val()
				};
		
	};
	
	this.triggerFiltersChanged=function(e){
		console.debug("trigger Filter changed function");
		
		var filterData=this.processFilters();
		
		console.debug("throw out event uiFiltersChanged");
		console.debug(e);
		this.trigger("uiFiltersChanged",{filterData:filterData});
		
		this.lastFilterData=filterData;
	};
	
	this.after("initialize", function(){
		console.debug("start to init price slider");
		this.initPriceSlider();
		
		this.on("click", {
			priceRangeSliderSelector: this.triggerFiltersChanged
		});
		
	});
	}); //end of component Filters;
	
	var SearchResults = flight.component(function(){
		
		this.setLoading=function(e,data){
			this.$node.addClass("loading");
		};
		
		this.after("initialize", function(){
			this.on(".map-search", "dataSearchResultsLoading", this.setLoading);
		});
	});//end of component SearchResults
	
	
	//the logic component;
	var MapSearchData=flight.component(function(){
		this.SEARCH_PARAMS={filters:["checkin","checkout","guests","exp_types","empHost","room_types","price_min","price_max","min_bedrooms","min_bathrooms","min_beds","neighborhoods","languages","hosting_amenities","property_type_id","connected","keywords"],logging:["s_tag"],developer:["deb","inst","ops","exps","ib","collection_id","host_id","show_listing"]};
		this.defaultAttrs({
			sTagRegex:/([\?&]s=)[0-9a-zA-Z_\-]+/g,
			ListingsContainerSelector: ".listings-container"
			});
		this.mergedParams=function(){
			var mapParams={};
			for(var i=0;i<this.SEARCH_PARAMS.map.length;i++){
				mapParams[this.SEARCH_PARAMS.map[i]]=this.currentSearch.map[this.SEARCH_PARAMS.map[i]]
			}
			return $.extend({page:this.currentSearch.page},mapParams,this.currentSearch.header,this.currentSearch.filters,this.currentSearch.logging,this.currentSearch.developer)
		};
		
		//var currentSearch = {source:"initial"};
		
		this.dataLoaded=function(eventName,data){
			this.select('ListingsContainerSelector').html(data.results);
		};
		
		
		this.triggerResultsLoaded=function(data){
			this.trigger("dataResultsLoaded",{page:1});
		};
		
		this.fetchResults=function(params){
			console.debug("start to fetch results...1111");
			//var params = {page:1, name:"张三"};
			
			this.trigger("dataSearchResultsLoading",{currentSearch:this.currentSearch});
			
			if(this._activeRequest){
					this._activeRequest.abort()
			}
			
			console.debug(params);
			
			this._activeRequest=$.get("/ysao/Server",params,(function(data){				
					this.dataLoaded("dataSearchResultsLoaded",data);
					this._activeRequest=false;
				}).bind(this))
		}; 
		
		this.searchFromFilters=function(e,params){
			console.debug("start to search ...");
			console.debug(params);
			this.fetchResults(params);
		};
		
		this.after('initialize',function(){
			this.on(document,"uiFiltersChanged",this.searchFromFilters);
			
		});
	});  //end of component MapSearchData;
		
	Filters.attachTo(".filters");
	SearchResults.attachTo(".outer-listings-container");
    //provide("aunt_search/Filters", Filters);
	MapSearchData.attachTo(".outer-listings-container");
	
})();


	
	
	
