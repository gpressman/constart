// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .



// player.src= "artist_playtrack(artist_name)"
// player.play();

$(document).ready(function () {
	var player = document.querySelector('.js-player');
	var playButtons = $(".play-button");

	playButtons.click(function (event) {
		var playButton = $(event.target);

		if (player.src !== playButton.data('src')) {
			player.pause();
			playButtons.text('Play');
			player.src = playButton.data('src');
		}

		if (player.paused) {
			player.play();
			playButton.text("Pause");
		}
		else  {
			player.pause();
			playButton.text("Play");
		}
		
	});
});
	