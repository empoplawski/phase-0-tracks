

//define the variable
//break up the word into indiviual pieces
//using index reverse the position of the letters 
//rejoin letters in new order
//reprint the new word


function reverse(str) {
    var newString = "";
    for (var i = str.length - 1; i >= 0; i--) {
        newString += str[i];
    }
    return newString;
}
console.log(reverse('hello'));

//driver code

var newWord = (reverse("goodbye"));
console.log(newWord);
var anotherWord = (reverse("you smell"));
console.log(anotherWord);
console.log(1==1);
console.log(2==1);