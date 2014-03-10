var checkingAmount = document.querySelector("#checking_amount");
var checkingDeposit = document.querySelector("#checking_deposit");
var checkingWithdraw = document.querySelector("#checking_withdraw");
var checkingBalance = document.querySelector("#checking_balance");
var savingsAmount = document.querySelector("#savings_amount");
var savingsDeposit = document.querySelector("#savings_deposit");
var savingsWithdraw = document.querySelector("#savings_withdraw");
var savingsBalance = document.querySelector("#savings_balance");


if (checkingBalance.innerText === "$0") { 
  checkingBalance.style.backgroundColor = "#F52F4F";
};

if (savingsBalance.innerText === "$0") {
  savingsBalance.style.backgroundColor = "#F52F4F";
};


var depositMoneyChecking = function(){
  checkingBalance.innerText = "$" + (parseInt(checkingAmount.value) + parseInt(checkingBalance.innerText.replace("$","")));
  checkingBalance.style.backgroundColor = "#E3E3E3";
};

var depositMoneySavings = function(){
  savingsBalance.innerText = "$" + (parseInt(savingsAmount.value) + parseInt(savingsBalance.innerText.replace("$","")));
  savingsBalance.style.backgroundColor = "#E3E3E3";
};

checkingDeposit.addEventListener("click", depositMoneyChecking);
savingsDeposit.addEventListener("click", depositMoneySavings);


var withdrawMoney = function(){
  checkingBalanceNumber = parseInt(checkingBalance.innerText.replace("$",""));
  savingsBalanceNumber = parseInt(savingsBalance.innerText.replace("$",""));
  checkingInputValue = parseInt(checkingAmount.value);
  var difference =  (checkingInputValue - checkingBalanceNumber);

  if (checkingBalanceNumber >= checkingInputValue) {
    checkingBalance.innerText = "$" + (checkingBalanceNumber - checkingInputValue);
  }
  else if ((checkingBalanceNumber < checkingInputValue) & (savingsBalanceNumber > difference)) {
    checkingBalance.innerText = "$" + (checkingBalanceNumber - checkingBalanceNumber);
    savingsBalance.innerText = "$" + (savingsBalanceNumber - difference);
  };
};

checkingWithdraw.addEventListener("click", withdrawMoney);

var withdrawMoneySavings = function(){
  savingsBalanceNumber = parseInt(savingsBalance.innerText.replace("$",""));
  savingsInputValue = parseInt(savingsAmount.value);

  if (savingsBalanceNumber >= savingsInputValue) {
    savingsBalance.innerText = "$" + (savingsBalanceNumber - savingsInputValue);
  };
};

savingsWithdraw.addEventListener("click", withdrawMoneySavings);
