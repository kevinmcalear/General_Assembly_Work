var verses = {
  12: "12 Drummers Drumming",
  11: "11 Pipers Piping",
  10: "10 Lords-a-Leaping",
  9: "9 Ladies Dancing",
  8: "8 Maids-a-Milking",
  7: "7 Swans-a-Swimming",
  6: "6 Geese-a-Laying",
  5: "5 Golden Rings",
  4: "4 Calling Birds",
  3: "3 French Hens",
  2: "2 Turtle Doves",
  1: "And a Partridge in a Pear Tree."
}

// function christmasShyt(day){ 
//   if (verses[day] === "12 Drummers Drumming"){
//     return undefined;
//   }
//   else {
    
//     console.log( "On the "+ (day) +" day of Christmas my true love gave to me:");
//     for(i = 0; i < day; i++) {
//      console.log(verses[i]);
//     }
//   }
// }



var sing = function(n) {
  if(n === 1){
    return verses[1]
  } 
  else {
    return "  * " + verses[n] + "\n" + sing(n - 1);
  }
}


for(var i = 1; i <= 12; i++){
  if(i === 1){
    console.log("\nOn the 1st day of Christmas my true love gave to me: \n \n"+sing(i).slice(4))
  } else if(i === 2){
    console.log("\nOn the 2nd day of Christmas my true love gave to me: \n \n"+sing(i))
  } else if(i === 3){
    console.log("\nOn the 3rd day of Christmas my true love gave to me: \n \n"+sing(i))
  } else {
  console.log("\nOn the "+i+"th day of Christmas my true love gave to me: \n \n"+sing(i));
  }
};