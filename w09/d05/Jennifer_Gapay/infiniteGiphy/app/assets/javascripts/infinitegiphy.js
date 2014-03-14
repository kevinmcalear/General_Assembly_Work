var button = document.querySelector("button")
var input = document.querySelector("input")
var add = document.querySelector("#add")

button.addEventListener("click", function(e){
  e.preventDefault();
  $.getJSON("/search", {keyword: input.value}, function(response){
    data = response["data"]
    console.log(response["data"]);
  i = 0;
  })
});

add.addEventListener("click", function(){
  url = data[i].embed_url
  $("<iFrame></iFrame>").appendTo("html").prop("src",url)

  ++i
});