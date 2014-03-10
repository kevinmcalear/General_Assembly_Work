var checkingBalance = document.querySelector("div.balance");
var depositOrWithdrawInput = document.querySelector("input#checking_amount");
var depositButton = document.querySelector("input#checking_deposit");
var checkingWithdrawButton = document.querySelector("input#checking_withdraw");


depositButton.addEventListener("click", function(){
	var checkingBalanceValue = parseInt(checkingBalance.innerText.replace("$", ""));
	var depositAmount = parseInt(depositOrWithdrawInput.value);
	checkingBalance.innerText = "$" + (checkingBalanceValue + depositAmount);
	checkingBalance.value = (checkingBalanceValue + depositAmount);
	checkingBalanceValue = (checkingBalanceValue + depositAmount);
});




// checkingWithdrawButton.addEventListener("click", function(){
// 	depositOrWithdrawInput = parseInt(depositOrWithdrawInput.value);
// 	checkingBalance.innerText = checkingBalance - depositOrWithdrawInput;
// 	checkingBalance = checkingBalance - depositOrWithdrawInput;
// })

