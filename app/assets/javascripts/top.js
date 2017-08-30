$(function(){
	$('.input-image').on('click', '[type=file]', function(e) {
		var Value = e.currentTarget.attributes.class.value;
		console.log(e);
		var inputValue = parseInt(Value) + 1;
	$(".input-image").append(`<input type='file' name='topic[pictures_attributes][${inputValue}][image]' id='topic_pictures_attributes_${inputValue}_image' class='${inputValue}'> `);

	})
})
