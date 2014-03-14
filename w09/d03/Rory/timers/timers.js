//run timer every 1 second


//identify parts of document & create place to display time
var stopwatchText = document.querySelector("h1#timer");
var startButton = document.querySelector("button#start");
var pauseButton = document.querySelector("button#pause");
var resetButton = document.querySelector("button#reset");

var seconds = 0;
//need to put intervalID here so it's accessible
var intervalID;

startButton.addEventListener("click", startTime);
pauseButton.addEventListener("click", pauseTime);
resetButton.addEventListener("click", resetTime);

function startTime(){
  intervalID = setInterval(updateTime,1000);
}

function updateTime(){
  seconds++;
  stopwatchText.innerText = "Time Elapsed: "+ seconds;
}

function pauseTime(){
  clearInterval(intervalID);
}

function resetTime(){
  document.location.reload(true);
//  location.reload;
}