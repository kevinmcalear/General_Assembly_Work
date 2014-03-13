var startButton = document.querySelector("button#start");
var resetButton = document.querySelector("button#reset");
var pauseButton = document.querySelector("button#pause");
var h1 = document.querySelector("h1#timer");

var i = 0;
var intervalID;
var colors = ['red', 'blue', 'teal', 'skyblue', 'purple', 'yellow'];

var count = function(){
  var seconds = i;
  i += 1;
};

var startTimer = function(){
  intervalID = setInterval(updateTime, 1000);
};

var updateTime = function(){
  i++;
  h1.innerText = "Time Elapsed: " + i;
  h1.style.background = colors[Math.floor(Math.random() * colors.length)];
  document.body.style.background = colors[Math.floor(Math.random() * colors.length)];
};

var pauseTime = function(){
  clearInterval(intervalID);
};

var resetTimer = function(){
  location.reload();
};

startButton.addEventListener("click", startTimer);
pauseButton.addEventListener("click", pauseTime);
resetButton.addEventListener("click", resetTimer);