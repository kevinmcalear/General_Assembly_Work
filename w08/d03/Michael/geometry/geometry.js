console.log("This is geometry")

function Rectangle(length, width) {
  this.length = length; 
  this.width = width;
}

Rectangle.prototype.isSqaure = function() {
  if(this.length === this.width)
    return true
  if(this.length !== this.width)
    return false
}

Rectangle.prototype.area = function() {
  return this.length * this.width + " Square Feet"
}

Rectangle.prototype.perimeter = function() {
  return this.length*(2) + this.width*(2) + " Feet"
}


function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA; 
  this.sideB = sideB; 
  this.sideC = sideC; 
}

Triangle.prototype.isEquilateral = function() {
  if(this.sideA===this.sideB && this.sideB===this.sideC)
    return true
  if(this.sideA!==this.sideB || this.sideB!==this.sideC)
    return false
};

Triangle.prototype.isIsosceles = function() {
  triArray = [this.sideA, this.sideB, this.sideC]
  triArray.sort()
  if(triArray[0]===triArray[1] || triArray[1]===triArray[2])
    return true
  else
    return false
}; 


Triangle.prototype.area = function() {
  s =  (this.sideA + this.sideB + this.sideC) / 2  
  return Math.sqrt( s * ( s - this.sideA)*( s - this.sideB)*( s - this.sideC)  )
}; 

Triangle.prototype.isObtuse = function() {
  triArray = [this.sideA, this.sideB, this.sideC]
  triArray.sort().reverse()

  if( Math.pow(triArray[0],2) > ( Math.pow(triArray[1],2) + Math.pow(triArray[2],2) )  ) 
    return true
  else 
    return false 
}; 


var r1 = new Rectangle(1,2);
var r2 = new Rectangle(4,4);

var t1 = new Triangle(4,4,4);
var t2 = new Triangle(2,5,6);
var t3 = new Triangle(3,4,5);
var t4 = new Triangle(6,6,2);


