var romanize = function(number) {
  romanNumber = "";

  thousandsNum = parseInt(number / 1000);
  romanNumber += thousands(thousandsNum);
  number = number - thousandsNum*1000;

  hundredsNum = parseInt(number / 100);
  romanNumber += hundreds(hundredsNum);
  number = number - hundredsNum*100;

  tensNum = parseInt(number / 10);
  romanNumber += tens(tensNum);
  number = number - tensNum*10;

  romanNumber += ones(number);

  return romanNumber;
};

ones = function(number) {
  onesNumerals = ["", "I", "II", "III", "IV", "V","VI", "VII", "VIII", "IX"];
  return onesNumerals[number];
};

tens = function(number) {
  tensNumerals = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"];
  return tensNumerals[number];
};

hundreds = function(number) {
  hundredsNumerals = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"];
  return hundredsNumerals[number];

};

thousands = function(number) {
  thousandsNumerals = ["", "M", "MM", "MMM"];
  return thousandsNumerals[number];
};