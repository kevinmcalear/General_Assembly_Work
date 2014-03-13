$(window).on('scroll', function() {
  var scrolled = $(window).scrollTop();
  $('.bg').css('top', scrolled * -1.1);
  $('.top-left').css('top', scrolled * -0.3);
});
