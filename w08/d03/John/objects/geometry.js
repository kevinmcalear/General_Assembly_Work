var Rectangle = function(length, width) {
  this.length = length;
  this.width = width;
  this.isSquare = function() {
    return this.length === this.width;
  };

  this.area = function() {
    return this.length * this.width;
  };

  this.perimeter = function() {
    return this.length * 2 + this.width * 2;
  };
};

r1 = new Rectangle(5,3);
r2 = new Rectangle(4,4);
r3 = new Rectangle(7,1);




// ***************************************




function findHypotenuse(side1,side2) {
  return Math.sqrt(side1 * side1 + side2 * side2);
}

function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;

  this.isEquilateral = function() {
    return this.sideA === this.sideB && this.sideB === this.sideC;
  };

  this.isIsosceles = function() {
    return this.sideA === this.sideB || this.sideA === this.sideC || this.sideB === this.sideC;
  };

  this.area = function() {
    s = (this.sideA + this.sideB + this.sideC) / 2;
    return Math.sqrt(s * (s - this.sideA) * (s - this.sideB) * (s - this.sideC));
  };

  this.isObtuse = function() {
    if (this.sideA < this.sideC && this.sideB < this.sideC)
      return this.sideC > findHypotenuse(this.sideA, this.sideB);
    else if (this.sideA < this.sideB && this.sideC < this.sideB)
      return this.sideB > findHypotenuse(this.sideA, this.sideC);
    else
      return this.sideA > findHypotenuse(this.sideC, this.sideB);
  };
}



t1 = new Triangle(5,5,5);
t2 = new Triangle(5,5,6);
t3 = new Triangle(6,4,4);
t4 = new Triangle(11,2,2);
t5 = new Triangle(2,11,2);
t6 = new Triangle(2,2,11);


