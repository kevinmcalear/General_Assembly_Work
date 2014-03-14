var resetButton = document.querySelector("button#reset");
var startButton = document.querySelector("button#start");
var pauseButton = document.querySelector("button#pause");
var stopwatchText = document.querySelector("h1#timer");

var second = 0;
var top = 0;

// startButton.addEventListener("click", function(){
// 	intervalID = setInterval(function(){
// 		second++;
// 		console.log(second);
// 		stopwatchText.innerText = "Time Elapsed: " + second;
// 	});
// 	// stopwatchText.innerText = "Time Elapsed " + second
// });

startButton.addEventListener("click", startTime);

function startTime() {
	intervalID = setInterval(updateTime, 1000);
}

function updateTime(){
	second++;
	stopwatchText.innerText = "Time Elapsed: " + second;
	startButton.disabled = true;
	startButton.style.background = "#454545";
}

pauseButton.addEventListener("click", function(){
	clearInterval(intervalID);
	startButton.disabled = false;
	startButton.style.background = "#4479BA";
});

resetButton.addEventListener("click", function(){
	second = 0;
	stopwatchText.innerText = "Stop Watch";
});
