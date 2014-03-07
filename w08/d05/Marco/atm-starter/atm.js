var input = document.querySelector("#checking_amount");
var depositButton = document.querySelector("#checking_deposit");
var withdrawButton = document.querySelector("#checking_withdraw");
var balance = document.querySelector("#checking_balance");
console.log(balance);

var enterDeposit = function() {

  balance.innerHTML = input.value;
};

depositButton.addEventListener("click", enterDeposit);
console.log(balance);

