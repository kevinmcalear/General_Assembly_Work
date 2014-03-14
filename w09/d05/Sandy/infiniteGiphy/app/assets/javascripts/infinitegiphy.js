var search;
var count = 0;

  $( "#search" ).submit(function( event ) {
  event.preventDefault();
  makeSearch($("#search input").val());
  });


function makeSearch(word){
  $.getJSON("/search?keyword=" + word, function( result ){
    search = result;
  });
};

  $( "#add" ).on("click", function(){
    var img = $("<img>").attr("src", search.data[count].images.original.url);
    $(img).appendTo("body")
    count +=1;
  });


