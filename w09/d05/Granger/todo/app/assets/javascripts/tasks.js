var input;

$('form').on('submit', function(e){
  e.preventDefault();
  input = $('#input-task').val();

  $.ajax({
    type: 'POST',
    url: '/tasks',
    data: { 
      'task': input, 
    }
  });
  renderTasks();
});

function renderTasks() {
  $('.tasks-list').remove();
  var list = $('<ul></ul>');
  list.addClass('tasks-list');

  $.getJSON('tasks/new', function(response) {
    $.each(response, function(i, task) {
      li = $('<li>');
      li.text(task.todo).appendTo(list);
      $("<input type='checkbox'></input>").appendTo(li);
      $("<button class='delete' >delete</button>").appendTo(li);
      $("<button class='edit' >edit</button>").appendTo(li);
    });
  });

    list.appendTo('body');
};

renderTasks();