var startButton = document.querySelector("#start");
var stopButton = document.querySelector("#reset");
var stopWatchText = document.querySelector("h1#timer");
var pauseButton = document.querySelector("#pause");

var i = 0;
var intervalID;

function startTimer() {
  intervalID = window.setInterval(function() {
    i++;
    stopWatchText.innerHTML = "Time Elapsed: " + i; 
  }, 1000);
  startButton.disabled = true;
}

function pauseTimer() {
  window.clearInterval(intervalID);
  startButton.disable = false;
}

function stopTimer() {
  // var clearInterval = window.clearInterval(intervalID);
  // stopWatchText.innerHTML = "Stop Watch";
  // startButton.disable = false;
  location.reload();
}

startButton.addEventListener("click", startTimer);
stopButton.addEventListener("click", stopTimer);
pauseButton.addEventListener("click", pauseTimer);