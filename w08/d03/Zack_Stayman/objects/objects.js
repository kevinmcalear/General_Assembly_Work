console.log("I am loaded")



var speak = function(){
  return "Hello my name is " + this.name ; 
};

var climb = function(){
  return ++this.level;
};

// var monkey1 = {
//   name: "Ceaser",
//   speak: speak,
//   climb: climb,
//   level: 0
// };

// var monkey2 = {
//   name: "Phil",
//   speak: speak,
//   climb: climb,
//   level: 0
// };



var Monkey = function(name) {
  this.hungry = true; 
  this.name = name;
  this.level = 0;
  this.climb = climb;
  console.log(this);
};

Monkey.prototype.speak = function(){
  return "Hello I'm " + this.name;
};

Monkey.prototype.level = 0;

Monkey.prototype.climb = function() {
  return ++this.level;
};

var bob = new Monkey("bob");

var joe = new Monkey("joe");

var jim = new Monkey("jim");