$(window).on('scroll',function() {
  s = $(window).scrollTop();
  $(".bg").css("-webkit-transform","translateY("+ (-s*2) + "px)")
  $(".top-center").css("-webkit-transform","translateY("+ (s*2) + "px)")
  $(".top-right").css("-webkit-transform","rotateY("+ (-s*5) + "deg)")
  $(".bottom-left").css("-webkit-transform","translateY("+ (s*7) + "px)")
  $(".top-left").css("-webkit-transform","rotateZ("+ (-s*2) + "deg)")
});