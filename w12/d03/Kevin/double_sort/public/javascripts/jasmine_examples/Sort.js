var placeMap = {};
var neatlySortedArray = [];

var knowYourPlace = function(array) {
  for(i = 0; i < array.length; i++) {
      placeMap[i] = array[i];
  };
};

function sortAndPlace(array) {
  knowYourPlace(array);
  sortedArray = array.sort()
  
  while(sortedArray.length != 0){
    for(i = 0; i < sortedArray.length; i++) {
      if(typeof(sortedArray[i]) === typeof(placeMap[i]))
        neatlySortedArray.push(sortedArray[i]);
        sortedArray.splice(i, 1);
    };
  };
};