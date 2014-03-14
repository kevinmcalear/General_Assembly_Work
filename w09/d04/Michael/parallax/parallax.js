
//Step 1: Hello World" for Scrolling
// $(window).on('scroll',function(){
//   console.log("Hello World")
// });

// Step 2:  Tells you where the top of the page is. 
// $(window).scrollTop();

//Solution:
  //Component A: Create an EventWhisperer for Scroll
  //Component B: Use CSS function to set BG
  //Component C:  Use ScrollTop to get the window position. 
$(window).on('scroll',function(){
  $(".bg").css("top", $(window).scrollTop() * -1.2 )
})


//Fixed position is similar to scrolling at the same speed

//Solution Using Scrolled as a variable (and sandbox)
$(window).on('scroll',function(){
  var scrolled = $(window).scrollTop(); 
  $('.bg').css("top", scrolled * -1.1);
  // $('img').css("top", scolled * .3);
  // $( 'img' ).css('-webkit-transform', 'rotate('+scrolled +'deg)');
  $(".top-center").css("left",scrolled * 0.25);
  $(".top-center").css("top",scrolled * 0.5);

  $(".bottom-center").css("left",scrolled * 0.25);

})