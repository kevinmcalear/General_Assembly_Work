var checkingInput = document.querySelector("#checking_amount");
var checkingDepositButton = document.querySelector("#checking_deposit");
var checkingWithdrawButton = document.querySelector("#checking_withdraw");
var checkingBalance = document.querySelector("#checking_balance");

var savingsInput = document.querySelector("#savings_amount");
var savingsDepositButton = document.querySelector("#savings_deposit");
var savingsWithdrawButton = document.querySelector("#savings_withdraw");
var savingsBalance = document.querySelector("#savings_balance");

var makeCheckingDeposit = function() {
  if (parseInt(checkingInput.value) > 0) {
    checkingBalance.innerHTML = "$" + (parseInt(checkingBalance.innerHTML.substring(1)) + parseInt(checkingInput.value));
  };
};

var makeCheckingWithdrawl = function() {
  if (parseInt(checkingBalance.innerHTML.substring(1)) >= parseInt(checkingInput.value)) {
    checkingBalance.innerHTML = "$" + (parseInt(checkingBalance.innerHTML.substring(1)) - parseInt(checkingInput.value));
  } else if ((parseInt(checkingBalance.innerHTML.substring(1)) + parseInt(savingsBalance.innerHTML.substring(1))) >= parseInt(checkingInput.value)) {
    var overdraftAmount = (parseInt(checkingInput.value) - parseInt(checkingBalance.innerHTML.substring(1)));
    savingsBalance.innerHTML = "$" + (parseInt(savingsBalance.innerHTML.substring(1)) - overdraftAmount);
    checkingBalance.innerHTML = "$0";
  };
};

var makeSavingsDeposit = function() {
  if (parseInt(savingsInput.value) > 0) {
    savingsBalance.innerHTML = "$" + (parseInt(savingsBalance.innerHTML.substring(1)) + parseInt(savingsInput.value));
  };
};

var makeSavingsWithdrawl = function() {
  if (parseInt(savingsBalance.innerHTML.substring(1)) >= parseInt(savingsInput.value)) {
    savingsBalance.innerHTML = "$" + (parseInt(savingsBalance.innerHTML.substring(1)) - parseInt(savingsInput.value));
  } else if ((parseInt(savingsBalance.innerHTML.substring(1)) + parseInt(checkingBalance.innerHTML.substring(1))) >= parseInt(savingsInput.value)) {
    var overdraftAmount = (parseInt(savingsInput.value) - parseInt(savingsBalance.innerHTML.substring(1)));
    checkingBalance.innerHTML = "$" + (parseInt(checkingBalance.innerHTML.substring(1)) - overdraftAmount);
    savingsBalance.innerHTML = "$0";
  };
};

checkingDepositButton.addEventListener("click", makeCheckingDeposit);
checkingWithdrawButton.addEventListener("click", makeCheckingWithdrawl);
savingsDepositButton.addEventListener("click", makeSavingsDeposit);
savingsWithdrawButton.addEventListener("click", makeSavingsWithdrawl);
