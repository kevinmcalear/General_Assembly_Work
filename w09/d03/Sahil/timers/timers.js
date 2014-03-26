var startTimer = document.getElementById("start");
var pauseTimer = document.getElementById("pause");
var resetTimer = document.getElementById("reset");
var controls = document.getElementById("controls");

var startTime = 0;
function time() {
  var timer = document.getElementById("timer");
  ++startTime
  timer.innerText = "Time Elapsed: " + startTime
  document.getElementById("pause").appendChild("<img src=http://www.terrariaonline.com/attachments/angry_grumpy_cat_good-png.86514/'>")
}

var intervalID;

var startWatch = function(){
  intervalID = window.setInterval(time, 1000)
}

var pauseWatch = function(){
  window.clearInterval(intervalID)
}
var resetWatch = function(){
  location.reload()
}

startTimer.addEventListener("click",startWatch)
pauseTimer.addEventListener("click",pauseWatch)
resetTimer.addEventListener("click",resetWatch)


// var time = function(i){
//   i = i + 1
//   return i
// }
// var time = function(i){
//   i = i + 1; console.log(i); }