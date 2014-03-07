console.log("So much geometry brah!");

function Rectangle(length, width) {
  this.length = length;
  this.width = width;
};

var rect1 = new Rectangle(40, 40);
var rect2 = new Rectangle(20, 80);
var rect3 = new Rectangle(100, 200);
var rect4 = new Rectangle(1, 2);

Rectangle.prototype.isSquare = function(){
  if (this.width === this.length) {
    return true;
  } else {
    return false;
  };
};
Rectangle.prototype.area = function(){
  return this.width * this.length;
};
Rectangle.prototype.perimeter = function(){
  return 2 * (this.width + this.length);
};

function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
};

var tri1 = new Triangle(1,2,3);
var tri2 = new Triangle(4,4,4);
var tri3 = new Triangle(10,2,3);
var tri4 = new Triangle(3,2,3);


Triangle.prototype.isEquilateral = function(){
  if (this.sideA === this.sideB && this.sideB === this.sideC){
    return true;
  } else {
    return false;
  };
};
Triangle.prototype.isIsosceles = function(){
  if (this.sideA === this.sideB && this.sideB != this.sideC){
    return true;
  } else if (this.sideA === this.sideC && this.sideB != this.sideC) {
    return true;
  } else if (this.sideB === this.sideC && this.sideA != this.sideC) {
    return true;
  } else {
    return false;
  };
};
Triangle.prototype.area = function(){
  return (Math.sqrt((4 * Math.pow(this.sideA, 2) * Math.pow(this.sideB,2)) - Math.pow((Math.pow(this.sideA,2) + Math.pow(this.sideB,2) - Math.pow(this.sideC,2)),2)) )/ 4
};
Triangle.prototype.isObtuse = function(){
  var sides = [this.sideA,this.sideB,this.sideC];
    sides.sort();
    return Math.pow(sides[0],2)+Math.pow(sides[1],2) < Math.pow(sides[2],2);
};