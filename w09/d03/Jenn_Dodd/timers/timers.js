var reset = document.querySelector("#reset");
var start = document.querySelector("#start");
var pause = document.querySelector("#pause");

var h1 = document.querySelector("#timer");

var count = 0;

var intervalID;

var startTime = function(){
  intervalID = window.setInterval(setText, 1000)
  start.disabled = true;
};

var setText = function(){
  h1.innerText = "Time elapsed: " + count;
  count += 1;
};

var pauseTime = function(){
  window.clearInterval(intervalID);
  start.disabled = false;
};

var stopTime = function(){
  location.reload();
};

start.addEventListener("click", startTime);

reset.addEventListener("click", stopTime);

pause.addEventListener("click", pauseTime);









