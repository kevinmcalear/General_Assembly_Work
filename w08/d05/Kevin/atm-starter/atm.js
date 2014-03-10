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
 	} else if(((savings + checking) + parseInt(checkingInput.value)) >= 0) {
 		savings += parseInt(checkingInput.value); 
 		savingsBalance.innerText = "$" + savings;
 	};
 	
	checkingInput.value = '';
	zeroClass();
});

checkingWithdraw.addEventListener('click', function() {
	
	if((checking - parseInt(checkingInput.value)) >= 0){ 
		checking -= parseInt(checkingInput.value); 
 		checkingBalance.innerText = "$" + checking;
 	} else if(((savings + checking) - parseInt(checkingInput.value)) >= 0) {
 		savings = savings - (parseInt(checkingInput.value) - checking); 
 		checking = 0;
 		savingsBalance.innerText = "$" + savings;
 		checkingBalance.innerText = "$" + checking;
 	}; 

	checkingInput.value = '';
	zeroClass();
});



savingsDeposit.addEventListener('click', function() {	
	
	if((savings + parseInt(savingsInput.value)) >= 0){ 
		savings += parseInt(savingsInput.value); 
 		savingsBalance.innerText = "$" + savings;
 	} else if((savings + checking + parseInt(savingsInput.value)) >= 0) {
 		checking += parseInt(savingsInput.value); 
 		checkingBalance.innerText = "$" + checking;
 	}; 

 	savingsInput.value = '';
	zeroClass();
});

savingsWithdraw.addEventListener('click', function() {
	
	if((savings - parseInt(savingsInput.value)) >= 0){ 
		savings -= parseInt(savingsInput.value); 
 		savingsBalance.innerText = "$" + savings;
 	} else if((savings + checking - parseInt(savingsInput.value)) >= 0) {
 		checking = checking - (parseInt(savingsInput.value) - savings);
 		savings = 0; 
 		checkingBalance.innerText = "$" + checking;
 		savingsBalance.innerText = "$" + savings;
 	}; 

 	savingsInput.value = ''; 
	zeroClass();
});


// Adding the zero class for the zeros
var zeroClass = function() {
	if(checking === 0) {
		checkingBalance.classList.add('zero'); 
	} else {
		checkingBalance.classList.remove('zero'); 
	};

	if(savings === 0) {
		savingsBalance.classList.add('zero'); 
	} else {
		savingsBalance.classList.remove('zero'); 
	};
};

zeroClass();