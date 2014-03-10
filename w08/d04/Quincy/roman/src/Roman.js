var romanize = function (number) {
  var romanNums = {
    1000: "M",
    500: "D",
    100: "C",
    50: "L",
    10: "X",
    5: "V",
    1: "I"
  };
  romanNumeral = [];
  for (var key in romanNums) {
    console.log(key);
    if ( number / key >= 1 ) {
      numOfLetters = number / key;
      for (i = 0; i < numOfLetters; i++ ) {
        romanNumeral.push(romanNums[key]);
      }
    }
  }
  return romanNumeral.join("");
};
