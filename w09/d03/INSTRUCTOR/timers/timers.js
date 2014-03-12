var startButton = document.querySelector('button#start');
var pauseButton = document.querySelector('button#pause');
var resetButton = document.querySelector('button#reset');
var stopwatchText = document.querySelector('h1#timer');

var seconds = 0;
var leftPosition = 0;
var movingRight = true;
var intervalID;

startButton.addEventListener('click', startTime);
pauseButton.addEventListener('click', pauseTime);
resetButton.addEventListener('click', resetTime);

function startTime() {
  intervalID = setInterval(updateTime, 100);
}

function updateTime() {
   seconds++;
   stopwatchText.innerText = "Time Elapsed: " + seconds;
   leftPosition += 1;
   stopwatchText.style.left = leftPosition + "%";
}

function pauseTime() {
  clearInterval(intervalID);
}

function resetTime() {
  location.reload();
  // clearInterval(intervalID);
  // seconds = 0;
  // stopwatchText.innerText = "Stop Watch" 
}