console.log("I'm Making Monkeys!");

// Monkey
// Name
// speaks "Hello, my name is..."
// climb => level + 1
// level => 0

var speak = function() {
  return "Hello, my name is " + this.name;
};

var climb = function() {
  return ++this.level;
};

function Monkey(name) {
  this.name = name;

  this.hungry = true;

  // this.speak = function() {
  //   return "Hello, my name is " + this.name + " the Monkey.";
  // };

  this.level = 0;
  this.climb = function() {
    return ++this.level;
  };
};

Monkey.prototype.speak = function() {
  return "Ellow I has Monkey" + this.name;
};

Monkey.prototype.level = 10;

var shmonkee = new Monkey("Shmonkee");
var philonkee = new Monkey("Philonkee");
var peteronkee = new Monkey("Peteronkee")
