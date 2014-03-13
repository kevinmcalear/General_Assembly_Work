var start = document.getElementById("start");
var pause = document.getElementById("pause");
var reset = document.getElementById("reset");
var timer = document.getElementById("timer");
var t = 0;
var intervalId;

function updateDisplay() {
  t += 1;
  timer.innerText = "Time: " + t;
  if (t % 2 === 0) {
    timer.style.float = "left";
  } else {
    timer.style.float = "right";
  }
}

start.addEventListener("click", function(){
  intervalId = setInterval(updateDisplay, 1000);
});

pause.addEventListener("click", function() {
  clearInterval(intervalId);
});

reset.addEventListener("click", function() {
  location.reload();
  // clearInterval(intervalId);
  // t = 0;
  // timer.innerText = "Time: " + 0;
  // timer.style.textAlign = "center";
});
