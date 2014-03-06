console.log("I am Loaded!!!");

// monkey
// name
// speak -> "Hello, my name is"
// climb -> level +1
// level -> 0

window.name = "john"

var speak = function() {
  return "Hello, my name is " + this.name;
}

var monkey = { 
  name: 'George',
  level: 0,
  speak: speak,
  climb: function(){ return ++this.level }
};

function Monkey (name) {
  this.name = name; 
  this.hungry = true; 
  this.speak = speak; 
  this.level = 0; 
  this.climb = function() {
    return ++this.level;
  }
};

Monkey.prototype.speak = function() {
  return "Hello I'm NOT" + this.name; 
}


var shmonkee = new Monkey("Shmonkee"); 
var philonkee = new Monkey("Philonkee")
