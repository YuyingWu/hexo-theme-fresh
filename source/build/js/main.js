'use strict';

var Zoom = require('zoom');

$(document).on('click', 'img', function () {
	var self = $(this);

	var OFFSET = 40;

	var WINDOW = $(window);
	var WIN_WIDTH = WINDOW.width();
	var WIN_HEIGHT = WINDOW.height();

	/*const imgElement = new Image();
 imgElement.src = self.attr('src');*/
	var NATURAL_WIDTH = this.naturalWidth;
	var NATURAL_HEIGHT = this.naturalHeight;

	var newWidth = Math.min(WIN_WIDTH, NATURAL_WIDTH);
	var newHeight = Math.min(WIN_HEIGHT, NATURAL_HEIGHT);

	$('body').css({
		width: WIN_WIDTH,
		height: WIN_HEIGHT,
		overflow: 'hidden'
	});

	self.css({
		position: 'absolute',
		top: (WIN_HEIGHT - newHeight) / 2 + 'px',
		left: (WIN_WIDTH - newWidth) / 2 + 'px',
		width: WIN_WIDTH + 'px'
		//height: newHeight + 'px'
	});
});
