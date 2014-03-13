var timer = document.querySelector("#timer");
var reset = document.querySelector("#reset");
var start = document.querySelector("#start");
var pause = document.querySelector("#pause");
var seconds = 0;
var intervalID;
start.addEventListener("click", function(){
  var intervalID = window.setInterval(function(){
    seconds++;
  timer.innerText = "Time elapsed: " + seconds;
  }, 1000);
});
reset.addEventListener("click", function(){
  timer.innerText = "Stop Watch";
});
pause.addEventListener("click", function(){
  timer.innerText = "Time elapsed: "
});

pause.addEventListener("click", function(){
  clearInterval(intervalID);
});













