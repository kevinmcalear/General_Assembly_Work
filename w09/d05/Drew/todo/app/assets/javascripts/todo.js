$('<ul>').appendTo('body');

var newTask = function(text) {
  $.post('/lists', {task: text}, function(response){
    $('ul').append($('<li>')
           .attr('id', response.id)
           .append(response.task)
           .append('<input type="checkbox" />')
           .append('<span>Done</span>'));
  })
};

$('form').submit(function(e) {
  e.preventDefault();
  var input = $('input').val();
  newTask(input);
  this.reset();
});

// x delete item logic 
$('body').on('click', 'span', function() {
  var id = $(this)[0].parentElement.id;
  // remove element from the DOM
  $(this)[0].parentElement.remove();
  // delete from database
  $.ajax({
    type: 'DELETE',
    url: 'lists/ '+ id +'',
  })
})

// checkbox logic

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
      // for figure out if task is completed to load with checked checkbox
      var checkedString = '';
      if ( value.completed == true){
        checkedString = 'checked'
      }
      $('ul').append($('<li>')
        .append(value.task)
        .attr('id', value.id)
        .attr('class', function(){
          if (value.completed == true) {
          return 'done'} })
        .append('<input type="checkbox" ' + checkedString + '/>')
        .append('<span>Done</span>'))
    })  
  });
}

$(window).on('load', renderList())