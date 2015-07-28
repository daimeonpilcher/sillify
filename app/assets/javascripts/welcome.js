// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/
$( window ).load(function() {
  $('input.checkbox').change(function(){
  	if($(this).is(':checked')){
  		$id = $(this).attr('id')
		// var re = new RegExp('\\b('+$id+')\\b', "ig");
		// $('#article').children().each(function() {
		// 	$('#article').filter(':contains('+$id+')').each(function () {
	 //    		$(this).html($(this).text().replace(re, '<span class="highlight">'+$id+'</span>'));
	 //    		console.log(re, $id)
		// 	});
		// })
		// $("#article:contains($id)").html(function(_, html) {
		//    return html.split($id).join("<span class='highlight'>$1</span>");
		// });
		
		// $('#article').children().each(function() {
		// 	$(this).html($(this).html().replace(re, "<span class='highlight'>"+$id+" </span>"))
		// 	console.log("Something happend", re, $id)
		// })
  		
  		// added jquery.highlight-5.js to vendor assets
  		$('#article').highlight($id+' ')
  	}
  	if(!$(this).is(':checked')){
  		$id = $(this).attr('id')
  		Array.prototype.forEach.call(document.querySelectorAll(".highlight."+$id), function(el){
  		   el.outerHTML = el.textContent;
  		})
  	}
  })
	$('select.select_words').change(function(){
		$('.highlight.' + $(this).attr('data-id')).attr('data-value', $(this).val())
	})
});