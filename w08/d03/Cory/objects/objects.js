console.log("I am loaded!!");

window.name = "George";

  var speak = function() {
    return "Hello my name is " + (this.name);
  }

// var monkey = {
//   name: "Bobo",
//   speak: speak,
//   level: 0,
//   climb: function() { 
//     return this.level += 1; 
//    }
//   };

var Monkey = function(name) {
  this.name = name;
  // this.hungry = true;
  // this.speak = function() {
  //   return "Hello my name is " + this.name;
  // };

  // this.level = 0;
  // this.climb = function() {
  //   return this.level += 1;
  // };

};

Monkey.prototype.speak = function() {
  return "Hello I'm " + this.name
};

Monkey.prototype.level = 0;

Monkey.prototype.climb = function() {
  return this.level += 1;
};

var shmonkey = new Monkey("Shmonkey");
var bobo = new Monkey("Bobo");
var hobo = new Monkey("Hobo");

// var monkey1 = {
//   name: "Hobo",
//   speak: speak,
//   level: 0,
//   climb: function() { 
//     return this.level += 1; 
//    }
//   };