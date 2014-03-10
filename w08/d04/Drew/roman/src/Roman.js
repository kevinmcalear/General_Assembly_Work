var romanize = function(num) {

  result = '';
  mappings = [

  ]

  for (var i = 0; i < mappings.length; i++) {
    var mapping = mappings[i];
    while (number >= mapping.arabic) {
      result += mapping.roman;
      number -= mapping.arabic;
    }
  }

  return result;
  //   while(number > 9){
  //   result += 'IX'
  //   number -= 9;
  // }

  // while(number > 5){
  //   result += 'V'
  //   number -= 5;
  // }

  // while(number > 4){
  //   result += 'IV'
  //   number -= 4;
  // }



  // while(number > 0){
  //   result += 'I'
  //   number -= 1;
  // }

};

  // var digits = String(+num).split(""),
  //       key = ["","C","CC","CCC","CD","D","DC","DCC","DCCC","CM",
  //              "","X","XX","XXX","XL","L","LX","LXX","LXXX","XC",
  //              "","I","II","III","IV","V","VI","VII","VIII","IX"],
  //       roman = "",
  //       i = 3;
  //   while (i--)
  //       roman = (key[+digits.pop() + (i * 10)] || "") + roman;
  //   return Array(+digits.join("") + 1).join("M") + roman;


