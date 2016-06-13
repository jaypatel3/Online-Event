
			var api;
			jQuery(document).ready(function() {
				 api =  jQuery('.fullwidthbanner').revolution(
								{
									delay:9000,
									startheight:470,
									startwidth:1200,
								
									navigationType:"both",					//bullet, thumb, none, both		(No Thumbs In FullWidth Version !)
									navigationArrows:"verticalcentered",		//nexttobullets, verticalcentered, none
									navigationStyle:"round",				//round,square,navbar

									touchenabled:"on",						// Enable Swipe Function : on/off
									onHoverStop:"on",						// Stop Banner Timet at Hover on Slide on/off

									navOffsetHorizontal:0,
									navOffsetVertical:20,

									stopAtSlide:-1,
									stopAfterLoops:-1,

									shadow:0,								//0 = no Shadow, 1,2,3 = 3 Different Art of Shadows  (No Shadow in Fullwidth Version !)
									fullWidth:"on"							// Turns On or Off the Fullwidth Image Centering in FullWidth Modus
								});
			});
		