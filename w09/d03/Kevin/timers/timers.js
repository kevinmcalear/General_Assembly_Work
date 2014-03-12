var startButton = document.querySelector("#start");
var pauseButton = document.querySelector("#pause");
var resetButton = document.querySelector("#reset");

startButton.addEventListener('click', function() {
  startTimer();
});
pauseButton.addEventListener('click', function() { 
  pauseMe();
});
resetButton.addEventListener('click', function() { 
  resetTimer();
});

var timerText = document.querySelector("h1");
var time = 0;
left = 0;
direction ="right";

var updateTimer = function() {
timerText.innerHTML = "Stop Watch " + time;

if( left < 100 && direction === "right") {  
  left += 5
  timerText.style.left = left +"%";
  if(left === 100) { direction = "left"}
} else { 
  left -= 5
  timerText.style.left = left +"%"; 
  if(left === 0) { direction = "right"}
}

time++
};

var startTimer = function() {
  timer = setInterval(updateTimer, 1000);
};

var pauseMe = function() {
  clearInterval(timer);
};

var resetTimer = function() {
  pauseMe();
  timerText.innerHTML = "Stop Watch"
  time = 0;
};
