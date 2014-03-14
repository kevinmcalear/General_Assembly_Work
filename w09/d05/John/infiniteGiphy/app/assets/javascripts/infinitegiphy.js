var input = document.querySelector("input");
var data;
var i;
// var form = document.querySelector("form");
$("button#add");
// $("input").value
$("form").submit(function(e) {
  e.preventDefault();

  $.getJSON("/search", {keyword: input.value}, function(response) {
    i = 0;
    data = response.data;
  });
});

$("button#add").click(function() {
    var gif = $("<img>").attr("src", data[i].images.original.url);
    $("body").append(gif);
    i++;
  // $.each(response.data, function(i,v) {
    // var gif = $("<img>").attr("src", v.images.original.url);
    // $("body").append(gif);
  // });
});

// $(window).on("scroll", function() {
//   $.getJSON("/search", {keyword: input.value}, function(response) {
//     $.each(response.data, function(i,v) {
//       var gif = $("<img>").attr("src", v.images.original.url);
//       $("body").append(gif);
//     });
//   });
// });