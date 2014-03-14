console.log("Loaded");
//Rectangles//
function rectangle(length, width) {
  this.length = length;
  this.width = width;
}
//isSquare - Returns whether the rectangle is a square or not//
var isSquare = function(rectangle) {
  if (rectangle.length === rectangle.width)
    return true
  else
    return false
};

var rectangle_1 = {
  length: 5,
  width: 5
};

var rectangle_2 = {
  length: 20,
  width: 5
};

//area - Calculates the area of the rectangle//

var area = function(rectangle) {
  return rectangle.length * rectangle.width;
};

//perimeter - Calculates the perimeter of the rectangle//

var perimeter = function(rectangle) {
  return (rectangle.length*2)+(rectangle.width*2);
};

//Triangles//
function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
}
//isEquilateral - [Returns whether the triangle is equilateral or not]//
var isEquilateral = function(triangle) {
  if ((triangle.sideA === triangle.sideB)&&(triangle.sideB === triangle.sideC))
    return true
  else
    return false;
};
//isIsosceles - [Returns whether the triangle is isosceles or not]//
var isIsosceles = function(triangle) {
  if ((triangle.sideA === triangle.sideB)&&(triangle.sideB === triangle.sideC))
    return false
  else if ((triangle.sideA === triangle.sideB)||(triangle.sideB === triangle.sideC)||(triangle.sideA == triangle.sideC))
    return true
  else
    return false;
};
//area - [Calculates the area of the Triangle]//
var area = function(triangle) {
  var s =((triangle.sideA + triangle.sideB + triangle.sideC)/2);
  return Math.sqrt(s*((s-triangle.sideA)*(s-triangle.sideB)*(s-triangle.sideC)))
};
//isObtuse - [Returns whether the triangle is obtuse or not]//
var isObtuse = function(triangle) {
  if (triangle.sideA**2+triangle.sideB**2)<triangle.sideC**2
  else if (triangle.sideB**2+triangle.sideC**2)<triangle.sideA**2
  else if (triangle.sideC**2+triangle.sideA**2)<triangle.sideB**2
  else if (triangle.sideA**2 + triangle.sideB**2) < triangle.sideC**2 && (triangle.sideC>triangle.sideA) && (c>triangle.sideB)
  else
    return false;
};

var triangle_1 = {
  sideA: 5,
  sideB: 5,
  sideC: 5
};

var triangle_2 = {
  sideA: 8,
  sideB: 8,
  sideC: 5
};

var triangle_3 = {
  sideA: 5,
  sideB: 6,
  sideC: 7
};
