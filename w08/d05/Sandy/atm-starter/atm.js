
//As a user, I want to deposit money into one of the bank accounts
//As a user, I want to withdraw money from one of the bank accounts
// //Make sure the balance in an account can't go negative. 
// //If a user tries to withdraw more money than exists in the account, 
// //ignore the transaction

// depositing & withdrawing checkings accounts
var checkingBalance = document.getElementById("checking_balance");
var checkingDepositButton = document.getElementById("checking_deposit");
var checkingWithdrawButton = document.getElementById("checking_withdraw");

//set initial balance counters
var checkingValue = 0;
var savingsValue = 0;

function depositToChecking() {
//get number value from input box
  var inputAmount = Number(document.getElementById("checking_amount").value);
//add to balance counter
  checkingValue += inputAmount;
//update html content to show new balance
  checkingBalance.innerHTML = "$"+checkingValue;
}

function withdrawFromChecking() {
//get user input
  var inputAmount = Number(document.getElementById("checking_amount").value)
//make sure user can't withdraw to negative
  if (inputAmount < checkingValue) {
//subtract from balance and update html page
  checkingValue -= inputAmount;
  checkingBalance.innerHTML = "$"+checkingValue;
}
}

//add functions to onclick for buttons
checkingDepositButton.onclick = depositToChecking;
checkingWithdrawButton.onclick = withdrawFromChecking;

//depositing & withdrawing savings account
var savingsBalance = document.getElementById("savings_balance");
var savingsDepositButton = document.getElementById("deposit");
var savingsWithdrawButton = document.getElementById("withdraw");

var savingsValue = 0;

function depositToSaving() {
  var inputAmount = Number(document.getElementById("savings_amount").value);
  savingsValue += inputAmount;
  savingsBalance.innerHTML = "$"+savingsValue;
}

function withdrawFromSaving() {
  var inputAmount = Number(document.getElementById("savings_amount").value);
  savingsValue -= inputAmount;
  savingsBalance.innerHTML = "$"+savingsValue;
}

savingsDepositButton.onclick = depositToSaving;
savingsWithdrawButton.onclick = withdrawFromSaving;

