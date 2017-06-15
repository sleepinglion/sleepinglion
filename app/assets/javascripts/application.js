//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require plugin/jquery.uri.js
//= require plugin/jquery.tagcanvas.min.js
//= require jquery.easing
//= require fancybox

$(document).ready(function(){
		$("#faqCategoryList a.title").click(getList);
		$("#faqList dt a.title").click(getContent);

		function getList() {
			var tt=$(this);
			var parent=$(this).parent();

			$.getJSON($(this).attr('href')+'.json',function(data){
				$("#faqList").empty();
				if(data.faqs.length) {
					$.each(data.faqs,function(index,value){
						var a=$('<a class="title" href="/faqs/'+value.id+'">'+value.title+'</a>').click(getContent);
						if(data.admin) {
							var div=$('<div class="sl_faq_menu"><a>수정</a> &nbsp; | &nbsp; <a rel="nofollow" data-method="delete" data-confirm="정말로 삭제합니까?">삭제</a></div>');
							div.find('a:first').attr('href','/faqs/'+value.id+'/edit');
							div.find('a:eq(1)').attr('href','/faqs/'+value.id);
							$('<dt>').appendTo("#faqList").append(a).append(div);
						} else {
							$('<dt>').appendTo("#faqList").append(a);
						}
					});
				} else {
					$('<dt>글이 없습니다.</dt>').appendTo("#faqList");
				}

				$("#faqCategoryList li").removeClass('on');
				parent.addClass('on');

				var faqCategoryId=$.uri.setUri(tt.attr('href')).param("faq_category_id");

				if(data.admin) {
					$("#faqCategoryList li .sl_faq_category_menu").remove();
					var dd=$('<div class="sl_faq_category_menu"><a>수정</a><br /><a rel="nofollow" data-method="delete" data-confirm="정말로 삭제합니까?">삭제</a></div>');
					dd.find('a:first').attr('href','/faq_categories/'+faqCategoryId+'/edit');
					dd.find('a:eq(1)').attr('href','/faq_categories/'+faqCategoryId);
					parent.append(dd);
				}

				$('#sl_bottom_menu a:eq(1)').attr('href','/faqs/new?faq_category_id='+faqCategoryId);
			});
			return false;
		}

		function getContent(){
			var parent=$(this).parent();
			$.getJSON($(this).attr('href')+'.json',function(value){
				if(parent.next().get(0)) {
					if(parent.next().get(0).tagName!='DD') {
						parent.after('<dd>');
					}
				} else {
					parent.after('<dd>');
				}
				$("#faqList dt").removeClass('on');
				$("#faqList dd").hide();
				parent.addClass('on');
				parent.next().html('<p>'+nl2br(value.content)+'</p>').slideDown();
			});

			return false;
		}

	function nl2br (str, is_xhtml) {
		  var breakTag = (is_xhtml || typeof is_xhtml === 'undefined') ? '<br ' + '/>' : '<br>';
		  return (str + '').replace(/([^>\r\n]?)(\r\n|\n\r|\r|\n)/g, '$1' + breakTag + '$2');
	}

	$('#sl_main_gallery').on('slide.bs.carousel', function(e) {
		var $nextImage = $(e.relatedTarget).find('img');

		$nextImage.each(function(){
			if($(this).attr('data-original')) {
    		$(this).attr('src', $(this).attr('data-original'));
    		$(this).removeAttr('data-original');
			}
  		});
	});

	$('#sl_main_gallery .carousel-inner .active img').each(function(){
			if($(this).attr('data-original')) {
    		$(this).attr('src', $(this).attr('data-original'));
    		$(this).removeAttr('data-original');
			}
	});

  $("#sl_main_gallery .item a").click(function(){
  	var image_url=$("#image_url").val();
    $.getJSON($(this).attr('href'),{'json':true},function(data){
      $("#sl_gallery_left a").attr('href',data.photo.url).attr('title',data.title);
      $("#sl_gallery_left span").text(data.title)
      $("#sl_gallery_left figcaption").text(data.title).css('bottom',-30);
      $("#sl_gallery_left img").attr('src',data.photo.large_thumb.url).animate({ opacity: "1" }, 400,function(){
      $("#sl_gallery_left figcaption").animate({bottom:0,opacity:'0.8'},400);
    });
    $("#sl_gallery_right div:first").html(nl2br(data.content));
    $("#sl_gallery_menu a:first").attr('href','/galleries/edit/'+data.id);
    $("#sl_gallery_menu a:eq(1)").attr('href','/galleries/confirm_delete/'+data.id);
    document.title=data.title+'title_separator'+'application_name';
    if (history && history.pushState) {
      history.pushState('','gallery_'+data.id,'/galleries/'+data.id);
            }
          });
    return false;
  });


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
