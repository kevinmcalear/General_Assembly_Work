## Part 1 - Geometry

#### Rectangles

Given the following a `Rectangle` object like the one below, write the following functions:

* isSquare - Returns whether the rectangle is a square or not
* area - Calculates the area of the rectangle
* perimeter - Calculates the perimeter of the rectangle

```
function Rectangle(length, width) {
  this.length = length;
  this.width = width;
}
```
Create a few rectangles with different lengths and widths to test out your functions

#### Triangles

Given the following a `Triangle` object like the one below, write the following functions:

* isEquilateral - [Returns whether the triangle is equilateral or not](http://en.wikipedia.org/wiki/Equilateral_triangle)
* isIsosceles - [Returns whether the triangle is isosceles or not](http://en.wikipedia.org/wiki/Isosceles_triangle#By_relative_lengths_of_sides)
* area - [Calculates the area of the Triangle](http://en.wikipedia.org/wiki/Heron%27s_formula)
* isObtuse - [Returns whether the triangle is obtuse or not](http://en.wikipedia.org/wiki/Isosceles_triangle#By_internal_angles)

```
function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
}
```
Create a few triangles with different side lengths to test out your functions