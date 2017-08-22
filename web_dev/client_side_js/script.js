console.log("I work");

function turnRed(event){
	console.log("event happened");
	event.target.style.color = "red";
}

var words = document.getElementById("words");
words.addEventListener("click", turnRed);

function addText(event){
	console.log("text happened, yes!");
	header = document.getElementById("words")
	var text = document.createTextNode(" - heres some text");
	header.appendChild(text);
}

words.addEventListener("contextmenu", addText);



