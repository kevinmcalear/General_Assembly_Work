var gif;
counter = 0;

$("form").on("submit", function(e){
    e.preventDefault();
    var searchterm = document.querySelector("form#search input")
    var keyword = searchterm.value
    data = $.getJSON("/search/?keyword=" + keyword, function(response){
      for(var i = 0; i < 20; i++){
        $("body").append($("<img src=" + data.responseJSON.data[i]["images"]["original"]["url"] +">") )
      }
    })
  })


$('add').on('click', function() {
  var img = $("<img src=" + data.responseJSON.data[i]["images"]["original"]["url"] +">");
  $("body").append(img);
  counter++;
});


$(window).on('scroll', function() {
  if($(window).scrollTop() + $(window).height() >= $(document).height(){
    appendGif();
  })
});
      

