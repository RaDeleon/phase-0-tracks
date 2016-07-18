function longestPhrase(array) {
  var arr = array;
  var longestPhrase = arr[0];
  for (i = 0; i < arr.length; i++) {
    var currentPhrase = arr[i]
    if (currentPhrase.length > longestPhrase.length) {
      longestPhrase = currentPhrase
    };
  };
  return longestPhrase
}
/*
Step 1: Iterate through each property in one of the objects
Step 2: Check to see if the property exists in the other object
Step 3: Check to see if both properties hold the same value. if this and
      the step 2 condition are true, return true
Step 4: At the termination of the loop, return false if no matches were found
*/
function shareKeyValuePairs(obj1, obj2) {
  for (var i in obj1) {
    if ( obj2.hasOwnProperty(i) && obj1[i] == obj2[i]) {
      return true;
    }
  };
  return false;
}
/*
Generate random test data
*/
function getRandomInt(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}
//
//
//
//
//
function generateRandomTestData(int) {
  words = []
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  for (i = 0; i < int; i++) {
    currentWord = "";
    length = getRandomInt(1, 10);
    for (j = 0; j < length; j++) {
      currentLetter = alphabet[getRandomInt(0, 25)]
      currentWord = currentWord += currentLetter
    };
    words.push(currentWord)
  };
  return words;
}

// Driver code for longestPhrase
array = ["short", "longer", "longest", "return_value", "shorty", "meh", "return"];
console.log(longestPhrase(array));
array2 = ["1", "333", "22", "55555", "4444", "1", "333", "22"];
console.log(longestPhrase(array2))

//Driver code fore shareKeyValuePairs
a = new Object();
b = new Object();
c = new Object();
d = new Object();
a.foo = "bar";
b.foo = "bar";
c.foo = "baz";
d.prop = true;
console.log(shareKeyValuePairs(a, b));
console.log(shareKeyValuePairs(a, c));
console.log(shareKeyValuePairs(a, d));

//Driver code for generateRandomTestData
for (e = 0; e < 10; e++) {
  arr = generateRandomTestData(5);
  console.log(arr);
  console.log(longestPhrase(arr));
}