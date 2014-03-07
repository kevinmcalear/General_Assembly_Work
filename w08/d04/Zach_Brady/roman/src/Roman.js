var romanize = function(num){
  var romanNum = "";
  while (num > 0) {
    romanNum += "I";
    num-- ;
    if (romanNum.search("IIII") >= 0) {
      romanNum = romanNum.replace("IIII", "IV");
    } else if (romanNum.search("IVI") >= 0) {
      romanNum = romanNum.replace("IVI", "V");
    } else if (romanNum.search("VIV") >= 0) {
      romanNum = romanNum.replace("VIV", "IX");
    } 
  }
  return romanNum;
}
