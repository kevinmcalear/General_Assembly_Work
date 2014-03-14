

  $("form").on("submit", function(e){
    e.preventDefault();
    var note = $("input").val();
    $.post("/welcome", {list: note}, function(response){
      console.log(response);
    } );
    this.reset();
  }); 


  function listTasks(){
    data = $.getJSON("/welcome", function(response){
    $.each(response, function(i, note) {
      $("<li>").text(note.list).appendTo("ul");
    })
      $("<input type=checkbox>").appendTo("li");

   });
  }

  listTasks();
  