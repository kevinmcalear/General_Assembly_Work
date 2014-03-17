var search;
var counter = 0;
var results = [];

var findGifs = $("#search").submit('click', function(e){
  e.preventDefault();
  makeSearch($("#search input").val());
});


function makeSearch(word) {
      $.getJSON("/search?keyword="+ word, function(response) {
         search = response.data
      });
    };

function putCrapinResults(gifs) {
   results.push(gifs[counter].images.original.url);
   counter++
};


var attachGifs = $("#add").click(function(){
  putCrapinResults(search);
  
});


var i = 0;

$(window).scroll(function() {
   if($(window).scrollTop() + $(window).height() >= $(document).height()) {
       
       $('body').append("<img src='" + results[i++] + "'/>");
   }
});
