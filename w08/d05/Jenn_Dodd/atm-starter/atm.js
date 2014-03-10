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
  if (inputCheck.value.substring(0, 1) === "-") {
    alert("Can't do that StarFox!");
  } else {
    balanceCheck.innerHTML = "$" + (parseInt(balanceCheck.innerHTML.substring(1)) + parseInt(inputCheck.value));
  };
  inputCheck.value = "";
};

var enterCheckingWD = function() {
  var remainder = parseInt(balanceCheck.innerHTML.substring(1)) - parseInt(inputCheck.value);
  var balanceMinusRemainder = parseInt(balanceSavings.innerHTML.substring(1)) + parseInt(remainder);
  if (inputCheck.value.substring(0, 1) === "-") {
    alert("Can't do that StarFox!");
  } else if (parseInt(remainder) < 0 && balanceMinusRemainder < 0) {
    alert("Can't do that StarFox!");
  } else if (parseInt(remainder) < 0 && balanceMinusRemainder >= 0){
    balanceCheck.innerHTML = "$0";
    balanceSavings.innerHTML = "$" + balanceMinusRemainder;
  } else {
    balanceCheck.innerHTML = "$" + remainder;
  };
  inputCheck.value = "";
  toggleZero();
};

var enterSavingsDeposit = function() {
  if (inputSavings.value.substring(0, 1) === "-") {
    alert("Can't do that StarFox!");
  } else {
    balanceSavings.innerHTML = "$" + (parseInt(inputSavings.value) + parseInt(balanceSavings.innerHTML.substring(1)));
  };
  inputSavings.value = "";
};

var enterSavingsWD = function() {
  var remainder = parseInt(balanceSavings.innerHTML.substring(1)) - parseInt(inputSavings.value)
  var balanceMinusRemainder = parseInt(balanceSavings.innerHTML.substring(1)) + parseInt(remainder)
  if (inputSavings.value.substring(0, 1) === "-") {
    alert("Can't do that StarFox!");
  } else if (parseInt(remainder) < 0 && balanceMinusRemainder < 0) {
    alert("Can't do that StarFox!");
  } else if (parseInt(remainder) < 0 && balanceMinusRemainder >= 0){
    balanceSavings.innerHTML = "$0";
    balanceCheck.innerHTML = "$" + balanceMinusRemainder;
  } else {
    balanceSavings.innerHTML = "$" + remainder;
  };
  inputSavings.value = "";
  toggleZero();
};

var toggleZero = function() {
  if (balanceCheck.innerHTML === "$0") {
    balanceCheck.classList.add('zero');
  } else {
    balanceCheck.classList.remove('zero');
  };

  if (balanceSavings.innerHTML === "$0") {
    balanceSavings.classList.add('zero');
  } else {
    balanceSavings.classList.remove('zero');
  };
};

toggleZero();
depositButtonCheck.addEventListener("click", enterCheckingDeposit);
withdrawButtonCheck.addEventListener("click", enterCheckingWD);
depositButtonSavings.addEventListener("click", enterSavingsDeposit);
withdrawButtonSavings.addEventListener("click", enterSavingsWD);
