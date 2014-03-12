var resetButton = document.querySelector("button#reset");
var startButton = document.querySelector("button#start");
var pauseButton = document.querySelector("button#pause");
var timerDisplay = document.querySelector("h1#timer");
var left = 0;
var intervalID;

var seconds = 0

startButton.addEventListener("click", startTime);
pauseButton.addEventListener("click", pauseTime);
resetButton.addEventListener("click", resetTime);

function startTime() {
  intervalID = setInterval(updateTime, 1000);
};

function updateTime() {
  seconds++;
  timerDisplay.innerText = "Time Elapsed: " + seconds;
};

function pauseTime() {
  clearInterval(intervalID);
};

function resetTime() {
  clearInterval(0);
  seconds = 0;
  timerDisplay.innerText = "Stop Watch";
}