var displayDiv = document.querySelector("#checking_balance");

var inputBox = document.querySelector("#checking_amount");


inputBox.addEventListener('keyup', function() {

	displayDiv.innerText = inputBox.value;

});