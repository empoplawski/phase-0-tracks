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


