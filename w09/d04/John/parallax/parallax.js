$(window).on("scroll", function() {
  var scrolled = $(window).scrollTop();
  $("div.bg").css("top", -scrolled/1.4);
  $("img.top-left").css("top", -scrolled/0.2);
  $("img.top-center").css("top", -scrolled/0.9);
  $("img.top-right").css("top", scrolled/0.9);

  $("img.bottom-left").css("top", -scrolled/0.2);
  $("img.bottom-center").css("top", -scrolled/0.9);
  $("img.bottom-right").css("top", -scrolled/13.0);
  $("img.bottom-right").css("left", -scrolled/2.0);

  // $("img").css('-webkit-transform', 'rotate('+scrolled + 'deg)');
  // $("img").css('-webkit-transform', 'rotateX('+scrolled + 'deg)');


});
