function Rectangle(length, width) {
  this.length = length;
  this.width = width;
};

Rectangle.prototype.isSquare = function(){
  if(this.length === this.width){
    return true;
  };
};

Rectangle.prototype.area = function(){
  return this.length * this.width;
};

Rectangle.prototype.perimeter = function(){
  return (this.length*2) + (this.width*2);
};

function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
};

Triangle.prototype.isEquilateral = function(){
  if((this.sideA === this.sideB) && (this.sideB === this.sideC)){
    return true;
  };
};

Triangle.prototype.isIsosceles = function(){
  if((this.sideA === this.sideB) || (this.sideB === this.sideC) || (this.sideA === this.sideC)){
    return true;
  };
};

Triangle.prototype.area = function(){
  var s = ((this.sideA + this.sideB + this.sideC)/2);
  return Math.sqrt(s*(s-this.sideA) * (s-this.sideB) * (s-this.sideC));
};

  Triangle.prototype.isObtuse = function() {
    var sides = [this.sideA,this.sideB,this.sideC];
    sides.sort();
    return Math.pow(sides[0],2)+Math.pow(sides[1],2) < Math.pow(sides[2],2)
};


