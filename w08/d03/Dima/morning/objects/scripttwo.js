var Rectangle = function(length, width) {
  this.length = length;
  this.width = width;

  this.issquare = function() {
    if (this.length === this.width) {
      return true
    } else {
      return false
    }
  };

  this.area = function() {
    return this.length * this.width
  };

  this.perimeter = function() {
    return this.length + this.width
  }
};

var box = new Rectangle(4, 7);
console.log(box.issquare());
console.log(box.area());
console.log(box.perimeter());

var Triangle = function(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;

  this.isEquilateral = function() {
    if ((this.sideA === this.sideB) && (this.sideB === this.sideC)) {
      return true
    } else {
      return false
    }
  };

  this.isIsosceles = function() {
    if ((this.sideA === this.sideB) || (this.sideB === this.sideC) ||
      (this.sideC === this.sideA)) {
      return true
    } else {
      return false
    }
  };

  this.area = function() {
    var s = (this.sideA + this.sideB + this.sideC)/2
    var a = Math.sqrt(s * (s - this.sideA) * (s - this.sideB) * (s - this.sideC))
    return a
  };

  this.obtuse = function() {
    obtuseC = Math.pow(this.sideA,2) + Math.pow(this.sideB,2) < Math.pow(this.sideC,2);
    obtuseA = Math.pow(this.sideB,2) + Math.pow(this.sideC,2) < Math.pow(this.sideA,2);
    obtuseB = Math.pow(this.sideC,2) + Math.pow(this.sideA,2) < Math.pow(this.sideB,2);
    if ((obtuseC === true) || (obtuseB === true) || (obtuseC === true)) {
      return true
    } else {
      return false
    }
  }
};

var tri = new Triangle(4, 4, 3)
console.log("triangle is isEquilateral-" + tri.isEquilateral())
console.log("triangle is isIsosceles-" + tri.isIsosceles())
console.log("Area of the triangle is " + tri.area())
console.log("The triangle is obtuse-" + tri.obtuse())

