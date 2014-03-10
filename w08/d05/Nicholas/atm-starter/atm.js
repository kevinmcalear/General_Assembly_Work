var accountOneBalance = document.getElementById("checking_balance");
var accountTwoBalance = document.getElementById("savings_balance");
var amount = document.getElementById("checking_amount");
var amountSavings = document.getElementById("savings_amount");
var depositCheckingButton = document.getElementById("checking_deposit");
var withdrawCheckingButton = document.getElementById("checking_withdraw");
var depositSavingsButton = document.getElementById("savings_deposit");
var withdrawSavingsButton = document.getElementById("savings_withdraw");

var depositMoneyChecking = function(){
  var current_amount = parseInt(accountOneBalance.innerText.replace("$","") );
  var new_amount = current_amount + parseInt(amount.value.replace("$","") );
  if (new_amount > 0){
  accountOneBalance.innerText = "$" + new_amount;
  } else {
    alert("Cannot deposit a negative amount");
  } 
  amount.value = "";
  changeColorChecking();
};

var depositMoneySavings = function(){
  var current_amount = parseInt(accountTwoBalance.innerText.replace("$","") );
  var new_amount = current_amount + parseInt(amountSavings.value.replace("$","") );
  if (new_amount > 0){
  accountTwoBalance.innerText = "$" + new_amount;
  } else {
    alert("Cannot deposit a negative amount");
  }
  amountSavings.value = "";
  changeColorSavings();
};

var withdrawMoneySavings = function(){
  var current_amount = parseInt(accountTwoBalance.innerText.replace("$","") );
  var withdrawAmount = parseInt(amountSavings.value.replace("$","") );
  var new_amount = current_amount -  withdrawAmount;
  if (new_amount > 0){
  accountTwoBalance.innerText = "$" + new_amount;
  amountSavings.value = "";
  changeColorSavings();
  } else {
    alert("Sorry! Not enough money!");
    amountSavings.value = "";
  }
};

var withdrawMoneyChecking = function(){
  var current_amount = parseInt(accountOneBalance.innerText.replace("$","") );
  var new_amount = current_amount - parseInt(amount.value.replace("$","") );
  if (new_amount < 0){
    var withdrawAmount = Math.abs(new_amount);
    var currentSavingsAmt = parseInt(accountTwoBalance.innerText.replace("$","") );
    var newAmount = currentSavingsAmt - withdrawAmount;
    if (newAmount >= 0){
      accountTwoBalance.innerText = "$" + newAmount;
    } else {
      alert("Sorry! Not enough money!");
      amountSavings.value = "";
    }
    accountOneBalance.innerText = "$0";

  } else {
  accountOneBalance.innerText = "$" + new_amount;
  amount.value = "";
  }
  amount.value = "";
  changeColorChecking();
  changeColorSavings();
};

var changeColorChecking = function(){
  if (accountOneBalance.innerText === "$0"){
    accountOneBalance.style.background = "red";
  } else {
    accountOneBalance.style.background = "#E3E3E3";
  }
};

var changeColorSavings = function(){
  if (accountTwoBalance.innerText === "$0"){
    accountTwoBalance.style.background = "red";
  } else {
    accountTwoBalance.style.background = "#E3E3E3";
  }
};

if (accountOneBalance.innerText === "$0"){
    accountOneBalance.style.background = "red";
  }

if (accountTwoBalance.innerText === "$0"){
    accountTwoBalance.style.background = "red";
  }

depositCheckingButton.addEventListener("click", depositMoneyChecking);
withdrawCheckingButton.addEventListener("click", withdrawMoneyChecking);
depositSavingsButton.addEventListener("click", depositMoneySavings);
withdrawSavingsButton.addEventListener("click", withdrawMoneySavings);


