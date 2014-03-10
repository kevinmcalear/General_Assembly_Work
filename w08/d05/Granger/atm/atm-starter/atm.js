var checkingDepositBox = document.querySelector("#checking_amount");
var checkingDepositButton = document.querySelector("#checking_deposit");
var checkingWithdrawButton = document.querySelector("#checking_withdraw");
var checkingBalance = document.querySelector("#checking_balance");

var savingsDepositBox = document.querySelector("#savings_amount");
var savingsDepositButton = document.querySelector("#savings_deposit");
var savingsWithdrawButton = document.querySelector("#savings_withdraw");
var savingsBalance = document.querySelector("#savings_balance");

var checkDeposit = function(){
  if (checkingDepositBox.value){  
    var result = checkBal() + checkEntry();
    checkingBalance.innerText = "$" + result;
    checkingDepositBox.value = "";
  }
  checkZero(checkingBalance);
}

var saveDeposit = function(){
  if (savingsDepositBox.value){ 
    var result = saveBal() + saveEntry();
    savingsBalance.innerText = "$" + result;
    savingsDepositBox.value = "";
  }
  checkZero(savingsBalance);
}

var checkWithdraw = function(){
  if (checkingDepositBox.value && checkingBalanceCheck()){ 
    var result = checkBal() - checkEntry();
    if (result >= 0) {
      checkingBalance.innerText = "$" + result;
    }
    else {
      savingsBalance.innerText = "$" + (result + saveBal());
      checkingBalance.innerText = "$" + 0;
    }
      checkingDepositBox.value = "";
  }

  checkZero(checkingBalance);
}

var saveWithdraw = function(){
  if (savingsDepositBox.value && savingsBalanceCheck()){ 
    var result = saveBal() - saveEntry();
    if (result >= 0) {
      savingsBalance.innerText = "$" + result;
    }
    else {
      checkingBalance.innerText = "$" + (result + checkBal());
      savingsBalance.innerText = "$" + 0;
    }
      savingsDepositBox.value = "";
  }
  checkZero(savingsBalance);
}


var checkingBalanceCheck = function() {
  var projectedBalance = checkBal() - checkEntry() + saveBal();
  return projectedBalance >= 0;
}

var savingsBalanceCheck = function() {
  var projectedBalance = saveBal() - saveEntry() + checkBal();
  return projectedBalance >= 0;
}

var checkZero = function(element) {
  if (element.innerText.slice(1) === "0") {
    element.className = "zero";
  }
  else {
    element.className = "balance";
  }
}

var checkBal = function(element) {
  return(parseInt(checkingBalance.innerText.slice(1)));
}

var saveBal = function(element) {
  return(parseInt(savingsBalance.innerText.slice(1)));
}

var checkEntry = function() {
  return parseInt(checkingDepositBox.value);
}

var saveEntry = function() {
  return parseInt(savingsDepositBox.value);
}

document.onload = checkZero(checkingBalance);
document.onload = checkZero(savingsBalance);

checkingDepositButton.addEventListener("click", checkDeposit);
savingsDepositButton.addEventListener("click", saveDeposit);

checkingWithdrawButton.addEventListener("click", checkWithdraw);
savingsWithdrawButton.addEventListener("click", saveWithdraw);