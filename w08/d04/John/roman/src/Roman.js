var romanize = function(number) {
  var romans = [["I", "V", "X"], ["X", "L", "C"], ["C", "D", "M"], ["M"]];
  var roman = "";
  var num = number.toString().split("");
  
  for (i = 0; i < num.length; i++) {
    if (num[i] < 4) {
      for (j=0; j < num[i]; j++) {
        romans += romans[i][0];
      }
    }
    else if (num[i] == "4") {
      roman += romans[i][0] + romans[i][1];
      }
    else if (num[i] == "5") {
      roman += romans[i][1];
    }
    else if (num[i] < 9) {
      roman += romans[i][1];
      for (j=0; j < num[i] - 5; j++) {
        romans += romans[i][0];
      }
    }
    else
      roman += romans[i][0] + romans[i][2];
  }
  return roman;
};

