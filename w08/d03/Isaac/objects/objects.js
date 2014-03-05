console.log("I am loaded!");

// this is a monkey constructor 
var monkey = function(name) {
  this.name = name; 
  this.hungry = true;
  this.speak = function(){
    return "hello my name is " + this.name;
  };
  this.level = 0;
  this.climb = function(){
    return ++this.level;
  }
  console.log(this);
}

Monkey.prototype.speak = function(){
  return 'HELLOOOO';
};