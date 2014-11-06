//!(function(){
	var Panel = flight.component(function(){
		this.defaultAttrs({
			calendarPanelSelector: "#main-nav .calendar a",
			photosPanelSelector: "#main-nav .photos a",
			CalendarItemSelector: "#calendar-date",
			CalendarContainerSelector: "#calendar-inner-container",
			ThumbnailImageSelector: "a.media-slideshow",
			SlideShowImagesSelector: ".slideshow-images img",
			SlideImageNextSelector: ".icon-chevron-right",
			SlideImagePreviousSelector: ".icon-chevron-left"
			
		});
		
				
		
	this.displayCalendarForm = function(){
		$("#main-nav .photos a").attr("aria-selected", false);
		$("#main-nav .calendar a").attr("aria-selected", true);
		$("#photos").attr("aria-hidden",true);
		$("#calendar").attr("aria-hidden",false);
		
		this.loadMonthData({hasInitialized: false});
	};
		
	this.displayPhotosForm = function(){
		$("#main-nav .photos a").attr("aria-selected", true);
		$("#main-nav .calendar a").attr("aria-selected", false);
		$("#photos").attr("aria-hidden",false);
		$("#calendar").attr("aria-hidden",true)
		
		
	};
	
	this.loadMonthData = function(options){
		
		this.select("CalendarContainerSelector").addClass('loading');
	  	
		if(options.hasInitialized){
			this.fetchMonthData({id:11222, year:"2014", month: "03"});
		}else{
			console.debug("has not initialzied");
			this.fetchMonthData({id:11222, year:"2014", month: "03"});
		}
	};
	 
	this.fetchMonthData = function(data){
		  $.get("/ysao/Calendar", data, function(response){
			  $("#calendar-inner-container").html(response);
			  console.debug(response);
			  $("#calendar-inner-container").removeClass("loading");
			 //this.select("CalendarContainerSelector").html(response).removeClass("loading"); 
		  });
	};
	 
	this.showBigImage = function(e){
		e.preventDefault();
		
		var $previousImage=$(".slideshow-thumbnails").find(".active");
		$previousImage.removeClass("active");
		console.debug($previousImage);
		
		//console.debug("the image thumbernail get clicked");
		//console.debug($(e.target).attr("src"));
		var newimage = $(e.target).attr("href");
		this.select("SlideShowImagesSelector").attr("src", newimage);
		$(e.target).addClass("active");
		
		
		//console.debug($(e.target).attr("src"));
	};
	
	


	this.toNext = function(e){
		e.preventDefault();
		console.debug("to next image");
		var inp = $(".media-slideshow");
		console.debug(inp);
		//var currActive = $(".active .media-photo .media-slideshow");
		var currActive = $("a.active");
		//console.debug(currActive);
		//console.debug(currActive.length);
		var index = inp.index(currActive);
		
		var nextA = inp[index + 1];
		currActive.removeClass("active");
		$(nextA).addClass("active");
		var newimage = $(nextA).attr("href");
		this.select("SlideShowImagesSelector").attr("src", newimage);

		//console.debug(this.select("ThumbnailImageSelector").length);
	};
	
	this.toPrevious = function(e){
		e.preventDefault();
		console.debug("to previous image");
		var inp = $(".media-slideshow");
		console.debug(inp);
		//var currActive = $(".active .media-photo .media-slideshow");
		var currActive = $("a.active");
		console.debug(currActive);
		//console.debug(currActive.length);
		var index = inp.index(currActive);
		
		var previousA = inp[index - 1];
		currActive.removeClass("active");
		$(previousA).addClass("active");
		var newimage = $(previousA).attr("href");
		this.select("SlideShowImagesSelector").attr("src", newimage);
		
	}
	
	this.after("initialize", function(){
		console.debug("2222");
//		this.on("click",{
//			calendarPanelSelector: this.displayCalendarForm,
//			photosPanelSelector: this.displayPhotosForm,
//			SlideImageNextSelector: this.toNext,
//			SlideImagePreviousSelector: this.toPrevious
//			//SlideShowImagesSelector: this.toNext
//			
//		});
//		this.on(this.select("CalendarItemSelector"),"change", function(ev, data){
//			this.loadMonthData({hasInitialized:true});
//		});
		
	//	this.on(this.select("ThumbnailImageSelector"),"click", this.showBigImage);
		
//		$("ul.slideshow-images li.active img").click(function(e){
//			console.debug("clicked..");
//			e.preventDefault();
//			return false;});
		
		
		//$(".slideshow-images img").click(function(){console.debug("click image")});
		console.debug("finish init componet panel");
		//$(".slideshow-images").click(function(){console.debug("next iamge")});
	});	
		
		
	});
	
	     
	var AuntDetails = flight.component(function(){
		this.defaultAttrs({
			AmenityTabSelector: "#details > ul > li > a",
			DetailsAllTabsSelector: "a[aria-selected]",
			DetailsTabDivSelector: "div[aria-hidden]"
		});
		
		this.resetAllTabs = function(){
			this.select("DetailsAllTabsSelector").each(function(){
				
				//console.debug($(this).id());
				$(this).attr("aria-selected",false);
				var panelid = "#" + $(this).attr("aria-controls");
				
				$(panelid).attr("aria-hidden", true);
				
				var currTab = $(this).attr("aria-controls");
				
//				if(currTab == "amenities-panel")
//					this.trigger("uiSkillsPanelClicked");
//				else if(currTab == "description-panel")
//					this.trigger("uiDescriptionClicked");//this.getProfileDescription();
//				else
//					console.debug("unknow panel clicked");
				
			});
		}
		
		this.fetchProfileData = function(data, callbackelement){
			  $.get("/ysao/Profile", data, function(response){
				  $(callbackelement).html(response);
				 // console.debug(response);
				  $(callbackelement).removeClass("loading");
				 //this.select("CalendarContainerSelector").html(response).removeClass("loading"); 
			  });
		};
		
		this.getProfileSkills = function(){
			this.fetchProfileData({id:"12345",action:"skills"}, "#amenities-panel");
		}
		
		this.getProfileDescription = function(){
			this.fetchProfileData({id:"12345",action:"description"}, "#description-panel");
		}
		
		this.getProfileReviewSummary = function(){
			this.fetchProfileData({id:"12345", action:"summary"},"#review-summary");
		}
		
		this.getProfileReviews = function(){
			this.fetchProfileData({auntid:"2937", action:"reviews"},"#reputation-panel > ul");
			//[data-behavior='tooltip']
			
		}
		
		this.getReviewsCount = function(data){
			 $.get("/ysao/Profile", data, function(response){
				  $("#this_hosting_reviews_link").text(response);
			  });
			 
			//this.fetchProfileData({auntid:"2937", action:"reviewcount"},"#reputation-panel > ul");
			
		}
		
		this.displayClickedTab = function(e){
			this.resetAllTabs();
			var tablink = e.target;
			$(tablink).attr("aria-selected",true);
			var panelid = "#" + $(tablink).attr("aria-controls");
			$(panelid).attr("aria-hidden",false);
				
		};
		
		this.showTip = function(e){
			console.debug(e);
			var ele = e.target;
			
			if(e.target){
				console.debug($(ele).attr("aria-label"));
				
			}else
				console.debug("target is null");
			//console.debug(e.target.attr("aria-label"));
			//console.debug("show tip" + tip);
		}
		this.after("initialize", function(){
			console.debug("3333");
			this.on("click",{
				DetailsAllTabsSelector: this.displayClickedTab
			});
			
			
			//this.getProfileDescription();
			//this.getProfileSkills();
			//this.getProfileReviewSummary();
			this.getProfileReviews();
			//this.getReviewsCount({auntid:"2937", action:"reviewcount"});
			//console.debug("find data-behavior");
			//console.debug($(".icon-question-sign").length);
			
			//.mouseover(this.showTip);
			
			$(".icon-question-sign").mouseover(this.showTip);
			//
			
		});	
		
		
		
	}); //end of component AuntDetail;
	console.debug("init20");
	//Panel.attachTo("#room .row .panel");
	console.debug("init21");
	//AuntDetails.attachTo("#details");
	console.debug("init22");
	console.debug("init flight");
