var checkingAmount = document.getElementById("checking_amount");
var checkingBalance = document.getElementById("checking_balance");
var checkingDepositButton = document.getElementById("checking_deposit");
var checkingWithdrawButton = document.getElementById('checking_withdraw');

var savingsAmount = document.getElementById("savings_amount");
var savingsBalance = document.getElementById("savings_balance");
var savingsDepositButton = document.getElementById("savings_deposit");
var savingsWithdrawlButton = document.getElementById("savings_withdraw");

var checkingDeposit = function(){
   var currentCheckingBalance = parseInt(checkingBalance.innerText.replace("$",""));
   var newCheckingAmount = currentCheckingBalance + parseInt(checkingAmount.value.replace("$",""));
   checkingBalance.innerText = "$" + newCheckingAmount;
   checkingAmount.value = "";
};

var checkingWithdrawl = function(){
  var currentCheckingBalance = parseInt(checkingBalance.innerText.replace("$",""));
  var newCheckingAmount = currentCheckingBalance - parseInt(checkingAmount.value.replace("$",""));
  if(newCheckingAmount < 0){
    checkingBalance.innerText = "$" + 0;
    var checkingRemainder = Math.abs(newCheckingAmount);
    
    // console.log(checkingRemainder);
  } else { checkingBalance.innerText = "$" + newCheckingAmount;}
  checkingAmount.value = "";
};

var savingsDeposit = function(){
  var currentSavingsBalance = parseInt(savingsBalance.innerText.replace("$",""));
  var newSavingsAmount = currentSavingsBalance + parseInt(savingsAmount.value.replace("$",""));
  savingsBalance.innerText = "$" + newSavingsAmount;
  savingsAmount.value = "";

};

var savingsWithdrawl = function(){
  var currentSavingsBalance = parseInt(savingsBalance.innerText.replace("$",""));
  var newSavingsAmount = currentSavingsBalance - parseInt(savingsAmount.value.replace("$",""));
  if(newSavingsAmount < 0){
    savingsBalance.innerText = "$" + 0;
    var savingsRemainder = Math.abs(newSavingsAmount);
    // console.log(savingsRemainder);
  } else { savingsBalance.innerText = "$" + newSavingsAmount;}
  savingsAmount.value = "";
};

checkingDepositButton.addEventListener("click", checkingDeposit);
checkingWithdrawButton.addEventListener("click", checkingWithdrawl);
savingsDepositButton.addEventListener("click", savingsDeposit);
savingsWithdrawlButton.addEventListener("click", savingsWithdrawl);