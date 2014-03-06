var Rectangle = function Rectangle(length, width) {
  this.length = length;
  this.width = width;
};

var isSquare = function () {
  if (Rectangle.length === Rectangle.width) {
    return "Is a square";
  } else {
    return "Is not a square";
  }
};

var area = function () {
  course.log(
    "The area of the rectangle is " + ((Rectangle.length) * (Rectangle.width))
  )
};

var perimeter = function () {
  course.log(
    "The perimeter of the rectangle is " + ((Rectangle.length * 2) + (Rectangle.width * 2))
  )
};

var Triangle = function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
}

var isEquilateral = function () {
  if (
    Triangle.sideA === Triangle.sideB &&
    Triangle.sideB === Triangle.sideC &&
    Triangle.sideA === Triangle.sideC
    )
    {
    return "Is an equilateral triangle";
  } else {
    return "Is not an equilateral triangle";
  }
};

var isIsosceles = function () {
  if ( Triangle.sideA === Triangle.sideB ||
    Triangle.sideB === Triangle.sideC ||
    Triangle.sideA === Triangle.sideC )

  { return "Is an isosceles triangle"; }

  else

  { return "Is not an isosceles triangle"; }

};

var areaTriangle = function () {
  var a = Triangle.sideA
  var b = Triangle.sideB
  var c = Triangle.sideC

  return "The area of the triangle is " + (
    ((1/4)(Math.sqrt(
      (a+b+c)(-a+b+c)(a-b+c)(a+b-c)
    )))
  );
};

var isObtuse = function () {
  var a = Triangle.sideA
  var b = Triangle.sideB
  var c = Triangle.sideC

  if ( (a^2 + b^2) < c^2 ||
    b^2 + c^2 < a^2 ||
    c^2 + a^2 < b^2 )
    { return "The triangle is obtuse"; }
  else {
    return "The triangle is not obtuse";
  }
};


