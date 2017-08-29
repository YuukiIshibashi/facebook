// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require jquery/dist/jquery.min
//= require bootstrap/dist/js/bootstrap.min
//= require_tree .

$(function(){
	$('.input-image').on('click', '[type=file]', function(e) {
		var Value = e.currentTarget.attributes.class.value;
		console.log(e);
		var inputValue = parseInt(Value) + 1;
	$(".input-image").append(`<input type='file' name='topic[pictures_attributes][${inputValue}][image]' id='topic_pictures_attributes_${inputValue}_image' class='${inputValue}'> `);


	})

})
