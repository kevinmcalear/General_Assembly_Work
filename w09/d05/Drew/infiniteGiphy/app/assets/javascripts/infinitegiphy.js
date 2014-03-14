// var submit = $("#add")

// submit.addEventListener('click', function(){
//   console.log("yep")
// })
var search; 

$('#search').submit('click', function(e) {
  var searchText = $("#search input").val();
  e.preventDefault();
  $.getJSON("/search?keyword=" + searchText, function(response) {
    search = response.data
  })
});

function addToScreen(gifs) {
  // for( var i = 0; i < 10; i++) {
    $('h1').append("<img src = '" + gifs[0].images.original.url + "' /> ")
  // }
};

$('#add').click(function() {
  addToScreen(search)
})