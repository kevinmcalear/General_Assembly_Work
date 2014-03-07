console.log("I am loaded!!!");

window.name = "stevekeee";

// var speak = function(){
//   return "Hello my name is " + this.name;
// };


// var schmonkee = {
//   name: "Schmonkee",
//   speak: speak,
//   level: 0,
//   climb: function(){
//     return this.level += 1;
//   }
// };

var Monkey = function(name) {

};
  // this.name = name;

  // this.hungry = true,

  // this.speak = function(){
  //   return "Hello my name is " + this.name;
  // };

  // this.level = 0;

  // this.climb = function(){
  //   return this.level += 1;
  // };
// };

Monkey.prototype.speak = function(){
  return "Hello I'm a frikkin money" + this.name;
};

Monkey.prototype.level = 0;

Monkey.prototype.climb = function(){
  return this.level = this.level +1;
};

var schmonkee = new Monkey("Schmonkee");
var philonkee = new Monkey("Philonkee");
var peteronkee = new Monkey("Peteronkee");
