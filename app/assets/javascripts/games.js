$(document).ready( function(){
    $(".hand-holder > .card " ).each(function(){
	$(this).draggable();
    });
});

$(document).ready( function(){
    $(".card-holder > .card").each(function(){
	$(this).droppable({
	    greedy: true,
	    drop: function(event,ui){
		alert("drop");
	    }
	});
    });
});
