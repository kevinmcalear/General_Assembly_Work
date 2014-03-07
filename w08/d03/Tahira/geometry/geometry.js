console.log("Geometry Loaded")

var Rectangle = function(length, width) {
  this.length = length;
  this.width = width;
};

Rectangle.prototype.isSquare = function() {
  return this.length === this.width;
};

Rectangle.prototype.area = function() {
  return this.length*this.width;
};

Rectangle.prototype.perimeter = function() {
  return 2*this.length + 2*this.width;
};

rectangle1 = new Rectangle(2,2);
rectangle2 = new Rectangle(2,4);

var Triangle = function(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
};

Triangle.prototype.isEquilateral = function() {
  return (this.sideA === this.sideB) && (this.sideA === this.sideC);
};

Triangle.prototype.isIsosceles = function() {
  return (this.sideA === this.sideB) || (this.sideB === this.sideC) || (this.sideA === this.sideC);
};

Triangle.prototype.area = function() {
  return parseFloat(.25*Math.sqrt((this.sideA+this.sideB+this.sideC)*(this.sideB + this.sideC - this.sideA)*(this.sideA-this.sideB+this.sideC)*(this.sideA+this.sideB-this.sideC)))
};

Triangle.prototype.isObtuse = function() {
  sides = [this.sideA, this.sideB, this.sideC];
  sorted_sides = sides.sort(function(a,b){return a-b});
  return Math.pow(sides[0],2) + Math.pow(sides[1],2) < Math.pow(sides[2],2);
};

triangle1 = new Triangle(3,3,3);
triangle2 = new Triangle(3,4,5);
triangle3 = new Triangle(12,18,22);
triangle4 = new Triangle(18,22,12);


