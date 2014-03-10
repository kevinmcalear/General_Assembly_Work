// I need to save two variables; one for the checking account amount and one for the savings account and find where they are displayed for later
var savings = 0;
var checking = 0;

var checkingBalance = document.querySelector("#checking_balance");
var savingsBalance = document.querySelector("#savings_balance");

// I then find the savings and checking input boxes in the DOM
var checkingInput = document.querySelector("#checking_amount");
var savingsInput = document.querySelector("#savings_amount");

// And their corrisponding "Deposit" and "Withdra" boxes.
var checkingDeposit = document.querySelector("#checking_deposit");
var checkingWithdraw = document.querySelector("#checking_withdraw");

var savingsDeposit = document.querySelector("#savings_deposit");
var savingsWithdraw = document.querySelector("#savings_withdraw");

// I have to set up event listeners on the buttons to actually add and take away money
checkingDeposit.addEventListener('click', function() {	
	
	if((checking + parseInt(checkingInput.value)) >= 0){ 
		checking += parseInt(checkingInput.value); 
 		checkingBalance.innerText = "$" + checking;
 	};
	checkingInput.value = '';
});

checkingWithdraw.addEventListener('click', function() {
	if((checking - parseInt(checkingInput.value)) >= 0){ 
		checking -= parseInt(checkingInput.value); 
 		checkingBalance.innerText = "$" + checking;
 	};
	checkingInput.value = '';
});

savingsDeposit.addEventListener('click', function() {	
	
	if((savings + parseInt(savingsInput.value)) >= 0){ 
		savings += parseInt(savingsInput.value); 
 		savingsBalance.innerText = "$" + savings;
 	};
	savingsInput.value = '';
});

savingsWithdraw.addEventListener('click', function() {
	if((savings - parseInt(savingsInput.value)) >= 0){ 
		savings -= parseInt(savingsInput.value); 
 		savingsBalance.innerText = "$" + savings;
 	};
	savingsInput.value = '';
});
