function getTasks(){
    $.getJSON('/tasks/show', function(response){
      console.log(response)
      $("<ul>").appendTo($("div#list"))
      //Why does #list work?
      $.each(response, function(index, task){
        var responseId = task.id
          console.log(responseId)
        var item = ($("<li id ="+ responseId +">" + task.name + "</li>")
          .append("<input type='checkbox' id = "+ responseId +">")
          .append("<img src='http://cerrawater.com/water-library/wp-content/uploads/2012/01/x1.png'>"))
        item.appendTo("ul")
      });


      $("input[type='checkbox']").on("click", function(e) {
    
        $(this).parent().toggleClass("strikethrough")

        var strikeThrough;
        if ( $(this).parent().hasClass("strikethrough")==true ) {
          var crossOut = true;
        }
        else {
          var crossOut = false;
        }
        console.log("/tasks/"+ ($(this).parent().attr("id")).toString())

        $.ajax({
          type: "POST",
          url: "/tasks/"+ ($(this).parent().attr("id")).toString(),
          data: {check: crossOut},
        });
      });

      $("img").on("click", function(){
        $.ajax({
          url:"/tasks/" + ($(this).parent().attr("id")),
          type: "DELETE"
        });
      });
    });
  }  

getTasks();

$("form").on("submit", function(e) {
    e.preventDefault()
    var task = $("#textbox").val()
    $.post("/task/create", {task: task } );
    $("#textbox").val("")
});