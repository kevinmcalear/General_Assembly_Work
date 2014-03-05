console.log("I am loaded!!!");

// monkey 
// name
// speak -> "Hello, my name is ..."
// climb -> level increases by 1
// level -> starts at 0

window.name = "Jeffkee";

var speak = function() {
  return "Hello, my name is " + this.name;
};

// var shmonkee = {
//   name: "Shmonkee",
//   speak: speak,
//   level: 0,
//   climb: function() { 
//     return ++this.level;
//   }
// };

var Monkey = function(name) {
  this.name = name;

  this.climb = function() {
    return this.level = this.level + 1;
  }
};

Monkey.prototype.speak = function() {
  return "Hello I'm " + this.name;
}

Monkey.prototype.level = 0;

Monkey.prototype.climb = function() {
  return this.level = this.level + 1;
}

var shmonkee = new Monkey("Shmonkee");

var philonkee = new Monkey("Philonkee");

var peteronkee = new Monkey("Peteronkee");
