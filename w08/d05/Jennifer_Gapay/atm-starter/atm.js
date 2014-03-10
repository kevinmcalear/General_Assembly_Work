
var checkingBalance = document.getElementById("checking_balance");
var checkingDepositButton = document.getElementById("checking_deposit");
var checkingWithdrawButton = document.getElementById("checking_withdraw");
var savingsBalance = document.getElementById("savings_balance");
var savingsDepositButton = document.getElementById("savings_deposit");
var savingsWithdrawButton = document.getElementById("savings_withdraw");

var checkingValue = 0;
var savingsValue = 0;

//As a user, I want to deposit money into one of the bank accounts
function depositToChecking() {
var inputAmt = Number(document.getElementById("checking_amount").value);
checkingValue += inputAmt;
checkingBalance.innerHTML = "$"+checkingValue;
}

function depositToSavings() {
  var inputAmt = Number(document.getElementById("savings_amount").value);
  savingsValue += inputAmt;
  savingsBalance.innerHTML = "$"+savingsValue;
}

// As a user, I want to withdraw money from one of the bank accounts
function withdrawFromChecking() {
  var inputAmt = Number(document.getElementById("checking_amount").value)
  if (inputAmt < checkingValue) {
  checkingValue -= inputAmt;
  checkingBalance.innerHTML = "$"+checkingValue;
  } 
  // else (inputAmt < (checkingValue + savingsValue)) {
  //   savingsValue = savingsValue - (inputAmt - checkingValue);
  //   checkingBalance.innerHTML = "$" + 0;
  // }
}


function withdrawFromSavings() {
  var inputAmt = Number(document.getElementById("savings_amount").value)
  if (inputAmt < savingsValue) {
    savingsValue -= inputAmt;
    savingsBalance.innerHTML = "$"+savingsValue;
  }
}

//buttons
checkingDepositButton.onclick = depositToChecking;
checkingWithdrawButton.onclick = withdrawFromChecking;
savingsDepositButton.onclick = depositToSavings;
savingsWithdrawButton.onclick = withdrawFromSavings;
