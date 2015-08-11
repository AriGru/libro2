
function ready() {
  console.log('hello');
  $('.hamburger-shell').click(function(){
		$('#menu').slideToggle(300);
		$('.top').toggleClass('rotate');
		$('.middle').toggleClass('rotate-back');
		$('.menu-name').toggleClass('bump');
		// $('.bg-cover').toggleClass('reveal');
	});
	$('.bg-cover').click(function(){
		$('#menu').slideToggle(300);
		$('.top').toggleClass('rotate');
		$('.middle').toggleClass('rotate-back');
		$('.menu-name').toggleClass('bump');
		// $('.bg-cover').toggleClass('reveal');
	});
};
$(document).ready(ready);
$(document).on('page:load', ready);


// $(document).ready(function(){
// 	$('.hamburger-shell').click(function(){
// 		$('#menu').slideToggle(300);
// 		$('.top').toggleClass('rotate');
// 		$('.middle').toggleClass('rotate-back');
// 		$('.menu-name').toggleClass('bump');
// 		// $('.bg-cover').toggleClass('reveal');
// 	});
// 	$('.bg-cover').click(function(){
// 		$('#menu').slideToggle(300);
// 		$('.top').toggleClass('rotate');
// 		$('.middle').toggleClass('rotate-back');
// 		$('.menu-name').toggleClass('bump');
// 		// $('.bg-cover').toggleClass('reveal');
// 	})
// });
