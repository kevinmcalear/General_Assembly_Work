var checkingInput = document.querySelector("#checking_amount");
var checkingDepositButton = document.querySelector("#checking_deposit");
var checkingWithdrawButton = document.querySelector("#checking_withdraw");
var checkingBalance = document.querySelector("#checking_balance");

var savingsInput = document.querySelector("#savings_amount");
var savingsDepositButton = document.querySelector("#savings_deposit");
var savingsWithdrawButton = document.querySelector("#savings_withdraw");
var savingsBalance = document.querySelector("#savings_balance");

var checkingBackground = function() {
  if (parseInt(checkingBalance.innerHTML.substring(1)) === 0) {
    checkingBalance.classList.add("zero");
  } else if (parseInt(checkingBalance.innerHTML.substring(1)) > 0) {
    checkingBalance.classList.remove("zero");
  }
};

var savingsBackground = function() {
  if (parseInt(savingsBalance.innerHTML.substring(1)) === 0) {
    savingsBalance.classList.add("zero");
  } else if (parseInt(savingsBalance.innerHTML.substring(1)) > 0) {
    savingsBalance.classList.remove("zero");
  }
};

var makeCheckingDeposit = function() {
  if (parseInt(checkingInput.value) > 0) {
    checkingBalance.innerHTML = "$" + (parseInt(checkingBalance.innerHTML.substring(1)) + parseInt(checkingInput.value));
  };
};

var makeCheckingWithdrawl = function() {
  var positiveNumberCheck = parseInt(checkingInput.value) > 0;

  if ((parseInt(checkingBalance.innerHTML.substring(1)) >= parseInt(checkingInput.value)) && positiveNumberCheck === true) {
    checkingBalance.innerHTML = "$" + (parseInt(checkingBalance.innerHTML.substring(1)) - parseInt(checkingInput.value));
  } else if ((parseInt(checkingBalance.innerHTML.substring(1)) + parseInt(savingsBalance.innerHTML.substring(1))) >= parseInt(checkingInput.value) && positiveNumberCheck === true) {
    var overdraftAmount = (parseInt(checkingInput.value) - parseInt(checkingBalance.innerHTML.substring(1)));
    savingsBalance.innerHTML = "$" + (parseInt(savingsBalance.innerHTML.substring(1)) - overdraftAmount);
    checkingBalance.innerHTML = "$0";
    checkingBackground(checkingBalance);
    savingsBackground(savingsBalance);
  };
};

var makeSavingsDeposit = function() {
  if (parseInt(savingsInput.value) > 0) {
    savingsBalance.innerHTML = "$" + (parseInt(savingsBalance.innerHTML.substring(1)) + parseInt(savingsInput.value));
  };
};

var makeSavingsWithdrawl = function() {
  var positiveNumberCheck = parseInt(savingsInput.value) > 0;

  if (parseInt(savingsBalance.innerHTML.substring(1)) >= parseInt(savingsInput.value) && positiveNumberCheck === true) {
    savingsBalance.innerHTML = "$" + (parseInt(savingsBalance.innerHTML.substring(1)) - parseInt(savingsInput.value));
  } else if ((parseInt(savingsBalance.innerHTML.substring(1)) + parseInt(checkingBalance.innerHTML.substring(1))) >= parseInt(savingsInput.value) && positiveNumberCheck === true) {
    var overdraftAmount = (parseInt(savingsInput.value) - parseInt(savingsBalance.innerHTML.substring(1)));
    checkingBalance.innerHTML = "$" + (parseInt(checkingBalance.innerHTML.substring(1)) - overdraftAmount);
    savingsBalance.innerHTML = "$0";
    checkingBackground(checkingBalance);
    savingsBackground(savingsBalance);
  };
};

window.onload = checkingBackground();
window.onload = savingsBackground();

checkingDepositButton.addEventListener("click", makeCheckingDeposit);
checkingWithdrawButton.addEventListener("click", makeCheckingWithdrawl);
savingsDepositButton.addEventListener("click", makeSavingsDeposit);
savingsWithdrawButton.addEventListener("click", makeSavingsWithdrawl);

checkingDepositButton.addEventListener("click", checkingBackground);
checkingWithdrawButton.addEventListener("click", checkingBackground);
savingsDepositButton.addEventListener("click", savingsBackground);
savingsWithdrawButton.addEventListener("click", savingsBackground);