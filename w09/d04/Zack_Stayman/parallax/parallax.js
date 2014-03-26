$(window).on("scroll", function(){
  $(".bg").css("top", -.625*$(window).scrollTop());
  // $("img").css("top", -.1*$(window).scrollTop());
  $(".top-left").css("right", .2*$(window).scrollTop());
  $(".top-right").css("left", .2*$(window).scrollTop());
  $(".top-center").css("top", .25*$(window).scrollTop());
});