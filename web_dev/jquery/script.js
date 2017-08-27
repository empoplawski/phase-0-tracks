$(document).ready(function(){
 
 $('p.practice').css('border', '8px solid purple');

 $('h1').hide(500).delay(1000).show(500);

 // alert($('p.second').attr('class'));

 $('h2').addclass('littler')

// alert($('h1').text());

$('p.first').html('a href="wikipedia.com">link</a>')
 
$('h1').click(function(){
	$(this).toggleClass('blue');
});


});