var todoFieldInput = $("input");

$("form").submit(function(e) {
	e.preventDefault();
	$.post("/newtodo", { todo: todoFieldInput.val() })
	var checkedItem = $("<li>").text(todoFieldInput.val()).append('<input class="check_todo" type="checkbox">').appendTo("ul");
	$('.check_todo').click(function() {
		var todo = $(this).parent();
		if(checkedItem === ('checked')) {
			todo.toggleClass('checked');
		} else {
			todo.toggleClass('checked');
		}
		
	});
	this.reset();
});

$.getJSON("/new", function(response) {
	$.each(response, function(index, text) {
		var checkedItem = $("<li>").text(text.todo).append('<input class="check_todo" type="checkbox">').appendTo("ul"); 
		$('.check_todo').click(function() {
		var todo = $(this).parent();
		if(checkedItem === ('checked')) {
			todo.toggleClass('checked');
		} else {
			todo.toggleClass('checked');
		}	
	});
	});
});


// var checkedItem = $("<li>").text(todoFieldInput.val()).append('<input class="check_todo" type="checkbox">').appendTo("ul");
// 	$('.check_todo').click(function() {
// 		var todo = $(this).parent();
// 		if(checkedItem === ('checked')) {
// 			todo.toggleClass('checked');
// 		} else {
// 			todo.toggleClass('checked');
// 		}
		
// 	});

