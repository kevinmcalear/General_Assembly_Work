var reset = document.getElementById("reset");
var start = document.getElementById("start");
var pause = document.getElementById("pause");
var timer = document.getElementById("timer");
var count = 0;

var increment = function(){
  stopwatch = window.setInterval(function(){
    count ++
    timer.innerText = count;
  }, 1000);
};


start.addEventListener("click", increment);

pause.addEventListener("click", function(){
  clearInterval(stopwatch);
});

reset.addEventListener("click", function(){
  count = 0;
  timer.innerText = "Stop Watch"
});