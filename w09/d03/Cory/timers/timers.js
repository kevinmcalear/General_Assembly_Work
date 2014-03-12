var timer = document.getElementById("timer")
var reset = document.getElementById("reset");
var start = document.getElementById("start");
var pause = document.getElementById("pause");


var seconds = 0;
var intervalID;

start.addEventListener("click", startTime);
pause.addEventListener("click", pauseTime);
reset.addEventListener("click", resetTime);

function startTime() {
  intervalID = setInterval(updateTime, 1000);
};

function updateTime() {
  seconds++;
  timer.innerText = "Time Elaspsed: " + seconds;
}

function pauseTime() {
  clearInterval(intervalID);
}

function resetTime() {
  clearInterval(intervalID);
  seconds = 0;
  timer.innerText = "Stop Watch";
}