//})();

$(document).ready(function(){
	console.debug("after document ready");
	Panel.attachTo("#room .row .panel");
	AuntDetails.attachTo("#details");
});
//var AirbnbRooms=(function($){
//	
//	var Room=function(options){
//		
//		this.initMainContentTabs();
//	};
//	
//	Room.prototype.initMainContentTabs = function(){
//		var $mainNav=$("#main-nav");
//		$mainNav.on("click","a",function(e){
//			var $this = $(this);
//			switch($this.attr("href")){
//			case "#calendar":
//				window.load_inital_month();
//				breakk;
//			
//			}
//		});
//	};
//});
//
//window.load_initial_month = function(){
//	console.debug("load initial month");
//  	var $calendarForm = $('#calendar-refresh-form'),
//    $calendarContainer = $("#calendar-inner-container");
//
//  	if(!$calendarForm.data('hasInitialized')){
//    $('#calendar-date').on('change', function(e){
//      	  var $this = $(this),
//          date = new Date($this.val()),
//          options = {
//            cal_month: date.getMonth() + 1,
//            cal_year: date.getFullYear()
//          };
//
//      if(Airbnb && Airbnb.userAttributes){
//        options.currency = Airbnb.userAttributes.curr;
//      }
//
//      $calendarContainer.addClass('loading');
//	  console.debug($calendarForm.attr('action'));
//    });
//     /*  $.get($calendarForm.attr('action'),
//            options,
//            function(response){
//              $calendarContainer.html(response).removeClass('loading');
//            });
//    }).trigger('change'); */
//  	
//    $calendarForm.data('hasInitialized', true);
//  }
//};