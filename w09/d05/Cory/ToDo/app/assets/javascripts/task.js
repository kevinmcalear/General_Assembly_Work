

  $("form").on("submit", function(e){
    e.preventDefault();
    var note = $("input").val();
    $.post("/welcome", {list: note}, function(response){
      console.log(response);
    } );
    this.reset();
  }); 



  function listTasks(){
    $.getJSON("/welcome", function(response){
     console.log(response);
   });
  }

  listTasks();
  