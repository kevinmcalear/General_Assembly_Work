var task;

function appendTask(task){
  li = $("<li class ="+task+">"+task+"</li>")
  $("#todolist").append(li);
  $('<input />', { type: 'checkbox', class: task }).appendTo("li");
  var x="x";
  $("<span class="+task+">x</span>").appendTo ("li");
  $.post("/tasks", { name: task, check: false })
};

// function checkboxStatus(){

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




// $("input."+task).click(function () {
//     $("li."+task).toggle(this.checked);
//   });






