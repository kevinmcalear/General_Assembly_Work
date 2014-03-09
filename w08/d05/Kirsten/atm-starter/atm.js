var savingsBalance = document.querySelector("#savings_balance");
var checkingBalance = document.querySelector("#checking_balance");

var inputSavings = document.querySelector("#savings_amount");
var savingsDeposit = document.querySelector("#savings_deposit");
var savingsWithdraw = document.querySelector("#savings_withdraw");

var inputChecking = document.querySelector("#checking_amount");
var checkingDeposit = document.querySelector("#checking_deposit");
var checkingWithdraw = document.querySelector("#checking_withdraw");

var removeDollar = function(value) {
  value.innerText = value.innerText.slice(1);
};

var addDollar = function(value) {
  value.innerText = ("$" + value.innerText);
};

savingsDeposit.addEventListener("click", function(){
  removeDollar(savingsBalance);
  var originalAmount = parseInt(savingsBalance.innerText);
  var depositAmount = parseInt(inputSavings.value);
  savingsBalance.innerText = (originalAmount+depositAmount);
  addDollar(savingsBalance);
  inputSavings.value = null;
});

savingsWithdraw.addEventListener("click", function(){
  removeDollar(savingsBalance);
  var originalAmount = parseInt(savingsBalance.innerText);
  var withdrawAmount = parseInt(inputSavings.value);
  if (originalAmount > withdrawAmount){
    savingsBalance.innerText = (originalAmount-withdrawAmount)};
    addDollar(savingsBalance);
  inputSavings.value = null;
});

checkingDeposit.addEventListener("click", function(){
  removeDollar(checkingBalance);
  var originalAmount = parseInt(checkingBalance.innerText);
  var depositAmount = parseInt(inputChecking.value);
  checkingBalance.innerText = (originalAmount+depositAmount);
  addDollar(checkingBalance);
  inputChecking.value = null;
});

checkingWithdraw.addEventListener("click", function(){
  removeDollar(checkingBalance);
  removeDollar(savingsBalance);
  var originalAmount = parseInt(checkingBalance.innerText);
  var withdrawAmount = parseInt(inputChecking.value);
  var totalAmount = parseInt(checkingBalance.innerText) + parseInt(savingsBalance.innerText);
  if (originalAmount > withdrawAmount) {
    checkingBalance.innerText = (originalAmount-withdrawAmount)
    addDollar(checkingBalance);
  }
  else if(withdrawAmount > originalAmount && withdrawAmount < totalAmount) {
    checkingBalance.innerText = "$0";
    savingsBalance.innerText = (totalAmount - withdrawAmount)
    addDollar(savingsBalance);
  }
  else {
    addDollar(checkingBalance);
    addDollar(savingsBalance);
  };
  inputChecking.value = null;
});









