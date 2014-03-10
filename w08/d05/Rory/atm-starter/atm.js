//set variables for overall balances and amounts(to take out or deposit)
var checkingBalance = document.querySelector("#checking_balance");
var checkingAmount = document.querySelector("#checking_amount");
var savingsBalance = document.querySelector("#savings_balance");
var savingsAmount = document.querySelector("#savings_amount");

//create variables for buttons
var checking_deposit_button = document.querySelector("#checking_deposit");
var checking_withdraw_button = document.querySelector("#checking_withdraw");
var savings_deposit_button = document.querySelector("#savings_deposit");
var savings_withdraw_button = document.querySelector("#savings_withdraw");

//function to remove the first element of an array
Array.prototype.remove = function(from, to) {
  var rest = this.slice((to || from) + 1 || this.length);
  this.length = from < 0 ? this.length + from : from;
  return this.push.apply(this, rest);
};

//deposit to checking function
var depositToChecking = function(){
  var split = checkingBalance.innerText.split("");
  split.remove(0);

  checkingBalance.innerText = "$" + (parseInt(checkingAmount.value)+ parseInt(split.join("")))
};

//withdraw from checking function
var withdrawFromChecking = function(){
  var split = checkingBalance.innerText.split("");
  split.remove(0);
  var checkingBalanceFinal = parseInt(split.join(""));
  var checkingAmountFinal = parseInt(checkingAmount.value);
  checkingBalance.innerText = "$" + ( checkingBalanceFinal - checkingAmountFinal);
};

//deposit to savings function
var depositToSavings = function(){
  var split = savingsBalance.innerText.split("");
  split.remove(0);
  
  savingsBalance.innerText = "$" + (parseInt(savingsAmount.value)+ parseInt(split.join("")))
};

//withdraw from savings function
var withdrawFromSavings = function(){
  var split = savingsBalance.innerText.split("");
  split.remove(0);

  savingsBalance.innerText = "$" + (parseInt(split.join("")) - parseInt(savingsAmount.value))
};




//window.onload functions
window.onload = function(){
checking_deposit_button.addEventListener("click", function(eventObject) {
  checking_deposit_button.onclick = depositToChecking();
});

checking_withdraw_button.addEventListener("click", function(eventObject) {
  //ignore if negative number
  var split = checkingBalance.innerText.split("");
  split.remove(0);
  var checkingBalanceFinal = parseInt(split.join(""));
  var checkingAmountFinal = parseInt(checkingAmount.value);
  var split_two = savingsBalance.innerText.split("");
  split_two.remove(0);
  var savingsBalanceFinal = parseInt(split_two.join(""));
  var finalNum = checkingBalanceFinal - checkingAmountFinal;
  if (finalNum > 0)
    {checking_withdraw_button.onclick = withdrawFromChecking()}
  else if ((savingsBalanceFinal + checkingBalanceFinal)> checkingAmountFinal)
    console.log("nice");
  else
    {eventObject.preventDefault();
    };

});

savings_deposit_button.addEventListener("click", function(eventObject){
  savings_deposit_button.onclick = depositToSavings();
});

savings_withdraw_button.addEventListener("click", function(eventObject){
  var split = savingsBalance.innerText.split("");
  split.remove(0);
  var savingsBalanceFinal = parseInt(split.join(""));
  var savingsAmountFinal = parseInt(savingsAmount.value);
  var finalNum = savingsBalanceFinal - savingsAmountFinal;

  if (finalNum > 0)
    {savings_withdraw_button.onclick = withdrawFromSavings()}
  else
    {eventObject.preventDefault();
    };

});

};


var total = document.querySelector("#checking_balance").innerText + document.querySelector("#savings_balance").innerText;
