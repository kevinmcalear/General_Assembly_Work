console.log("I am loaded!!!");

var speak = function(adjective, activity) {
  return "Hello, my name is " + this.name + ""
};

var shmonkee = new Monkey("Shmonkee");

var philonkee = new Monkey("Philonkee");

var peteronkee = new Monkey("Peteronkee");

// var shmonkee = {
//   name: "Shmonkee",
//   speak: speak,
//   level: 0
//   climb: function()  {
//     return ++this.level;
//   }
// };

var Monkey = function(name) {
  this.name = name;

  this.hungry = true;

  this.speak = function {
    return "Hello my name is " + name;
  };

  this.level = 0

  this.climb = function() {
    return ++this.level;
  };
};

// var speak = function() {
//   console.log("Hello, my name is " + Monkey.name + " !");
// };

// var climb =  function(monkey) {
//   monkey.level = parseInt(monkey.level + 1)
// };
