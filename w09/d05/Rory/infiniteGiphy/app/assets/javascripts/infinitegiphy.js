function getGifs(keyword){

$("form").on("submit", function(e){
    e.preventDefault();
    //better way to do this is: var keyword = $("input").val();
    // var searchterm = document.querySelector("form#search input")
    // var keyword = searchterm.innerText
    var keyword = $("input").val();
    data = $.getJSON("/search/?keyword="+keyword, function(response){  
      for(var i = 0; i < 100; i++){
        $("body").append($("<img src=" + data.responseJSON.data[i]["images"]["original"]["url"] +">"))
      }
    })
      getGifs(keyword);
      this.reset();
  })


$('#add').on('click', function(){
  var image = $("<img src="+ gifs.data[0].images.original.url +"/>");

});

$(window).scroll(function () {
  if ($(window).scrollTop() >= $(document).height() - $(window).height() - 10) {
      //function you want to call
  }
});
};


$(window).on("scroll", function(){
  if($(window).scrollTop() + $(window).height() >= $(document).height()){
    
  }
});

    //   url: "/search?q=",
    //   type: "GET",
    //   data: keyword
    // }
    //   )