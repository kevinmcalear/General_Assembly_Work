var input = document.querySelector("input");
var data;
var i;
var docHt = $(document).height();
var winHt = $(window).height();
var scrollTop = $(window).scrollTop();


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
});

$(window).on("scroll", function() {
  if (scrollTop + winHt === docHt) {
    var gif = $("<img>").attr("src", data[i].images.original.url);
    $("body").append(gif);
    i++;
  }
});