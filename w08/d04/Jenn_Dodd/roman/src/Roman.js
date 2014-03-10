// var romanize = function(number) {
//   var numArray = number.toString().split("").reverse();
//   var romanNum = "";
//   for(i = 0; i < numArray.length; i++) {
//     numArray[i].toNumber;
//     if(numArray[i] < 4) {
//       for(i2 = 0; i2 < numArray[i]; i2++) {
//         romanNum += "I";
//       } 
//     } else if (numArray[i] === 4) {
//       romanNum += "VI";
//     } else if (numArray[i] === 5) {
//       romanNum += "V";
//     } else if (5 < numArray[i] < 9) {
//       romodulo = numArray[i] % 5;
//       for(i2 = 0; i2 < romodulo ; i2++) {
//         romanNum += "I";
//       }
//       romanNum += "V"; 
//     } else {
//       romanNum += "XI";
//     };
//   };
//   return romanNum.split("").reverse().join("");
// };


var romanize = function(number) {
  result = "";

  while(number >= 9) {
    result += "IX";
    number -= 9;
  };
  while(number >= 5) {
    result += 'V';
    number -= 5;
  };
  while(number >= 4){
    result += "IV";
    number -= 4;
  };
  while(number > 0){
    result += "I";
    number -= 1;
  };
  return result;
};













