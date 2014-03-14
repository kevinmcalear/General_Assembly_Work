var header = document.querySelector("h1#timer");
var reset = document.querySelector("button#reset");
var start = document.querySelector("button#start");
var pause = document.querySelector("button#pause");
var a = 0;
var timer;

var left = 0;

start.addEventListener("click", startTime );
pause.addEventListener("click", pauseTime );
reset.addEventListener("click", resetTime );

function startTime() {
  timer = setInterval( updateTime, 1000 );
  start.disabled = true;
}

function updateTime() {
  header.innerText = "Time Elapsed: " + a;
  ++a;
  left += 10;
  header.style.left = left + 'px';
}

function resetTime() {
  clearInterval(timer);
  header.innerText = "Stop Watch";
  a = 0;
}

function pauseTime() {
  clearInterval(timer);
  start.disabled = false;
}