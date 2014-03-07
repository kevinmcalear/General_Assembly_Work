function playWithScope() {
  var shmee = "Blah";
  var notQuiteGlobal = "Hooplah";
  globalShmee = "Blooh";
  
  function insideFunc() {
    console.log("insideFunc called");
    console.log(notQuiteGlobal);
    console.log(shmee);

    var shmee = "Bleeh";
    notQuiteGlobal = "Heeplah";

    console.log("insideFunc end");
    console.log(notQuiteGlobal);
    console.log(shmee);
    console.log(this);
  }

  insideFunc();

  console.log("playWithScope end.")
  console.log(shmee);
  console.log(notQuiteGlobal);
  console.log(this);
  this.name = "Shmoopy";
  console.log(orange);
}


function someOtherFunc() {
  var shmee, notQuiteGlobal, shmee2;


  // stuff happens

  shmee2 = "ASD";
  console.log(notQuiteGlobal);
}