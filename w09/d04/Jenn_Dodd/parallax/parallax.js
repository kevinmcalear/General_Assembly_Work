$(window).on('scroll', function(){
  var scrolled = $(window).scrollTop();
  $("div.bg").css("top", scrolled*(-1.25));
  $("img").css("transform", "rotate(" + scrolled +"deg)");
  $(".top-center").css("left", scrolled);
});