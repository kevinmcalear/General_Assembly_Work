var resetButton = document.querySelector("button#reset");
var startButton = document.querySelector("button#start");
var pauseButton = document.querySelector("button#pause");
var stopwatchText = document.querySelector("h1#timer");

var seconds = 0;
var intervalID;

// startButton.addEventListener('click'), function(){
//    intervalID = setInterval(function(){
//     seconds++;
//     stopwatchText.innerText = "time elapsed: " + seconds
//     }, 1000);
// };

startButton.addEventListener('click', startTime);
pauseButton.addEventListener('click', pauseTime);
resetButton.addEventListener('click', resetTime);

function startTime() {
  intervalID = setInterval(updateTime, 1000);
}

function updateTime() {
  seconds++;
  stopwatchText.innerText = "Time Elapsed: " + seconds
}

function pauseTime() {
  clearInterval(intervalID);
}

function resetTime() {
  clearInterval(intervalID);
  seconds = 0;
  stopwatchText.innerText = "Stop Watch"
}