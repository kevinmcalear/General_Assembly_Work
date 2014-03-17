var input;

$('form').on('submit', function(e){
  e.preventDefault();
  input = $('#input-task').val();

  var task = $.ajax({
    type: 'POST',
    url: '/tasks',
    data: { 
      'task': input 
    }
  });

  renderTasks()

});



$('body').on('change', 'input[type=checkbox]', function() {
  var id = this.id.slice(5);

  $.ajax({
    type:'GET',
    url: '/tasks/' + id + '/cross_out'
  });

  $('#text'+id).toggleClass( "crossed-out");
})

$('body').on('click', 'span[class=delete]', function() {
  var id = this.id.slice(6);

  $.ajax({
    type:'DELETE',
    url: '/tasks/' + id
  });

  renderTasks();

})

function renderTasks() {
  $('.tasks-list').remove();
  list = $('<ul></ul>');
  list.addClass('tasks-list');

  $.getJSON('tasks/new', function(response) {
    $.each(response, function(i, task) {
      addTask(task);
    });
  });

    list.appendTo('body');
};

function addTask(task) {
  li = $('<li>');
  var id = task.id;
  var span = $("<span></span>");
  span.text(task.todo).attr('id', 'text'+id)
  span.appendTo(li);
  li.attr('id', 'task'+id).appendTo(list);

  if (task.crossed_out) {
    span.addClass("crossed-out");
    $("<input type='checkbox' checked=true></input>").attr('id',"check"+id).appendTo(li);
  } else {
  $("<input type='checkbox'></input>").attr('id',"check"+id).appendTo(li);
  }
  $("<span class='delete' >x</span>").attr('id', "delete"+id).appendTo(li);
  //$("<button class='edit' >edit</button>").attr('id', "edit"+id).appendTo(li);

}

renderTasks();