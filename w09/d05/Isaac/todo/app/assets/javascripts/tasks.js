var input;
var list;

$('form').on('submit', function(e){
  e.preventDefault();
  input = $('#input-task').val();
  $.ajax({
    type: 'POST',
    url: '/tasks',
    data: { 
      'task': input, 
      'crossed_out': false
    }
  });
  list.remove();
  renderTasks();
});

function renderTasks() {
  list = $('<ul>');
  list.appendTo('body');
  $.getJSON('tasks/new', function(response) {
    response.sort( function(a,b){
      return a.id - b.id;
    });
    $.each(response, function(i, task) {
      var li = $('<li>');
      li.text(task.todo).appendTo(list);
      if(task.crossed_out===true){li.addClass('checked')};

      $("<button class='complete'>&#10004</button>").appendTo(li).on('click', function(){
        $.ajax({
          type: 'put',
          url: 'tasks/'+task.id,
          data: { 
            'id': task.id,
            'crossed_out': !task.crossed_out
          }
        });
        li.toggleClass('checked');
      });

      $("<button class='delete'>X</button>").appendTo(li).on('click', function(){
        $.ajax({
          type: 'delete',
          url: '/tasks/'+task.id,
          data: { 
            'id': task.id,
          }
        });
        li.remove();
      });
    });
  });
};

renderTasks()










