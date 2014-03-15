
var getId = function(){
  var x;
  $.getJSON("/notes/info", function(response){
    x = response["id"];
    $("<li id="+x+">").text($("input").val())
    .append("<input type='checkbox' id="+x+">").appendTo("ul");
    $("input").val(""); 
    $("ul li").on("click", "input", function(){
      $(this).parent().toggleClass("done");
      $.ajax({
        url: "/notes/"+$(this).parent().attr("id"),
        type: "PUT",
        data: {done: true}
      });
    });
  });
};


$("#new-note").on("submit", function(e){
  e.preventDefault();
  $.post("/notes", {content: $("input").val()});
  getId();
  
});

$("ul li").on("click", "input", function(){
  $(this).parent().toggleClass("done");
  $.ajax({
    url: "/notes/"+$(this).parent().attr("id"),
    type: "PUT",
    data: {done: true}
  });
});