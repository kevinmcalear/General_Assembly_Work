console.log("I am loaded!!");

//monkey
//name
//speak -> print "Hello, my name is ..."
//climb -> level + 1.2
//level -> 0


window.name = "Jeffkee";

var speak = function(adjective, activity); {
  // var number = 1;
  // console.log(number);
  // number = number + 1;
  return "Hello, my name is " + this.name ", and I am a " + adjective " monkey, who is doing " + activity;
};

// var shmonkee {
//   name: "Shmonkee", 
//   speak: speak,
//   level: 0,
//   climb: function() {
//     return ++this.level;
//   }
// };

var Monkey = function(name) {
  this.name = name;

  this.hungry = true;

  this.speak = function() {
    return "Hello my name is " + this.name;
  );

    this.level = 0;

    this.climb = function(){
      return ++this.level;
    };
  };
  
  var shmonkee = new Monkey("Shmonkee");
  var philonkee = new Monkey("Philonkee");
  var peterlonkee = new Monkey("Peteronkee");
};
// var monkey = {
//   name: "George",
//   speak: speak,
//   level: 0,
//   climb: function() {
//    return(this.level += 1);
//   }
// };

