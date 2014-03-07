var romanize = function(num) {
  var i = 0;
  var output = "";
  var rumerals = {
    5: "V",
    10: "X"
  };

  digits = num.toString().split("").length;

  if ( num < 1 ) {
    return "Not valid";
  } else if (num <= 3 ) {
    for (i = 0; i < num; i++) {
      output += "I";
    }
  } else if ( num > 3 && num < 9 ){
    output = "V";
    difference = num - 5;
      if ( difference < 0 ) {
        for (i = 0; i < -difference; i++) {
          output += "I";
          output = output.split("").reverse("").join("");
        }
      } else if ( difference > 0 ) {
        for (i = 0; i < difference; i++) {
          output += "I";
        }
      }
  } else if ( num > 8 && num < 13 ) {
    output = "X";
    difference = num - 10;
      if ( difference < 0 ) {
        for (i = 0; i < -difference; i++) {
          output += "I";
          output = output.split("").reverse("").join("");
        }
      } else if ( difference > 0 ) {
        for (i = 0; i < difference; i++) {
          output += "I";
        }
      }
  }

  return output;

};