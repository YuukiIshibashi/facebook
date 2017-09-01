$(function(){
	$('.input-image').on('click', '[type=file]', function(e) {

		var form = $('[type=file]')
		console.log(form.length-1);
		var Value = parseInt(e.currentTarget.attributes.class.value);
		console.log(Value);
		if( Value == form.length-1 ){
			var inputValue = Value + 1;
			$(".input-image").append("<input type='file' name='topic[pictures_attributes][" + inputValue + "][image]' id='topic_pictures_attributes_" + inputValue + "_image' class='" + inputValue + "'>");

		}else{
			e.preventDefault;
		};
	});


});
