//bonus
var gifs;
var counter = 0;

function getGifs(keyword){
  $.getJSON('/search?keyword='+keyword, function(response){
    gifs = response;

  $('#add').on('click', function(){
    appendGif();
  });

  });  
}

function appendGif(){
  var img = $('<img src="' + gifs.data[counter].images.original.url + '" />');
  $('body').append(img);
  counter++;
}


$("form").on('submit', function(e){
  e.preventDefault();
  var keyword = $("input").val(); 
  getGifs(keyword);
  this.reset();
  counter = 0;
});


// Inifinite Scroll

$(window).on('scroll', function(){
  if($(window).scrollTop() + $(window).height() >= $(document).height()){
    appendGif();
  }
});

// Delegated Events

$("body").on('click', 'img', function(){
    $(this).toggleClass('big');
});

// part 2 = infinite scroll
// var gifs;
// var counter = 0;

// function getGifs(keyword){
//   $.getJSON('/search?keyword='+keyword, function(response){
//     gifs = response;
//   });  
// }

// $('#add').on('click', function(){
//   appendGif();
// });


// function appendGif() {
//   var img = $('<img src="' + gifs.data[counter].images.original.url + '" />');
//   $('body').append(img);
//   counter++;
// }

// $("form").on('submit', function(e){
//   e.preventDefault();
//   var keyword = $("input").val(); 
//   getGifs(keyword);
//   this.reset();
//   counter = 0;
// });


// $(window).on('scroll', function(){
//   if($window).scrollTop() + $(window).height() >= $(document.height() {
//     appendGif();
//   })
// })

//part 1 = add one at a time
// var gifs;
// var counter = 0;

// function getGifs(keyword){
//   $.getJSON('/search?keyword='+keyword, function(response){
//     gifs = response;
//   });  
// }

// $('#add').on('click', function(){
//   var img = $('<img src="' + gifs.data[counter].images.original.url + '" />');
//   $('body').append(img);
//   counter++;
// });

// $("form").on('submit', function(e){
//   e.preventDefault();
//   var keyword = $("input").val(); 
//   getGifs(keyword);
//   this.reset();
// });


//previous code
// var button = document.querySelector("button")
// var input = document.querySelector("input")
// var add = document.querySelector("#add")

// button.addEventListener("click", function(e){
//   e.preventDefault();
//   $.getJSON("/search", {keyword: input.value}, function(response){
//     data = response["data"]
//     console.log(response["data"]);
//   i = 0;
//   })
// });

// add.addEventListener("click", function(){
//   url = data[i].images.original.url
//   $("<img></img>").appendTo("html").prop("src",url)

//   ++i
// });