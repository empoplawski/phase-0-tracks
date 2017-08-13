
// Release 1
//define array
//write method to find longest string in array
//return longest string in the array

//var arr = ['this is the first string', 'this is another string, isnt this just so, so great', 'and yay here is another one, how exciting'];
//var arr = ["Wisconsin", "Illinois", "Iowa", "California", "Florida" ];
var arr = ["Macho macho man", "I want to be a macho man", "Macho Macho man", "lets be honest thats all anyone knows of this song" ];

var lgth = 0;
var longestString

for(var i =0; i < arr.length; i++){
	if(arr[i].length > lgth){
	var lgth = arr[i].length;
	longestString = arr[i];
}
}

console.log(longestString);

// Release 2
// relate two hashes so that they compare to one another
// write method to iterate through them searching for matches
// add condition to return either true or false depending on if a match was found or not


var dataOne = {name: "Billy Bob", age : 22, hobby: "knitting"}
var dataTwo = {name: "smilly smob", age : 22, hobby: "knititng"}

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





