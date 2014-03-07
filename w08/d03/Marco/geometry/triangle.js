function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
}

Triangle.prototype.isEquilateral = function() {
  if (this.sideA === this.sideB && this.sideB === this.sideC) {
    return true;
  } else {
    return false;
  };
};

Triangle.prototype.isIsosceles = function() {
  if (this.sideA === this.sideB || this.sideB === sideC || this.sideC === sideA) {
    return true;
  } else {
    return false;
  };
};

Triangle.prototype.area = function() {
  var s = (this.sideA + this.sideB + this.sideC) / 2;
  return Math.sqrt(s * ((s - this.sideA) * (s - this.sideB) * (s - this.sideC)) );
};

Triangle.prototype.isObtuse = function() {
  if (Math.pow(this.sideA, 2) + Math.pow(this.sideB, 2) < Math.pow(this.sideC, 2) || Math.pow(this.sideC, 2) + Math.pow(this.sideB, 2) < Math.pow(this.sideA, 2) || Math.pow(this.sideC, 2) + Math.pow(this.sideA, 2) < Math.pow(this.sideB, 2)) {
    return true;
  } else {
    return false;
  };
};

twoSameTri = new Triangle(3, 3, 4);
threeSameTri = new Triangle(10, 10, 10);
noSameTri1 = new Triangle(5, 4, 6);
noSameTri2 = new Triangle(3, 2, 4);
obstuseTri = new Triangle(1, 1, 3);