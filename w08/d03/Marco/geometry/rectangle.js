function Rectangle(length, width) {
  this.length = length;
  this.width = width;
};

Rectangle.prototype.isSquare = function() {
  if (this.length === this.width) {
    return true;
  } else {
    return false;
  };
};

Rectangle.prototype.area = function() {
  return this.width * this.length;
};

Rectangle.prototype.perimeter = function() {
  return (2 * this.length) + (2 * this.width)
};

rec1 = new Rectangle(5, 5);
rec2 = new Rectangle(6, 7);
rec3 = new Rectangle(10, 44);