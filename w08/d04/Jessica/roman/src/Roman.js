result = '';
mappings = [
  {arabic: 1000, roman: 'M'},
  {arabic: 900, roman: 'CM'},
  {arabic: 500, roman: 'D'},
  {arabic: 400, roman: 'CD'},
  {arabic: 100, roman: 'C'},
  {arabic: 90, roman: 'XC'},
  {arabic: 50, roman: 'L'},
  {arabic: 40, roman: 'XL'},
  {arabic: 10, roman: 'X'},
  {arabic: 9, roman: 'IX'},
  {arabic: 5, roman: 'V'},
  {arabic: 4, roman: 'IV'},
  {arabic: 1, roman: 'I'}
];

for (var i = 0; i< mappings.length; i++) {
  var mapping = mappings[i];
  while( number >= mapping.arabic) {
    result += mapping.roman;
    number -= mapping.arabic;
  };
};


// var romanize = function(number) {
//   romanNumerals = {
//     1: "I",
//     5: "V",
//     10: "X",
//     50: "L"
//   };

//   if (number < 4 & number > 1) {
//     var numberOfOnes = number/1
//     romanNumeralsArray = []
//     var i = 0
//     while (i < numberOfOnes) {
//       romanNumeralsArray.push(romanNumerals[1])
//       i++
//     };
//       return romanNumeralsArray.join("");
//   }

//   else if (number > 5 & number < 9) {
//     var numberOfOnesV = number % 5
//     romanNumeralsArrayV = []
//     romanNumeralsArrayV.push(romanNumerals[5])
//     var i = 0
//     while (i < numberOfOnesV) {
//       romanNumeralsArrayV.push(romanNumerals[1])
//       i++
//     };
//     return romanNumeralsArrayV.join("");
//   }

//   else if (number > 10 & number < 20) {
//     romanNumeralsArrayX = []
//     var numberOfOnesX = number % 10
//     var numberOfFivesX = number/5
//     var numberOfTensX = number / 10
//     result = "";
//     while (number > 0)
//       result += "I";
//       number --;
//     }; 
    
//     var i = 0
//     while (i < )
//     romanNumeralsArrayX.push(romanNumerals[10])
//     romanNumeralsArrayX.push(romanNumerals[5])
//     romanNumeralsArrayX.push(romanNumerals[1])


//   }

//   // else if (number > 10 & number <  )
//   else {
//     return romanNumerals[number];
//   };
// };


