var checkingBalance = 0;
var savingsBalance = 0;
var checkBalDisplay = document.getElementById("checking_balance"); //display

var savBalDisplay = document.getElementById("savings_balance"); //display

var checkingAmountInp = document.getElementById("checking_amount"); //input field
var checkingDepositButt = document.getElementById("checking_deposit"); //deposit button
var checkingWithdrawButt = document.getElementById("checking_withdraw"); //withdraw button
var savingsAmountInp = document.getElementById("savings_amount"); //input field
var savingsDepositButt = document.getElementById("savings_deposit"); //deposit button
var savingsWithdrawButt = document.getElementById("savings_withdraw"); //withdraw button
var backgrounds = document.getElementsByClassName("balance");

// function changeBackgroundColor() {
//   if (checkingBalance === 0) {
//     backgrounds[0].style.backgroundColor = "#F52F4F";
//     backgrounds[0].style.color = "#FFFFFF";
//   } else {
//     backgrounds[0].style.backgroundColor = "#E3E3E3";
//   }
// }
// changeBackgroundColor();
// Not sure how to apply color change properly

function depositChecking() {
  var input = parseInt(checkingAmountInp.value);
  checkingBalance += input;
  checkBalDisplay.innerText = "$" + checkingBalance;
  checkingAmountInp.value = '';
};
checkingDepositButt.addEventListener("click", depositChecking);


function withdrawChecking() {
  var input = parseInt(checkingAmountInp.value);
  var overdraft = input - checkingBalance;
  if (checkingBalance < input && savingsBalance > overdraft) {
    checkingBalance -= checkingBalance;
    savingsBalance -= overdraft;
  } else if (savingsBalance < overdraft) {
    return checkingBalance
  } else {
    checkingBalance -= input
  };
  checkBalDisplay.innerText = "$" + checkingBalance;
  savBalDisplay.innerText = "$" + savingsBalance;
  checkingAmountInp.value = '';
};
checkingWithdrawButt.addEventListener("click", withdrawChecking);


function depositSavgins() {
  var input = parseInt(savingsAmountInp.value);
  savingsBalance += input;
  savBalDisplay.innerText = "$" + savingsBalance;
  savingsAmountInp.value = '';
};
savingsDepositButt.addEventListener("click", depositSavgins);


function withdrawSavings() {
  var input = parseInt(savingsAmountInp.value);
  var overdraft = input - savingsBalance;
  if (savingsBalance < input && checkingBalance > overdraft) {
    savingsBalance -= savingsBalance;
    checkingBalance -= overdraft;
  } else if (checkingBalance < overdraft) {
    return savingsBalance
  } else {
    savingsBalance -= input
  };
  savBalDisplay.innerText = "$" + savingsBalance;
  checkBalDisplay.innerText = "$" + checkingBalance;
  savingsAmountInp.value = '';
};
savingsWithdrawButt.addEventListener("click", withdrawSavings);
