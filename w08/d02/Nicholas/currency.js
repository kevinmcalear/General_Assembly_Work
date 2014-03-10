
var dollarsToPounds = function(amount) {
  return ("$" + amount + " is " + "\u00A3" + parseInt(amount/1.67*100)/100)};

var poundsToDollars = function(amount) {
  return ("\u00A3" + amount + " is " + "$" + parseInt(amount*1.67*100)/100)};

var currencyChoice = function()
{ 
  var currencyFrom = prompt("What is the currency to convert?");
  var currencyTo = prompt("What currency to you want to convert to?");
  var amount = prompt("What amount would you like to convert?");

  if (currencyFrom === "pounds") {
    return poundsToDollars(amount);
  } else {
    return dollarsToPounds(amount);
  };
};
