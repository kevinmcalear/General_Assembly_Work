// ##Disable the Start Button

 var timer = document.querySelector("h1#timer")
 var reset = document.querySelector("#reset") 
 var start = document.querySelector("#start") 
 var pause = document.querySelector("#pause") 
 var time = document.querySelector("div.controls")

  time.value = 0
  function timeAdd(){
    time.value += 1; 
    console.log("hello");
    timer.innerText = "Time Elapsed: "+ time.value 
  };

  var intervalId
  function timerStart(){
    intervalID = window.setInterval(timeAdd,1000);
    
  };
  function timerPause(){
    clearInterval(intervalID);
    timer.innerTest = "Time Elapsed: "+ time.value 
  }
  function timerReset(){
    time.value = 0;
    timer.innerText = "Time Elapsed: "+ time.value 
  };

  
  start.addEventListener("click",timerStart)
  pause.addEventListener("click",timerPause)
  reset.addEventListener("click",timerReset)