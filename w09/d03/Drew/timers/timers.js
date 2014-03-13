// will go indefinitely every section //
// funciton called every second // 

var target = document.getElementById("timer")

var startButton = document.querySelector('button#start')
var pauseButton = document.querySelector('button#pause')
var resetButton = document.querySelector('button#reset')
var stopwatchText = document.querySelector('h1#timer')
var seconds = 0
var top = 0
var intervalID

startButton.addEventListener('click', startTime)
pauseButton.addEventListener('click', pauseTime)
resetButton.addEventListener('click', resetTime)

function startTime(){
  intervalID = setInterval(updateTime, 1000);
};

function updateTime(){
  seconds ++;
  stopwatchText.innerText = "Time Elapsed " + seconds;
};

function pauseTime(){
  clearInterval(intervalID);
  startButton.disabled = true
};

function resetTime(){
  location.reload();
  // clearInterval(intervalID);
  // // seconds = 0;
  // stopwatchText.innerText = "Stop Watch"
}