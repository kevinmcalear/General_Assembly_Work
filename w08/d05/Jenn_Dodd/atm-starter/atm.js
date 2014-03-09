// CHECKING
var inputCheck = document.querySelector("#checking_amount");
var depositButtonCheck = document.querySelector("#checking_deposit");
var withdrawButtonCheck = document.querySelector("#checking_withdraw");
var balanceCheck = document.querySelector("#checking_balance");

// SAVINGS

var inputSavings = document.querySelector("#savings_amount");
var depositButtonSavings = document.querySelector("#savings_deposit");
var withdrawButtonSavings = document.querySelector("#savings_withdraw");
var balanceSavings = document.querySelector("#savings_balance");

var enterCheckingDeposit = function() {

  balanceCheck.innerHTML = "$" + inputCheck.value;
};

var enterSavingsDeposit = function() {

  balanceSavings.innerHTML = "$" + inputSavings.value;
};

depositButtonCheck.addEventListener("click", enterCheckingDeposit);
depositButtonSavings.addEventListener("click", enterSavingsDeposit);
