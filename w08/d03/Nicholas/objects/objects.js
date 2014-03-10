console.log("I am loaded!!!!");

// monkey
// name
// speak
// speak -> return "Hello, my name is ..."
// climb -> level + 1
// level -> 0

window.name = "Nicholas's Window"

var speak = function(){
    return "Hello, my name is " + this.name;
  };

function Monkey(name) {
  this.name = name;

  this.hungry = true;

  this.level = 0;

  this.climb = function(){
    return ++this.level
  };
}

Monkey.prototype.speak = function() {
  return "Hello I'm " + this.name;
};

var shmonkee = new Monkey("Shmonkee");
var philonkee = new Monkey("Philonkee");
var peteronkee = new Monkey("Peteronkee");