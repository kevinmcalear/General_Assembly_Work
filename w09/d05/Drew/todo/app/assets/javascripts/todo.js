var counter;
$('<ul>').appendTo('body');
var loggedResponse

var newTask = function(text) {
  $.post('/lists', {task: text}, function(response){
    // console.log(response)
    // console.log(response.id)
    $('ul').append($('<li>')
           .attr('id', response.id)
           .addClass('todo')
           .append(response.task)
           .append('<input type="checkbox" />')
           .append('<span>x</span>'));
  })
  
};

$('form').submit(function(e) {
  e.preventDefault();
  var input = $('input').val();
  newTask(input);
  this.reset();
});


$('body').on('click', 'span', function() {
  var id = $(this)[0].parentElement.id;
  // remove element from the DOM
  $(this)[0].parentElement.remove();
  $.ajax({
    type: 'DELETE',
    url: 'lists/ '+ id +'',
  })
})


$('body').on('change', 'input[type=checkbox]', function() {
  var id = $(this)[0].parentElement.id;
  $(this).parent().toggleClass('done');
  var parent = $(this).parent().attr('class');

  if ( parent == "done" ) {
    $.ajax({
      type: 'PUT',
      url: 'lists/ '+ id +'',
      data: {completed: true}
    })
  } else {
    $.ajax({
      type: 'PUT',
      url: 'lists/ '+ id +'',
      data: {completed: false}
  })}
})


// display all list items on load
function renderList() {
  $.getJSON("/search", function(response) {
    $.each(response, function(index, value) {
      $('ul').append($('<li>')
        .append(value.task)
        .attr('id', value.id)
        // .addClass('todo')
        .append('<input type="checkbox" />')
        .append('<span>x</span>'))
    })   
  });
}

$(window).on('load', renderList())