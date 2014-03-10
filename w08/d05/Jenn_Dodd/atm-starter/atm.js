// CHECKING
var inputCheck = document.querySelector("#checking_amount");
var depositButtonCheck = document.querySelector("#checking_deposit");
var withdrawButtonCheck = document.querySelector("#checking_withdraw");
var balanceCheck = document.querySelector("#checking_balance");

// SAVINGS

var inputSavings = document.querySelector("#savings_amount");
var depositButtonSavings = document.querySelector("#savings_deposit");
var withdrawButtonSavings = document.querySelector("#savings_withdraw");
var balanceSavings = document.querySelector("#savings_balance");

var enterCheckingDeposit = function() {

  balanceCheck.innerHTML = "$" + (parseInt(balanceCheck.innerHTML.substring(1)) + parseInt(inputCheck.value));
  inputCheck.value = "";
};

var enterCheckingWD = function() {
  var remainder = parseInt(balanceCheck.innerHTML.substring(1)) - parseInt(inputCheck.value)
  if (parseInt(remainder) < 0 && parseInt(balanceSavings.innerHTML.substring(1)) + parseInt(remainder) < 0) {
    alert("Can't do that StarFox!");
  } else if (parseInt(remainder) < 0 && parseInt(balanceSavings.innerHTML.substring(1)) + parseInt(remainder) >= 0){
    balanceCheck.innerHTML = "$0";
    balanceSavings.innerHTML = "$" + (parseInt(balanceSavings.innerHTML.substring(1)) + parseInt(remainder));
  } else {
    balanceCheck.innerHTML = "$" + (parseInt(balanceCheck.innerHTML.substring(1)) - parseInt(inputCheck.value) );
  };
  inputCheck.value = "";
};

var enterSavingsDeposit = function() {

  balanceSavings.innerHTML = "$" + (parseInt(inputSavings.value) + parseInt(balanceSavings.innerHTML.substring(1)));
  inputSavings.value = "";
};

var enterSavingsWD = function() {
  var remainder = parseInt(balanceSavings.innerHTML.substring(1)) - parseInt(inputSavings.value)
  if (parseInt(remainder) < 0 && parseInt(balanceSavings.innerHTML.substring(1)) + parseInt(remainder) < 0) {
    alert("Can't do that StarFox!");
  } else if (parseInt(remainder) < 0 && parseInt(balanceCheck.innerHTML.substring(1)) + parseInt(remainder) >= 0){
    balanceSavings.innerHTML = "$0";
    balanceCheck.innerHTML = "$" + (parseInt(balanceCheck.innerHTML.substring(1)) + parseInt(remainder));
  } else {
    balanceSavings.innerHTML = "$" + (parseInt(balanceSavings.innerHTML.substring(1)) - parseInt(inputSavings.value) );
  };
  inputSavings.value = "";
};
depositButtonCheck.addEventListener("click", enterCheckingDeposit);
withdrawButtonCheck.addEventListener("click", enterCheckingWD);
depositButtonSavings.addEventListener("click", enterSavingsDeposit);
withdrawButtonSavings.addEventListener("click", enterSavingsWD);
