var romanize = function(number) {
  var answer = []
  var number = number
  while(number >= 1000){
    number-=1000;  
    answer.push("M");
    console.log(number)
  };
  while(number >= 500){
    number-=500;  
    answer.push("D");
    console.log(number)
  };

  while(number >= 100){
    number-=100;  
    answer.push("C");
    console.log(number)
  };

  while(number >= 50){
    number-=50;  
    answer.push("L");
    console.log(number)
  };
  while(number >= 40){
    number-=40;  
    answer.push("XL");
    console.log(number)
  };
  while(number >= 10){
    number-=10;  
    answer.push("X");
    console.log(number)
  };
  while(number >= 5){
    number-=5;  
    answer.push("V");
    console.log(number)
  }; 
  while(number >= 4){
    number-=4;  
    answer.push("IV");
    console.log(number)
  };
  while(number >= 1){
    number-=1;  
    answer.push("IV");
    console.log(number)
  };
    
    // if(number>=9)
    //   answer.push("IX")
    //   number=number-9;
    // if(number>=6)
    //   answer.push("VI")
    //   number=number-6;
    // if(number>=5)
    //   answer.push("V")
    //   number=number-5;
    // if(number>=4)
    //   answer.push("IV")
    //   number=number-4;
    // if(number>=3)
    //   answer.push("III")
    //   number=number-3;
    // if(number>=2)
    //   answer.push("II")
    //   number=number-2;
    // if(number>=1)
    //   answer.push("I")
    //   number=number-1;
  
  return answer.join("")

}; 



// // Step 1:  Determine highest Roman Numeral
// var determineLargestNumeral = function(number) {
//   this.number = number
//   this.m = " "
//   if(this.number>1000){
//     this.m = this.number/ 1000 ; 
//     this.number = this.number- (this.m* 1000)
//   }
//   return this.m+"M"



// }; 

// // Step 2: Determine Additive or Subtractive
// var determineAddOrSub = function() {

// };

// #Determine the highest Roman Numeral
// (M)1000
// (D) 500
// (C) 100
// (L)  50
// (X)  10
// (V)   5
// (I)   1

// #Loop again to determine additive versus subtractive
// ## 60% causes it to be additive. 
// ## Loop through and add each. 
// ## Add



