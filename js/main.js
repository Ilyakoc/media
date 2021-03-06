var mobileWidth = 768;

var toCartAnimation = function(obj) {
	var cv = obj.innerWidth();
	var ch = obj.innerHeight();
	var ot = obj.offset().top - $(document).scrollTop();
	var ol = obj.offset().left;

	obj.clone()
		.css({
			'position' : 'fixed',
			'z-index' : '100',
			'width': cv,
			'height': ch,
			'top': ot,
			'left': ol,
			'opasity': 0.5
		})  
		.appendTo('body')
		.addClass('product-scale')
		.removeClass('slick-slide')
		.animate({
			opacity: '0',
			marginTop: -ch,
			marginLeft: -cv,
			top: 0,
			left:'100%',
			opacity: 0,
		}, 
		500, function() {
			$(this).remove();
		});
}

function fixedFooter() {
	var footer = $('.footer');
	var header = $('.header');
	if (footer.length) {
		var height = $(window).height() - footer.position().top - footer.innerHeight();
		if (height > 0) {
			const ph = header.height();
			height = (height - ph);
			height = (height < 0) ? 62 : height;
			footer.css({
				'margin-top': height + 'px'
			});
		}
	}
}

$(document).ready(function() {
	$('table').wrap('<div class="table-wrapper"></div>');
	var $body = $('body');
	$body.on('click tap', '.question-item__question', function (){
		$(this).closest('.question-item')
			.find('.question-item__answer')
			.toggleClass('question-item__answer-collapsed');
	});

	fixedFooter();

	$('.nav a').click(function() {
		var ul = $(this).next('ul');
		if (ul.length && $(window).width() < mobileWidth) {
			ul.slideToggle(300);
			return false;
		}

		return true;
	});

	$('.nav-btn').click(function() {
		$('.nav').slideToggle(300);
	});

	$(window).resize(function() {
		fixedFooter();
		
		if ($(window).width() > mobileWidth && $('.nav').is(':hidden')) {
			$('.nav').removeAttr('style');
		}
	});

	var header = $('.header').length ? $('.header').outerHeight() : 0;
	var navbar = $('.navbar');
	if (header && navbar.length) {
		$(window).scroll(function() {
			if ($(this).scrollTop() > header) {
				navbar.addClass('navbar-fixed');
				$('body').css('padding-top', navbar.innerHeight() + 'px');
			} else {
				navbar.removeClass('navbar-fixed');
				$('body').css('padding-top', 0);
			}
		});
	}

	$(document).on('click', '.js__in-cart', function(){
		toCartAnimation($(this).closest(".product-item").find('img'));
		$(this).addClass('in-cart-active');
	});

	$(document).on('click', '.js__photo-in-cart', function(){
		toCartAnimation($(".js__main-photo"));
		$(this).addClass('in-cart-active');
	});

	// ???????????? ?????????????? ????????????
	(function(selector) {
		var maxHeight=100, // ???????????????????????? ???????????? ???????????????????? ??????????
			togglerClass="read-more", // ?????????? ?????? ???????????? ???????????? ??????????
			smallClass="small", // ??????????, ?????????????? ?????????????????????? ?? ??????????, ?????????? ?????????? ??????????????
			labelMore="??????????????????", 
			labelLess="????????????????";
			
		$(selector).each(function() {
			var $this=$(this),
				$toggler=$($.parseHTML('<a href="#" class="'+togglerClass+'">'+labelMore+'</a>'));
			$this.after(["<div>",$toggler,"</div>"]);
			$toggler.on("click", $toggler, function(){
				$this.toggleClass(smallClass);
				$this.css('height', $this.hasClass(smallClass) ? maxHeight : $this.attr("data-height"));
				$toggler.text($this.hasClass(smallClass) ? labelMore : labelLess);
				return false;
			});
			$this.attr("data-height", $this.height());
			if($this.height() > maxHeight) {
				$this.addClass(smallClass);
				$this.css('height', maxHeight);
			}
			else {
				$toggler.hide();
			}
		});
	})(".is_read_more"); // ?????? ???????????????? ?????????????????? ?????? ?????????????? ???????????????????? ?????????????? ????????????.

	var fancyboxImages = $('a.image-full'); 
	if (fancyboxImages.length) {
		$(fancyboxImages).fancybox({
			overlayColor: '#333',
			overlayOpacity: 0.8,
			titlePosition : 'over',
			loop:true,
			helpers: {
			overlay: {
					locked: false
				}
			}
		});
	}

	$('body').on('click', '.yiiPager li', function(){
		$('html, body').animate({ scrollTop: $('.content').offset().top }, 500); // ?????????????????? ?????????????????? ?? ???????????????? scroll_el
	});

    $(document).on("click", "#totop", function(){$('body,html').animate({scrollTop:0},800);});
    $(window).on("scroll", function(){($(this).scrollTop() != 0)?$('#totop').fadeIn():$('#totop').fadeOut();});


	if( window.innerWidth > 768 ){
		$('.cases').slick({
			slidesToShow: 2,
			slidesToScroll: 1
		});
	} else {
		// $('.cases').slick({
		// 	centerMode: true,
		// 	//rightPadding: '60px',
		// 	slidesToShow: 1,
		// 	responsive: [
		// 		{
		// 			breakpoint: 768,
		// 			settings: {
		// 				arrows: false,
		// 				centerMode: true,
		// 				centerPadding: '40px',
		// 				slidesToShow: 3
		// 			}
		// 		},
		// 		{
		// 			breakpoint: 480,
		// 			settings: {
		// 				arrows: false,
		// 				centerMode: true,
		// 				centerPadding: '40px',
		// 				slidesToShow: 1
		// 			}
		// 		}
		// 	]
		// });
	}
	var details = document.querySelectorAll("details");
	for(i=0;i<details.length;i++) {
		details[i].addEventListener("toggle", accordion);
	}
	function accordion(event) {
		if (!event.target.open) return;
		var details = event.target.parentNode.children;
		for(i=0;i<details.length;i++) {
			if (details[i].tagName != "DETAILS" || !details[i].hasAttribute('open') || event.target == details[i]) continue;
			details[i].removeAttribute("open");
		}
	}
});

$(window).load(function() {
	fixedFooter();
});