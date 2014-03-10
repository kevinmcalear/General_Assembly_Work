var romanize = function(number) {
  var romanNumber = "";

  mappings = [
    {arabic: 1000, roman: "M"}
    {arabic: 900, roman: "CM"}
    {arabic: 500, roman: "D"}
    {arabic: 400, roman: "CD"}
    {arabic: 100, roman: "M"}
    {arabic: 90, roman: "M"}
    {arabic: 1000, roman: "M"}
    {arabic: 1000, roman: "M"}
  ];
  if(number === 10) {
    romanNumber += "X";
    number -= 10
  };

  if(number === 9) {
    romanNumber += "IX";
    number -= 9
  };

  if(number === 5) {
    romanNumber += "V";
    number -= 5
  };

  if(number === 4) {
    romanNumber += "IV";
    number -= 4
  };
  for (i = 0; i < number; i++) {
    romanNumber += "I"
  }

  return romanNumber;
}
//    if(number >= 4) {
//     number = number % 4
//     romanNumber += "IV";
//    };
// }

