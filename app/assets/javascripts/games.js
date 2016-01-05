$(document).ready( function(){
    $(".hand-holder > .card " ).each(function(){
	$(this).draggable({revert: true });
    });
});

$(document).ready( function(){
    $(".card-holder > .card").each(function(){
	$(this).droppable({
	    greedy: true,
	    drop: function(event,ui){
		var a = ui.draggable.parent().html();
		var b = $(this).parent().html();
		alert($(this).parent().html());
		$(this).parent().html(a);
		ui.draggable.html(b);
	    }
	});
    });
});
