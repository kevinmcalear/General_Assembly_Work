var task;

function appendTask(task){
  li = $("<li class ="+task+">"+task+"</li>")
  $("#todolist").append(li);
  $('<input />', { type: 'checkbox', class: task }).appendTo("li");
  var x="x";
  $("<span class="+task+">x</span>").appendTo ("li");
  $.post("/tasks", { name: task, check: checkboxStatus() })
};

function checkboxStatus(){
  if($("task").checked){
    return true
  }
  else{
    return false
  };
};

function getTasks(){
  $.getJSON("/tasks/list", function(response){
    $.each(response, function(index, task){
    ($("<li>" + task.name + "</li>").append("<input type='checkbox'>").attr("id", index )).appendTo($("body"))    
    })
  });
};

getTasks();

//   $('span#'+task).prop('checked', true);
//   $('span#'+task).prop('checked', false);
// };

$("form").on("submit", function(e){
  e.preventDefault();
  task = $("#textbox").val(); 
  appendTask(task);
  this.reset();
});

//function d
//make new custom path.  new route called something else.  map to controller.


task = $("checkbox").class;

$("input[type='checkbox']#"+ task).click(function () {
if (this.checked) {
    console.log("hi")
    //$("li#"+ task).css('text-decoration', 'line-through');
  }
});




