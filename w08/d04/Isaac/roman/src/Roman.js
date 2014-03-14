var romans = {
  "0": "",
  "1": "I",
  "2": "II",
  "3": "III",
  "4": "IV",
  "5": "V",
  "6": "VI",
  "7": "VII",
  "8": "VIII",
  "9": "IX"
};
var romanstens = {
  "1": "X",
  "2": "XX",
  "3": "XXX",
  "4": "XL",
  "5": "L",
  "6": "LX",
  "7": "LXX",
  "8": "LXXX",
  "9": "XC"
}
var romanshundreds = {
  "1": ""
}
var romanize = function(num1){
  var num = ''+num1;
  var numArray = num.split('');
  var result = [];
  var ones = numArray.pop();
  var tens = numArray.pop();
  var hundreds = numArray.pop();
  result.push(romanshundreds[hundreds]);
  result.push(romanstens[tens]);
  result.push(romans[ones]);
  return result.join('');
};








