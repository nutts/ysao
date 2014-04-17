
jQuery(function($){

	var helloWorld = flight.component(function(){
		console.debug("component constructor");
		
		this.onClick = function(){
			alert("you just click h1");
		};	
		
		this.after("initialize",function(){
			this.$node.find('h1').text('hello, world');
		});
	});

	helloWorld.attachTo('h1');
	
	console.debug("...");
	//initialize
	
	
	
	
	
});
