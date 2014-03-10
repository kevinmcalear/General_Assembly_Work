// var romanize = function(input) {
//   var output = "";
//   convert = input.toString();
//   convertArray = convert.split("");
//   var ones = convertArray.pop();
//   var tens = convertArray.pop();
//   var hund = convertArray.pop();
//   var thous = convertArray.pop();

//   if(hund < 4){
//     for(var i=0; i < hund; i++){
//       output += "C"};
//   }

//   if(5 < tens && tens < 9){
//     output += "XC"
//   }

//   if(tens > 5){
//       output += "L";
//     for(var i=0; i < tens-5; i++){
//       output += "X"};
//   }

//   if (tens === "5"){
//     output += "X"
//   }

//   if (tens === "4"){
//     output += "XL"
//   }

//   if(tens > 1 && tens < 4){
//     for(var i=0; i < tens; i++){
//       output += "X"};
//   }

//   if(tens === "1"){
//     output += "X"
//   }
//   if(ones === "9"){
//     output += "IX"
//   }
//   if(5 < ones && ones < 9){
//     output += "V";
//     for(var i=0; i <(ones-5); i++){
//       output += "I"
//     };
//   }
//   if(ones === "5"){
//     output += "V"
//   }
//   if(ones === "4"){
//     output += "IV"
//   }
//   if(ones < 4){
//     output += "";
//     for(var i=0; i < ones; i++){
//       output += "I"
//     };
//   }
// return output
// };

var romanize = function(number) {
  result = "";
  mappings = [
    {arabic: 1000, roman: "M"},
    {arabic: 900, roman: "CM"},
    {arabic: 500, roman: "D"},
    {arabic: 400, roman: "CD"},
    {arabic: 100, roman: "C"},
    {arabic: 90, roman: "XC"},
    {arabic: 50, roman: "L"},
    {arabic: 40, roman: "XL"},
    {arabic: 10, roman: "X"},
    {arabic: 9, roman: "IX"},
    {arabic: 5, roman: "V"},
    {arabic: 4, roman: "IV"},
    {arabic: 1, roman: "I"}
  ]

  for (var i = 0; i< mappings.length; i++){
    var mapping = mappings[i];
    while( number >= mapping.arabic){
      result += mapping.roman;
      number -= mapping.arabic;
    }
  }

  // while(number >= 9){
  //   result += "IX"
  //   number -= 9;
  // }
  // while(number >= 5){
  //   result += "V"
  //   number -= 5;
  // }
  // while(number >= 4){
  //   result += "IV"
  //   number -=4;
  // }

  // while(number > 0){
  //   result += "I";
  //   number -= 1;
  // }
  return result
}




