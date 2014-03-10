// variables from DOM
var savingsAccount = document.querySelector("#account2");
var checkingAccount = document.querySelector("#account1");

// Savings nodes
var savingsWithdraw = document.querySelector("#savings_withdraw");
var savingsDeposit = document.querySelector("#savings_deposit");
var savingsAmount = document.querySelector("#savings_amount");


//Checking nodes
var checkingWithdraw = document.querySelector("#checking_withdraw");
var checkingDeposit = document.querySelector("#checking_deposit");
var checkingAmount = document.querySelector("#checking_amount");

var money = 0;
var savings = 0;
var checking = 0;


var savingsBalance = document.querySelector("#savings_balance");
var checkingBalance = document.querySelector("#checking_balance");

savingsDeposit.addEventListener("click", function(eventObject) {
  money += parseInt(savingsAmount.value);
  savings += parseInt(savingsAmount.value);
  savingsBalance.innerText = "$" + savings.toString();
  savingsAmount.value = ""; 
});

savingsWithdraw.addEventListener("click", function(eventObject) {
  if (money >= savingsAmount.value ) {
    if (savingsAmount.value > savings) {
      checking = checking - (savingsAmount.value - savings);
      savings = 0;
      money -= savingsAmount.value; 
    } else {
      money -= savingsAmount.value;
      savings -= savingsAmount.value;
    }
    checkingBalance.innerText = "$" + checking.toString();
    savingsBalance.innerText = "$" + savings.toString();
  }
  savingsAmount.value = "";
});

checkingDeposit.addEventListener("click", function(eventObject) {
  money += parseInt(checkingAmount.value);
  checking += parseInt(checkingAmount.value);
  checkingBalance.innerText = "$" + checking.toString();
  checkingAmount.value = ""; 
});

checkingWithdraw.addEventListener("click", function(eventObject) {
  if (money >= checkingAmount.value ) {
    if (checkingAmount.value > checking) {
      savings = savings - (checkingAmount.value - checking);
      checking = 0;
      money -= checkingAmount.value; 
    } else {
      money -= checkingAmount.value;
      checking -= checkingAmount.value;
    }
    checkingBalance.innerText = "$" + checking.toString();
    savingsBalance.innerText = "$" + savings.toString();
  }
  checkingAmount.value = "";
});



