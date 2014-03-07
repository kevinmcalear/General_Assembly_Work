console.log("I am loaded!!");

function Rectangle(length, width) {
  this.length = length;
  this.width = width;

  this.isSquare = function() {
    if (this.length === this.width) {
      return true;
    } else {
      return false;
    };
  };

  this.area = function() {
    return length * width;
  };

  this.perimeter = function() {
    return (length + width)*2;
  };

};

var little = new Rectangle(2, 2);
var middle = new Rectangle(4, 5);
var big = new Rectangle(6, 6);


function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;

  // var sides = new Array(sideA, sideB, sideC)

  this.isEquilateral = function() {
    if (sideA === sideB && sideB === sideC) {
      return true;
    } else {
      return false;
    };
  };

  this.isIsosceles = function() {
    if (sideA === sideB || sideB === sideC || sideC === sideA) {
      return true;
    } else {
      return false;
    };
  };

  this.area = function() {
    var s = (sideA + sideB + sideC)/2
    var result = Math.sqrt(s * (s - sideA)*(s - sideB)*(s - sideC))
    return result;
  };

  this.isObtuse = function() {
    if ( 
      ((sideA * sideA + sideB * sideB) < sideC * sideC) || 
      ((sideB * sideB + sideC * sideC) < sideA * sideA) || 
      ((sideA * sideA + sideC * sideC) < sideB * sideB) 
    ) {
      return true;
    } else {
      return false;
    };
  };

};

var iso = new Triangle( 3, 3, 2 );
var equl = new Triangle( 2, 2, 2 );


