String.prototype.repeat = function(num){
  return new Array( num + 1 ).join( this );
};


var romanize = function(number){
  var one = "I";
  var five = "V";
  var ten = "X";
  var fifty = "L";

  if (number<4) {
    return one.repeat(number);
  }
  else if (number===4) {
    return ((one.repeat(5-number))+five.repeat(Math.floor(5/number)));
  }
  else if ((number>4)&&(number<9)) {
    return (five.repeat(Math.floor(number/5))+one.repeat(number%5));
  }

  else if ((number>=9)&&(number<14)) {
    return (one.repeat(10-number)+ten.repeat(Math.floor(10/number)));
  }

  else if ((number>20)&&(number<29)) {
    return (ten.repeat(Math.floor(number/10))+five.repeat((number%20)-5)+one.repeat((number%20)-5));
  }

  else if (((50-number)<=10)&&((50-number)>0)) {
    return (ten.repeat(1)+fifty.repeat(Math.floor(50/number))+five.repeat(Math.floor(number/40))+one.repeat(number%5));
  }

  else if (number-50 > 0) {
    return (fifty.repeat(Math.floor(number/50))+ten.repeat((number-50)/10));
  }

  else {
    return number;
  };
};