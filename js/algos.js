
// Release 0
//define string
//write method to find longest word in string by looking at the number of letters in each word
// and comparing it to the next word using length and indexies
//then assign the longest word to a variable and 
//return longest word in the string


function findLongestWord(string) {
  var str = string.split(" ");
  var longest = 0;
  var word = null;
  str.forEach(function(str) {
      if (longest < str.length) {
          longest = str.length;
          word = str;
        }
    });
    return word;
}

//findLongestWord("what is the longest word in this string");
findLongestWord("apple orange tomato grapefruit");

// Release 1
// relate two hashes so that they compare to one another
// write method to iterate through them searching for matches
// add condition to return either true or false depending on if a match was found or not


//var dataOne = {name: "Billy Bob", age : 22, hobby: "knitting"}
//var dataTwo = {name: "smilly smob", age : 22, hobby: "knititng"}

function checkMatches(object1, object2){
	for (var key in object1) {
	for (var otherKey in object2) {
		if (key === otherKey) {
		if (object1[key] === object2[otherKey]){
			return true;
				}
			}
		}
	}
	return false;
}

//driver code

//var dataOne = {name: "Billy Bob", age : 22, hobby: "knitting"}
//var dataTwo = {name: "smilly smob", age : 22, hobby: "knititng"}

var dataOne = {name: "Billy Bob", age : 23, hobby: "swimming"}
var dataTwo = {name: "smilly smob", age : 22, hobby: "knititng"}

console.log(checkMatches(dataOne, dataTwo));

//Release 2
// build function that picks a random number to determine the length of the array of the string
// function then prints array with that many random words
// add driver code to do 10 times and relate to longest string function 
// print result

function makeRandomStrings(string) {
	var randomWord = [];
	for(var w=0; w<string; w++) {
		var alphabet = "abcdefghijklmnopqrstuvwxyz";
		var new_string = "";

	for (var i =0; i < Math.ceil(Math.random()*15); i++) {
		new_string += (alphabet[Math.round(Math.random() *10)]);
		}
	randomWord.push(new_string).join;
	}
	return randomWord;
}

//driver code

for (var i =0; i<15; i++) {
var nonsense = 
makeRandomStrings(Math.ceil(Math.random()*10));
console.log(nonsense);
console.log(findLongestWord(nonsense));
}