(function(){

	var button = document.getElementById('cn-button'),
  		wrapper = document.getElementById('cn-wrapper'),
    	overlay = document.getElementById('cn-overlay');

	//open and close menu when the button is clicked
	var open = false;
	button.addEventListener('click', handler, false);
	wrapper.addEventListener('click', cnhandle, false);

	function cnhandle(e){
		e.stopPropagation();
	}

	function handler(e){
		if (!e) var e = window.event;
	 	e.stopPropagation();//so that it doesn't trigger click event on document

	  	if(!open){
	    	openNav();
	  	}
	 	else{
	    	closeNav();
	  	}
	}
	function openNav(){
		open = true;
	    button.innerHTML = "-";

			if (overlay.classList)
  			overlay.classList.add('on-overlay');
			else
  			overlay.className += ' ' + 'on-overlay';

			if (wrapper.classList)
  			wrapper.classList.add('opened-nav');
			else
  			wrapper.className += ' ' + 'opened-nav';
	}
	function closeNav(){
		open = false;
		button.innerHTML = "+";

		if (overlay.classList)
	  	overlay.classList.remove('on-overlay');
		else
	  	overlay.className = overlay.className.replace(new RegExp('(^|\\b)' + className.split(' ').join('|') + '(\\b|$)', 'gi'), ' ');

		if (wrapper.classList)
	  	wrapper.classList.remove('opened-nav');
		else
	  	wrapper.className = wrapper.className.replace(new RegExp('(^|\\b)' + className.split(' ').join('|') + '(\\b|$)', 'gi'), ' ');

	}

	document.addEventListener('click', closeNav);

})();

/* fade button out and back in on scroll

$( document ).ready(function() {
  var component = $('.component');
	var headerHeight = $('.site-header').outerHeight(true);
	var panelmasterHeight = $('.panel-master').outerHeight(true);
  var contentHeight = $(".page-blog-landing").outerHeight(true);
	var targetOffset = contentHeight - headerHeight - panelmasterHeight;
  $(window).scroll(function() {
      if($(this).scrollTop() > targetOffset -200) {
          component.fadeOut(1600, "linear");
			}
			else {
					component.fadeIn(1600, "linear");
			}
  });
});
–––––––––––––––––––––––––––––––––––––––––––––––––– */
