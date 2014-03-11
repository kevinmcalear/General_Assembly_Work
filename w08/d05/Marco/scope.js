function playWithScope() {
  var shmee = "Blah";
    // this is a local variable to playWithScope
  var notQuiteGlobal = "Hooplah";
    // this is a local variable to playWithScope
  globalShmee = "Blooh";
    // this is a global variable to window
    // can be called in console by running window.globalShmee
  
  function insideFunc() {
    console.log("insideFunc called");
    console.log(notQuiteGlobal);
      //notQuiteGlobal can be called in this scope
      //because it's defined in the scope above it
    console.log(shmee);
      //this will show up as undefined bc it knows
      //that the shmee will be redinied within its 
      //own scope -- JS first reads through the 
      //function and then has a placeholder for shmee
        //this is called hoisting

    var shmee = "Bleeh";
    notQuiteGlobal = "Heeplah";
      // had this not found a local variable in the
      //scope above, it would become a global variable
    console.log("insideFunc end");
    console.log(notQuiteGlobal);
    console.log(shmee);
  }

  insideFunc();

  console.log("playWithScope end.")
  console.log(shmee);
  console.log(notQuiteGlobal);
}
