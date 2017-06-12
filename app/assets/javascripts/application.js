//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require plugin/jquery.tagcanvas.min.js

$(document).ready(function(){

	$('#sl_main_gallery').on('slide.bs.carousel', function(e) {
    var $nextImage;
    $nextImage = $(e.relatedTarget).find('img');
    $nextImage.each(function() {
      if ($(this).attr('data-original')) {
        $(this).attr('src', $(this).attr('data-original'));
        $(this).removeAttr('data-original');
      }
    });
  });

  $('#sl_main_gallery .carousel-inner .active img,#sl_main_blog img').each(function() {
    if ($(this).attr('data-original')) {
      $(this).attr('src', $(this).attr('data-original'));
      $(this).removeAttr('data-original');
    }
  });

	if(!$('#myCanvas').tagcanvas({
     outlineThickness : 1,
     maxSpeed : 0.05,
 			textFont: null,
 			textColour: null,
 			weight: true,
     depth : 1
   },'tags')) {
     // TagCanvas failed to load
     $('#myCanvasContainer').hide();
     $("#tags ul").css({'margin':0,'padding':0,'list-style':'none'});
     $("#tags ul li").css({'float':'left','margin':'0 10px'});
   }

	$('.modal_link').click(function(event){
  	event.preventDefault();
  	$('#myModal').removeData("modal");
  	$('#myModal').load($(this).attr('href')+'?no_layout=true',function(){
  		$('#myModal').modal();
  		});
	});

 $('[data-toggle="tooltip"]').tooltip();

	$(".btn_minimize").click(function(){
		var i=$(this).parent().find('i:first');
        if(i.hasClass('glyphicon-chevron-down')) {
            i.removeAttr('class').addClass('glyphicon').addClass('glyphicon-chevron-up');
            $(this).parent().parent().parent().find('.box_content').slideDown();
        } else {
            i.removeAttr('class').addClass('glyphicon').addClass('glyphicon-chevron-down');
            $(this).parent().parent().parent().find('.box_content').slideUp();
        }
		return false;
	});

	$(".btn_close").click(function(){
		$(this).parent().parent().parent().remove();
		if(!$(".sl_aside").length) {
			$('.sub_main').css('width','100%');
		}
		return false;
	});

	$("#sl_blog_categories .box_content ul span.c_pointer").click(function(){
		if($(this).parent().find('ul').is(':visible')) {
			$(this).parent().find('ul').hide();
			$(this).find('span:eq(1)').html('&nbsp;&lt;&lt;');
		} else {
			$(this).parent().find('ul').show();
			$(this).find('span:eq(1)').html('&nbsp;&gt;&gt;');
		}
	});

	$("a.simple_image").fancybox({
			'opacity'   : true,
			'overlayShow'        : true,
			'overlayColor': '#000000',
			'overlayOpacity'     : 0.9,
			'titleShow':true,
			'openEffect'  : 'elastic',
			'closeEffect' : 'elastic'
		});	
});
