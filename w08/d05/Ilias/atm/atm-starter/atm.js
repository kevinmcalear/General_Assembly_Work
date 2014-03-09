//banking
// As a user, I want to deposit money into one of the bank accounts
// As a user, I want to withdraw money from one of the bank accounts
// Make sure the balance in an account can't go negative. If a user tries to withdraw more money than exists in the account, ignore the transaction.
// As a user, I want overdraft protection
// What happens when the user wants to withdraw more money from the checking account than is in the account?
// If a withdrawal can be covered by the balances in both accounts, take the balance of the account withdrawn from down to $0 and take the rest of the withdrawal from the other account.
// If the withdrawal amount is more than the combined account balance, ignore it.
// As a user, I want the color of my back account to reflect it's balance (there's a CSS class called .zero already written for this!)
// Are there ways to refactor your code to make it DRYer or more Object-Oriented?

//Savings
var savingsAccount = document.querySelector("div[id=account2]");
var savingsInput = document.querySelector("input[id=savings_amount]");
var savingsDepositButton = document.querySelector("[id=savings_deposit]");
var savingsWithdrawButton = document.querySelector("[id=savings_withdraw]");
var savingsBalance = document.querySelector("[id=savings_balance]");
var savingsHistory = parseInt(savingsBalance.innerHTML.replace("$",""), 10);

if (savingsHistory < 1) {
  savingsBalance.classList.add("zero");
}

function savingsDeposit() {
  var input = document.querySelector("input[id=savings_amount]").value;
  var inputNumber = parseInt(input, 10);
  if (isNaN(inputNumber) || inputNumber < 0) {
  } else {
    savingsHistory = parseInt(document.querySelector("[id=savings_balance]").innerHTML.replace("$",""), 10);
    savingsHistory += inputNumber;
    savingsInput.value = null;
    savingsBalance.innerHTML = "$" + savingsHistory;
    savingsBalance.classList.remove("zero");
  }
}

function savingsWithrawal() {
  var startingBalance = savingsBalance.innerHTML.replace("$","");
  var startingBalanceNumber = parseInt(startingBalance, 10);
  var input = document.querySelector("input[id=savings_amount]").value;
  var inputNumber = parseInt(input, 10);
  if (isNaN(inputNumber) || inputNumber < 0 || (startingBalanceNumber - inputNumber) < 0 ) {
  } else {
    var newBalance = startingBalanceNumber - inputNumber;
    savingsInput.value = null;
    savingsBalance.innerHTML = "$" + newBalance;
    if (newBalance < 1){
      savingsBalance.classList.add("zero");
    }
  }
}

savingsDepositButton.addEventListener("click", savingsDeposit);
savingsWithdrawButton.addEventListener("click", savingsWithrawal);


//Checking
var checkingAccount = document.querySelector("div[id=account1]");
var checkingInput = document.querySelector("input[id=checking_amount]");
var checkingDepositButton = document.querySelector("[id=checking_deposit]");
var checkingWithdrawButton = document.querySelector("[id=checking_withdraw]");
var checkingBalance = document.querySelector("[id=checking_balance]");
var checkingHistory = parseInt(checkingBalance.innerHTML.replace("$",""), 10);

if (checkingHistory < 1) {
  checkingBalance.classList.add("zero");
}

function checkingDeposit() {
  var input = parseInt(document.querySelector("input[id=checking_amount]").value, 10);
  checkingHistory = parseInt(checkingBalance.innerHTML.replace("$",""), 10);
  if (isNaN(input) || input < 0) {
  } else {
    checkingHistory += input;
    checkingInput.value = null;
    checkingBalance.innerHTML = "$" + checkingHistory;
    checkingBalance.classList.remove("zero");
  }
}

function checkingWithdrawal(){
  var startingBalance = checkingBalance.innerHTML.replace("$","");
  var startingBalanceNumber = parseInt(startingBalance, 10);
  var input = document.querySelector("input[id=checking_amount]").value;
  var inputNumber = parseInt(input, 10);
  var newBalance = 0;
  if (isNaN(inputNumber) || inputNumber < 0) {
  } else if ((startingBalanceNumber - inputNumber) < 0) {
    if ((savingsHistory - inputNumber) < 0) {
    } else {
      startingBalanceNumber = parseInt(checkingBalance.innerHTML.replace("$",""), 10);
      savingsHistory = parseInt(savingsBalance.innerHTML.replace("$",""), 10);
      newBalance = savingsHistory - inputNumber + startingBalanceNumber;
      checkingInput.value = null;
      savingsBalance.innerHTML = "$" + newBalance;
      if (newBalance < 1) {
        savingsBalance.classList.add("zero");
      }
      checkingBalance.innerHTML = "$0";
      checkingBalance.classList.add("zero");
    }
  } else {
    newBalance = startingBalance - inputNumber;
    checkingInput.value = null;
    checkingBalance.innerHTML = "$" + newBalance;
    if (newBalance < 1){
      checkingBalance.classList.add("zero");
    }
  }
}

checkingDepositButton.addEventListener("click", checkingDeposit);
checkingWithdrawButton.addEventListener("click", checkingWithdrawal);

