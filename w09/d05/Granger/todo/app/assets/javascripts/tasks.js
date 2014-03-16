var input;

$('form').on('submit', function(e){
  e.preventDefault();
  input = $('#input-task').val();

  $.ajax({
    type: 'POST',
    url: '/tasks',
    data: { 
      'task': input 
    }
  });
  renderTasks();
});



$('body').on('change', 'input[type=checkbox]', function() {
  // $(this)
  //  .parent()
  //  .innerHTML
  //  .css('text-decoration-line: line-through')
  //console.log($(this))
  var id = this.id.slice(-1);

  var task = $.ajax({
    type: 'GET',
    url: '/tasks/' + id 
  });

  // console.log(task)

  $.ajax({
    type:'GET',
    url: '/tasks/' + id + '/cross_out'
  });
 $("");
})

function renderTasks() {
  $('.tasks-list').remove();
  var list = $('<ul></ul>');
  list.addClass('tasks-list');

  $.getJSON('tasks/new', function(response) {
    $.each(response, function(i, task) {
      li = $('<li>');
      var id = task.id;
      li.text(task.todo).attr('id', 'task'+id).appendTo(list);
      $("<input type='checkbox'></input>").attr('id',"check"+id).appendTo(li);
      $("<span class='delete' >x</span>").attr('id', "delete"+id).appendTo(li);
      $("<button class='edit' >edit</button>").attr('id', "edit"+id).appendTo(li);
    });
  });

    list.appendTo('body');
};

renderTasks();