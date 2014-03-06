function Rectangle(length, width) {
  this.length = length;
  this.width = width;
}

var rectangle1 = new Rectangle(1,2)
var rectangle2 = new Rectangle(2,2)

Rectangle.prototype.isSquare = function() {
  return this.length === this.width;
}

Rectangle.prototype.area = function() {
  return (this.length * this.width);
}

Rectangle.prototype.perimeter = function() {
  return ((this.length + this.width) * 2)
}


function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
}

var triangle1 = new Triangle(3,4,5)
var triangle2 = new Triangle(4,4,4)
var triangle3 = new Triangle(3,3,5)

Triangle.prototype.isEquilateral = function() {
  return this.sideA === this.sideB && this.sideB === this.sideC;
}

Triangle.prototype.isIsosceles = function() {
  return (this.sideA === this.sideB || this.sideA === this.sideC || this.sideC === this.sideB) && !(this.sideA === this.sideB && this.sideB === this.sideC);
}


// A = (1/4) Math.sqrt (4(a**2)(b**2) - ((a**2)+(b**2)-(c**2))**2)

Triangle.prototype.area = function() {
  var area = (Math.sqrt(4*(Math.pow(this.sideA, 2))*(Math.pow(this.sideB, 2)) - Math.pow((Math.pow(this.sideA, 2) + Math.pow(this.sideB, 2) - Math.pow(this.sideC, 2)), 2))/4)
  return area
}

Triangle.prototype.isObtuse = function() {

}









