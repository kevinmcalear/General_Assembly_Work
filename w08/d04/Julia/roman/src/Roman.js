   var romanize = function(number) {
    var numeralValues = [1000, 500, 100, 50, 10, 5, 1];
    var number = number;
    var resultOfDivision = resultOfDivision;
    var countOfEachNumber = [];

    var x = 0;
    while(x < numeralValues.length) {
      resultOfDivision = (number/(numeralValues[x]));
       var roundedDownNum = Math.floor(resultOfDivision);
      countOfEachNumber.push(roundedDownNum);
      number = (number - (roundedDownNum * numeralValues[x]));
      x++;
    };

    var romanNumerals = ["M", "D", "C", "L", "X", "V", "I"];

    var output = [];

    var a = countOfEachNumber[0];
    while(a > 0) {
      output.push(romanNumerals[0])
      a--;
    };

    var b = countOfEachNumber[1];
    while(b > 0){
      output.push(romanNumerals[1]);
      b--;
    };

    var c = countOfEachNumber[2];
    while(c > 0){
      output.push(romanNumerals[2]);
      c--;
    };

    var d = countOfEachNumber[3];
    while(d > 0){
      output.push(romanNumerals[3]);
      d--;
    };

    var e = countOfEachNumber[4];
    while(e > 0){
      output.push(romanNumerals[4]);
      e--;
    };

    var f = countOfEachNumber[5];
    while(f > 0){
      output.push(romanNumerals[5]);
      f--;
    };

    var g = countOfEachNumber[6];
    while(g > 0){
      output.push(romanNumerals[6]);
      g--;
    };

    var romanNumeralOutput = output.join("");
    

    var ivNum = romanNumeralOutput.replace("IIII", "IV");
    var xxNum = ivNum.replace("XXXX", "XL");
   	// var vivNUM = xxNum.replace("VIV", "IX");
    return xxNum;

    };
