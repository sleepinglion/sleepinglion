$(document).ready(function(){
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

    $(".sl_gallery .carousel-item a").click(function(){
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

    $('#myModal').on('hidden.bs.modal', function () {
        $(this).removeData('bs.modal');
    });

    $('.modal_link').click(function(event){
        event.preventDefault();
        $('#myModal').removeData("modal");
        $('#myModal').load($(this).attr('href')+'?no_layout=true',function(){
            $('#myModal').modal();
        });
        return false;
    });

    $('[data-toggle="tooltip"]').tooltip();

    $(".btn_minimize").click(function(){
        var i=$(this).find('i:first');
        if(i.text()=='expand_more') {
            i.text('expand_less');
            $(this).parent().parent().parent().find('.box_content').slideDown();
        } else {
            i.text('expand_more');
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