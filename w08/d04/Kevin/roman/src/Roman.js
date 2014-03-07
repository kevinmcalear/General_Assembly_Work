var romanize = function(number) {
  var numberals = {
    M:1000,
    CM:900,
    D:500,
    CD:400,
    C:100,
    XC:90,
    L:50,
    XL:40,
    X:10,
    IX:9,
    V:5,
    IV:4,
    I:1
  };

  var roman_numerals = '';


  for ( var key in numberals ) {
    while ( number >= numberals[key] ) {
      roman_numerals = roman_numerals + key;
      number = number - numberals[key];
    }
  }
  return roman_numerals;
};