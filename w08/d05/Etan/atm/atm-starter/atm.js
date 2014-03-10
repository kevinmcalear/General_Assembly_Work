// CSS for certain balances
var rain = document.querySelector(".makeitrain");

var checkingZero = document.querySelector("#checking_balance");
var savingsZero = document.querySelector("#savings_balance");

checkingZero.style.color = "#FFFFFF";
checkingZero.style.backgroundColor = "#F52F4F";

savingsZero.style.color = "#FFFFFF";
savingsZero.style.backgroundColor = "#F52F4F";
// General Checking functionality
var checkingTotal = [0];
var checkingInput = document.querySelector("#checking_amount");
var checkingBalance = document.querySelector("#checking_balance");
// Checking Deposit select
var clickCheckingDeposit = document.querySelector("#checking_deposit");
// Checking Withdraw select
var clickCheckingWithdraw = document.querySelector("#checking_withdraw");

// General Savings functionality
var savingsTotal = [0];
var savingsInput = document.querySelector("#savings_amount");
var savingsBalance = document.querySelector("#savings_balance");
// Savings' Deposit select
var clickSavingDeposit = document.querySelector("#savings_deposit");
// Savings' Withdraw select
var clickSavingWithdraw = document.querySelector("#savings_withdraw");

// Saving Deposit Function
var savingBalanceDeposit = function () {
	savingsTotal.push(savingsInput.value);
	var currentTotal = savingsTotal.reduce(function(a, b) { return parseInt(a) + parseInt(b) });
	if(currentTotal > 0) {
		savingsZero.style.color = "black";
		savingsZero.style.backgroundColor = "#E3E3E3";
	};
	savingsBalance.innerText = "$" + currentTotal
};
// Saving Withdraw Function
var savingBalanceWithdraw = function () {
	savingsTotal.push(-(savingsInput.value));
	var currentTotal = savingsTotal.reduce(function(a, b) { return parseInt(a) + parseInt(b) });
	if(currentTotal <= 0) {
		savingsZero.style.color = "#FFFFFF";
		savingsZero.style.backgroundColor = "#F52F4F";
	};
	savingsBalance.innerText = "$" + currentTotal
};
rain.classList.remove("makeitrain");

clickSavingDeposit.addEventListener("click", savingBalanceDeposit);
clickSavingWithdraw.addEventListener("click", savingBalanceWithdraw);

// Checking Deposit Function
var checkingBalanceDeposit = function () {
	checkingTotal.push(checkingInput.value);
	var currentTotal = checkingTotal.reduce(function(a, b) { return parseInt(a) + parseInt(b) });
	if(currentTotal > 0) {
		checkingZero.style.color = "black";
		checkingZero.style.backgroundColor = "#E3E3E3";
	};
	if(currentTotal > 1000) {
		rain.classList.add("makeitrain");
	};
	checkingBalance.innerText = "$" + currentTotal
};
// Checking Withdraw Function
var checkingBalanceWithdraw = function () {
	checkingTotal.push(-(checkingInput.value));
	var currentTotal = checkingTotal.reduce(function(a, b) { return parseInt(a) + parseInt(b) });
	if(currentTotal <= 0) {
		checkingZero.style.color = "#FFFFFF";
		checkingZero.style.backgroundColor = "#F52F4F";
	};
	if(currentTotal < 1000) {
		rain.classList.remove("makeitrain");
	};
	if(currentTotal < 0){
		savingsTotal.push(currentTotal);
		var currentSavingsTotal = savingsTotal.reduce(function(a, b) { return parseInt(a) + parseInt(b) });
		savingsBalance.innerText = "$" + currentSavingsTotal;
		checkingTotal.push(-(currentTotal));
		var currentTotal = checkingTotal.reduce(function(a, b) { return parseInt(a) + parseInt(b) });

		// checkingTotal.push(checkingInput.value);
		// var currentTotal = checkingTotal.reduce(function(a, b) { return parseInt(a) + parseInt(b) });
		checkingBalance.innerText = "$" + currentTotal

	} else {
		checkingBalance.innerText = "$" + currentTotal
	};
}

clickCheckingDeposit.addEventListener("click", checkingBalanceDeposit);
clickCheckingWithdraw.addEventListener("click", checkingBalanceWithdraw);

