console.log("I'm loaded dude!");

// monkey
// name
// speak -> "Hello, my name is..."
// climb -> level + 1
// level -> 0

// var speak = function(adjective, activity) { 
//   return "Hello, my name is " + this.name + " and I am a " + adjective + " monkey and I enjoy " + activity;
// };

var monkey = { name: "Mongo", level: 0, speak: speak, climb: function() { return ++this.level}};

var Monkey = function(name) {
  this.name = name;
};

Monkey.prototype.speak = function() {
  return "Hello, I'm " + this.name;
}


var shmonkee = new Monkey("Shmonkee");
var philonkee = new Monkey("Philonkee");
var petronkee = new Monkey("Petronkee");