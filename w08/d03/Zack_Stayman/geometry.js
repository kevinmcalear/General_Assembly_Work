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
  return this.sideA === this.sideB && this.sideA === this.sideC;
};

Triangle.prototype.isIsosceles = function(){
  return this.sideA === this.sideB || this.sideA === this.sideC || this.sideB === this.sideC;
};

Triangle.prototype.area = function(){
  var s = (this.sideA + this.sideB + this.sideC)/2;
  return Math.sqrt(s*(s-this.sideA)*(s-this.sideB)*(s-this.sideC));
};

Triangle.prototype.isObtuse = function(){
  var sides = [this.sideA, this.sideB, this.sideC]
  var largest = Math.max(this.sideA, this.sideB, this.sideC);
  var index = sides.indexOf(largest);
  if (index > 1) {
    array.splice(index, 1)
  };
    return ;
  };

  var printNums = function(element, index, array){
    return element + ",";
  };

  t1 = new Triangle(20.3,31.7,16.3)
