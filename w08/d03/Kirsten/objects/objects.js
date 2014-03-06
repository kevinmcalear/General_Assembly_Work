console.log("I am loaded!");

window.name = "Jeff"

var speak = function(adjective, activity){
  // var name = "jeff"
  // var number = 1;
  // console.log(number);
  // number = number + 1;
  return ("Hello, my name is " + this.name + ", and i am " + adjective + " monkey, who is doing " + activity)
  };

// var monkey = {
//   name: "bananas",
//   level: 0,
//   speak: speak,
//   // speak: function(){
//   //   return ("Hello, my name is " + this.name)
//   // },
//   climb: function() {
//     // return this.level += 1;
//     return ++this.level;
//   }
// };

var Monkey = function(name) {
  this.name = name
  // this.level = 0;
  // this.hungry = true;
  // // this.speak = function(){ 
  // //   return "Hello, my name is " + this.name; 
  // // };
  // this.level = 0;
  // this.climb = function() {
  //   return ++this.level;
  // };
};

var shmonkee= new Monkey("Shmonkee");
var philonkee= new Monkey("Philonkee");
var peteronkee= new Monkey("Peteronkee");

Monkey.prototype.speak = function() {
  return "Hello I'm "+this.name;
};

Monkey.prototype.climb = function() {
  return this.level = this.level + 1;
}

Monkey.prototype.level = 0;
















