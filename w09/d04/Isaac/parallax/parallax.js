$(window).on('scroll', function(){
  console.log("scrolling");
  var scrolled = $(window).scrollTop();
  $('img').css("top", scrolled * 0.3);
  $('.bg').css("top", scrolled + -1);
  $('.bottom-center').css("position", "fixed");
});