// How to mkae this responsive

$(window).on("scroll", function(){
  $(".bg").css("top", $(window).scrollTop()*-0.75)
  $("img").css("top", $(window).scrollTop()*0.5)
  $(".top-center").css("top", $(window).scrollTop()*0.5)
  $(".top-right").css("top", $(window).scrollTop()*0.5)
});