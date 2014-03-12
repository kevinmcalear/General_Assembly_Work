var start = document.querySelector('button#start');
var reset = document.querySelector('button#reset');
var pause = document.querySelector('button#pause');
var stopWatch = document.querySelector('h1#timer');
var i = 0

function startWatch() {
  stopWatch.innerText = "Time elapsed: " + i;
  i++;
};

start.addEventListener('click', function() {
  intervalID = window.setInterval(startWatch, 1000);
});

pause.addEventListener('click', function() {
  window.clearInterval(intervalID);
});

reset.addEventListener('click', function () {
  window.clearInterval(intervalID);
  i = 0
  stopWatch.innerText = "Stop Watch";
});
