
$(window).on('scroll', function(){
  var scrolled = $(window).scrollTop();
   $('.bg').css('top', scrolled * -1.1)
   $('.top-left').css('top', scrolled * 0.3)
   $('.top-center').css('top', scrolled * 0.5)
   $('.top-right').css('right', scrolled * 0.7)

   $('.bottom-left').css('top', scrolled * -0.3)
   $('.bottom-center').css('top', scrolled * -0.5)
   $('.botton-right').css('right', scrolled * -0.7)
});

