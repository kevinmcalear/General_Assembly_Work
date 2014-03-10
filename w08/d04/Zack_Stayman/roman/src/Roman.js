var roman = function(number){
  var romanNums = {
    1: "I",
    5: "V",
    10: "X",
    50: "L",
    100: "C",
    500: "D",
    1000: "M"
  };
  var answer = new Array;
  
  while(number > 0){
    while(number >= 1000){
      number -= 1000;
      answer.push(romanNums[1000]);
    };

    if(number >= 900 && number < 1000){
      number -= 900;
      answer.push("CM")
    };

    while(number>= 500){
      number -= 500
      answer.push(romanNums[500]);
    };

    if(number>=400 && number < 500){
      number -=400;
      answer.push("CD");
    };
    while(number >= 100){
      number -= 100;
      answer.push(romanNums[100]);
    };

    if(number >= 90 && number < 100){
      number -= 90;
      answer.push("XC")
    };

    while(number >= 50){
      number -= 50;
      answer.push(romanNums[50]);
    };

    if(number >= 40 && number < 50 ){
      number -= 40;
      answer.push("XL")
    };

    while(number >= 10){
      number -=10;
      answer.push(romanNums[10]);
    };

    if(number === 9){
      number -= 9;
      answer.push("IX")
    };

    while(number >= 5){
      number -= 5;
      answer.push(romanNums[5]);
    };

    if(number === 4){
      number -= 4;
      answer.push("IV");
    };

    while(number >= 1){
      number -= 1;
      answer.push(romanNums[1]);
    };
  };

  return answer.join("");
};


var romanize = function(number) {
  var numberals = {M:1000,CM:900,D:500,CD:400,C:100,XC:90,L:50,XL:40,X:10,IX:9,V:5,IV:4,I:1},
  var roman_numerals = '';
  for( var i in numberals ) {
    while ( number >= numberals[i] ) {
      roman_numerals += i;
      number -= numberals[i];
    }
  }
  return roman_numerals;
}