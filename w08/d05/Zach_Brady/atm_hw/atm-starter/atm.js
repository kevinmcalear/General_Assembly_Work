var checkingBalance = document.querySelector("div#checking_balance");
var savingsBalance = document.querySelector("div#savings_balance");
var checkingDepositedAmount = document.querySelector("input#checking_amount");
 
var checkingDeposit = function(checkingDepositedAmount){
  checkingBalance = parseInt( checkingBalance.innerHTML.replace("$", "") );
  checkingBalance += checkingDepositedAmount;
  checkingBalance = "$" + checkingBalance;
}

function checkingWithdrawal(checkingWithdrawnAmount){
  checkingBalance = parseInt( checkingBalance.innerHTML.replace("$", "") );
  checkingBalance -= withdrawnAmount;
  checkingBalance = "$" + checkingBalance;
}

// function savingsDeposit(amount){

// }

// function savingsWithdrawal(amount){

// }

var depositToChecking = document.querySelector("input#checking_deposit");
var withdrawnFromChecking = document.querySelector("input#checking_withdraw");

// an eventListerner for each button, each one a "click"
depositToChecking.addEventListener("click", checkingDeposit);