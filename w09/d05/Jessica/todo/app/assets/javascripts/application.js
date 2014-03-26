// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function () {

  function getTasks(){
    $.getJSON('/tasks/list', function(response){
      $("<ul>").appendTo($("div#list"))
      $.each(response, function(index, task){
         var item = ($("<li id ="+ task.id +">" + task.name + "</li>")
          .append("<input type='checkbox'>").attr("id", task.id)
          .append("<img src='http://cerrawater.com/water-library/wp-content/uploads/2012/01/x1.png'>"))
         item.appendTo("ul")
      });

      $("ul li").on("click", "input[type='checkbox']", function(e) {     
        $(this).parent().toggleClass("strikethrough") 
        var strikeThrough;
        if ( $(this).parent().hasClass("strikethrough")==true ) {
          crossOut = true
        }
        else {
          crossOut = false;
        }

        $.ajax({
          type: "PATCH",
          url: "/tasks/" + $(this).parent().attr("id") + "",
          data: {check: crossOut} 
        });
      });

      $("img").on("click", function(e){
        taskId = $(this).parent().attr("id")
        $.ajax({
          url:"/tasks/" + taskId + "",
          type: "DELETE"
        });
        $(this).parent().remove();
      });
    });
  };  

  getTasks();

  $("form").on("submit", function(e) {
      e.preventDefault()
      var taskName = $("#textbox").val()
      $.post("/tasks", {name: taskName} );
      $("#textbox").val("")
  });



});

