//Checking Account Queries
var checkingBalance = document.querySelector("div.balance");
var depositOrWithdrawInput = document.querySelector("input#checking_amount");
var depositButton = document.querySelector("input#checking_deposit");
var checkingWithdrawButton = document.querySelector("input#checking_withdraw");

//Savings Account Queries
var savingsDepositOrWithdraw = document.querySelector("input#savings_amount");
var savingsDepositButton = document.querySelector("input#savings_deposit");
var savingsWithdrawButton = document.querySelector("input#savings_withdraw");
var savingsBalance = document.querySelector("div#savings_balance");


//Checking Account Deposits
depositButton.addEventListener("click", function(){
	var checkingBalanceValue = parseInt(checkingBalance.innerText.replace("$", ""));
	var depositAmount = parseInt(depositOrWithdrawInput.value);
	checkingBalance.innerText = "$" + (checkingBalanceValue + depositAmount);
	checkingBalance.value = (checkingBalanceValue + depositAmount);
	checkingBalanceValue = (checkingBalanceValue + depositAmount);
});

//Checking Account Withdraws
checkingWithdrawButton.addEventListener("click", function(){
	var checkingBalanceValue = parseInt(checkingBalance.innerText.replace("$", ""));
	var withdrawAmount = parseInt(depositOrWithdrawInput.value);
	checkingBalance.innerText = "$" + (checkingBalanceValue - withdrawAmount);
	checkingBalance.value = (checkingBalanceValue - withdrawAmount);
	checkingBalanceValue = (checkingBalanceValue - withdrawAmount);
});

//Savings Account Deposits
savingsDepositButton.addEventListener("click", function(){
	var savingsBalanceValue = parseInt(savingsBalance.innerText.replace("$",""));
	var savingsDepositAmount = parseInt(savingsDepositOrWithdraw.value);
	savingsBalance.innerText = "$" + (savingsBalanceValue + savingsDepositAmount);
	savingsBalance.value = (savingsBalanceValue + savingsDepositAmount);
	savingsBalanceValue = (savingsBalanceValue + savingsDepositAmount);
});

//Savings Account Withdraws
savingsWithdrawButton.addEventListener("click", function(){
	var savingsBalanceValue = parseInt(savingsBalance.innerText.replace("$",""));
	var savingsWithdrawAmount = parseInt(savingsDepositOrWithdraw.value);
	savingsBalance.innerText = "$" + (savingsBalanceValue - savingsWithdrawAmount);
	savingsBalance.value = (savingsBalanceValue - savingsWithdrawAmount);
	savingsBalanceValue = (savingsBalanceValue - savingsWithdrawAmount);
});


