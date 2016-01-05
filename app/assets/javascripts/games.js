var gameApi = function(){
    g = {
	alert: function(what){
	    $(".alert").html(what);
	}
	from_hand_to_play: function(card_id){
	    this.alert("tu sam");
	}
    }
    return g;
}();

$(document).ready( function(){
    $(".hand-holder > .card " ).each(function(){
	$(this).draggable({ revert: 'invalid'});
    });
});

$(document).ready( function(){
    $(".card-holder > .card").each(function(){
	$(this).droppable({
	    greedy: true,
	    drop: function(event,ui){
		ui.draggable.removeAttr("style");
		var empty = $(this);
		$(this).replaceWith(ui.draggable);
		empty.appendTo(".hand");
		g.alert("Bravo");
	    }
	});
    });
});
