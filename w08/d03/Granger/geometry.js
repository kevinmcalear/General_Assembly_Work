function Rectangle(length, width) {
  this.length = length;
  this.width = width;
}

Rectangle.prototype.isSquare = function() {
  return this.length === this.width;
}

Rectangle.prototype.area = function() {
  return this.length*this.width;
}

Rectangle.prototype.perimeter = function() {
  return (this.length*2) + (this.width*2);
}

var jeff = new Rectangle(5,5);
var peter = new Rectangle(5,6);


function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
}

Triangle.prototype.isEquilateral = function() {
  return (this.sideA === this.sideB) && (this.sideA == this.sideC);
}

Triangle.prototype.isIsosceles = function() {
  return (this.sideA === this.sideB) || (this.sideA == this.sideC) || (this.sideB === this.sideC);
}

Triangle.prototype.area = function() {
  var a = this.sideA;
  var b = this.sideB;
  var c = this.sideC;
  var s = (a + b + c)/2;
  return Math.sqrt(s*(s-a)*(s-b)*(s-c));
}

Triangle.prototype.isObtuse = function() {
  var sides = [this.sideA, this.sideB, this.sideC]
  sides.sort();

  return (Math.pow(sides[0], 2)) > (Math.pow(sides[1],2) + Math.pow(sides[2], 2));
}

// function ob(a,b,c) {
//   return (Math.pow(c, 2)) > (Math.pow(a,2) + Math.pow(b, 2));
// }

var eq = new Triangle(7,7,7);
var right = new Triangle(3,4,5);
var iso = new Triangle(6,6,7);
var obtu = new Triangle(6,6,10);
