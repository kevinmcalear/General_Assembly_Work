  $(window).on('scroll', function(){ 
    var scrolled = $(window).scrollTop();
    $(".bg").css("top", scrolled *-1.1);
    $("img").css("top", scrolled*.3);
    ;})