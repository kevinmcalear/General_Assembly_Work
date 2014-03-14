

  $("form").on("submit", function(e){
    e.preventDefault();
    var note = $("input").val();
    $.post("/welcome", {list: note}, function(response){
      console.log(response);
    } );
    this.reset();
  }); 
