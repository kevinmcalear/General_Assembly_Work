var Rectangle = function(length, width) {
  this.length = length;
  this.width = width;
};

Rectangle.prototype.isSquare = function(){
  return this.length === this.width;
};

Rectangle.prototype.area = function(){
  return this.length * this.width;
};

Rectangle.prototype.perimeter = function(){
  return (2*this.length)+(2*this.width);
};


r1 = new Rectangle(2,3);
r2 = new Rectangle(2,2);
r3 = new Rectangle(5,1);


var Triangle = function(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
};

Triangle.prototype.isEquilateral = function(){
  return (this.sideA === this.sideB && this.sideA === this.sideC);
};

Triangle.prototype.isIsosceles = function(){
  if(this.isEquilateral() === false && ())
};

Triangle.prototype.area = function(){
  
};

Triangle.prototype.isObtuse = function(){
  
};
