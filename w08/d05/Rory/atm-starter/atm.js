var checkingBalance = document.querySelector("#checking_balance");
var checkingAmount = document.querySelector("#checking_amount");

Array.prototype.remove = function(from, to) {
  var rest = this.slice((to || from) + 1 || this.length);
  this.length = from < 0 ? this.length + from : from;
  return this.push.apply(this, rest);
};


var depositToChecking = function(){
  var split = checkingBalance.innerText.split("");
  split.remove(0);

  checkingBalance.innerText = "$" + (parseInt(checkingAmount.value)+ parseInt(split.join("")))
};

var checking_deposit_button = document.querySelector("#checking_deposit")

window.onload = function(){
checking_deposit_button.addEventListener("click", function(eventObject) {
  checking_deposit_button.onclick = depositToChecking();
});
};