var startButton = document.querySelector('#start');
var stopButton = document.querySelector('#pause');
var resetButton = document.querySelector('#reset');
var timer = document.querySelector('#timer');
var intervalID;
var intervalID2;
var counter = 0;

function delayedCounter() {
  intervalID = window.setInterval(addToCounter, 100);
  intervalID2 = window.setInterval(bounce, 100);
}

function bounce() {
  if (counter%40 < 20) {
    timer.style.left = (counter%40) + "%";
  } else {
    timer.style.left = (40 - counter%40) + "%";
  };

}

function addToCounter() {
  counter++;
  timer.innerText = "Time elapsed: " + counter;
}

function start() {
  timer.innerText = "Time elapsed: " + counter;
  delayedCounter();
}

function stop() {
  clearInterval(intervalID);
 clearInterval(intervalID2);
   
}

function reset() {
  counter = 0;
  timer.innerText = "Stop Watch";
}

startButton.addEventListener('click', start);
stopButton.addEventListener('click', stop);
resetButton.addEventListener('click', reset);
