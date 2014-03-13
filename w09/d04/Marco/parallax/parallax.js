$(window).on("scroll", function() {
  var scrolled = $(window).scrollTop();
  $("div.bg").css("top", scrolled * -2);
  $('.top-left').css('top', scrolled * 1.5);
  $('.top-right').css('right', scrolled);
  $(".top-center").css('-webkit-transform', 'rotate('+scrolled + "deg)");
  $(".bottom-center").css('-webkit-transform', 'rotateY('+scrolled + "deg)");
  $(".bottom-left").css('-webkit-transform', "rotateZ("+ (-scrolled*2) + "deg)");
});