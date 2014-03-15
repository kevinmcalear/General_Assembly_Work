var counter = 0;
$('<ul>').appendTo('body');
var loggedResponse


var newTask = function(text) {
  $.post('/lists', {task: text}, function(response){
    console.log(response)
    loggedResponse = response
  })
  $('ul').append($('<li>').attr('id', '' + counter + '').addClass('todo').append(text)).append($('<input type="checkbox" />'));
  counter ++;
  // $('li').append($('<input type="checkbox" />'))
};

$('form').submit(function(e) {
  e.preventDefault();
  var input = $('input').val();
  newTask(input);
  this.reset();
});

// each time the application is opened, show all the todo items
// that haven't been deleted

// right now the id of the item is off a counter that gets reset 
// every time the window is reloaded. I'm not sure if that's going
// to be an issue going forward, but it would be nice if it was the 
// object's id

// every time an item is checked or x'd, there's going to be 
// a request to the serve, that will either add or delete the 
// list item 

function renderList() {
  $.getJSON("/search", function(response) {
    $.each(response, function(index, value) {
      $('ul').append($('<li>').append(value.task))
    })   
  });
}




