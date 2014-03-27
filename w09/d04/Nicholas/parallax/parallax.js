
$(window).on("scroll", function(){
  var scrolled = $(window).scrollTop();
  if(scrolled < 800){
  $('img').css("top", scrolled * 1.1);
  $('.bottom-center').css("position", "fixed");
  $('.top-center').css("right", scrolled * 0.5);
  $(".top-left").css("-webkit-transform","rotateZ("+ (-scrolled*2) + "deg)");
  }
});

