//Checking Account Queries
var checkingBalance = document.querySelector("div.balance");
var depositOrWithdrawInput = document.querySelector("input#checking_amount");
var depositButton = document.querySelector("input#checking_deposit");
var checkingWithdrawButton = document.querySelector("input#checking_withdraw");
var checkBal = parseInt(checkingBalance.innerText.replace("$", ""));
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
	var savingsBalanceValue = parseInt(savingsBalance.innerText.replace("$",""));
	if(withdrawAmount < checkingBalanceValue){
		checkingBalance.innerText = "$" + (checkingBalanceValue - withdrawAmount);
		checkingBalance.value = (checkingBalanceValue - withdrawAmount);
		checkingBalanceValue = (checkingBalanceValue - withdrawAmount);
	}
	else if(withdrawAmount < (checkingBalanceValue + savingsBalanceValue)){
		alert("There aren't sufficient funds in your checking account for that transaction, but we can withdraw it from your savings!");
		checkingBalance.innerText = "$" + 0;
		var amountToSubtractFromSavings = (withdrawAmount - checkingBalanceValue);
		savingsBalance.value = (savingsBalanceValue - amountToSubtractFromSavings);
		savingsBalance.innerText = "$" + (savingsBalanceValue - amountToSubtractFromSavings);
		savingsBalanceValue = (savingsBalanceValue - amountToSubtractFromSavings);
	}
	else{
		alert("There aren't sufficient funds in your account for that transaction!");
	}
	
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
	if(savingsWithdrawAmount < savingsBalanceValue){
	savingsBalance.innerText = "$" + (savingsBalanceValue - savingsWithdrawAmount);
	savingsBalance.value = (savingsBalanceValue - savingsWithdrawAmount);
	savingsBalanceValue = (savingsBalanceValue - savingsWithdrawAmount);
	}
	else{
		alert("There aren't sufficient funds in your account for that transaction!");
		savingsBalanceValue;
	}
});


