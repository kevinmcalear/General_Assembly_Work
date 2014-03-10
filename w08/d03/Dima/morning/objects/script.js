window.name = "Jeffkee";
var speak = function(){
    return "Hello, my name is " + this.name;
  }
var monkey = {
  name: "Shmonkee",
  speak: speak,
  level: 0,
  climb: function() {
    return this.level++;
  }
};
// console.log(monkey)
var Monkey = function() {
  console.log(this);
}
speak2 = speak.bind(monkey)();
//call, bind, apply