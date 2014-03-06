// key uses a vignere cipher to encode a message using 
//  a keyword
function key(message, keyword) {
  return message.split("").map(function(value, index) {
      return keyword.split("")[index % keyword.length];
  }).join("");
}