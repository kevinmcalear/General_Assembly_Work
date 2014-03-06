console.log("I am loaded");

window.name = "gWindow";

var speak = function(adjective, activity) {
  return "Hello, my name is " + this.name + "and I am a " + adjective + " monkey, who is " + activity;
}

var monkey = {
  name: 'George',
  speak: function(){
    return "Hello my name is " + this.name;
  },
  level: 0,
  climb: function(){
    this.level = this.level + 1;
    return "The level is now " + this.level;
  }



};



function Monkey(name) {
  this.name = name;
  this.hungry = true;
  this.speak = function(){
    return "Hello my name is " + this.name;
  };
  this.level = 0;

  this.climb = function(){
    return ++this.level;
  };

}


