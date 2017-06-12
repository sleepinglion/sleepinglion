$(document).ready(function() {
  return $('#sl_main_gallery').on('slide.bs.carousel', function(e) {
    var $nextImage;
    $nextImage = $(e.relatedTarget).find('img');
    $nextImage.each(function() {
      if ($(this).attr('data-original')) {
        $(this).attr('src', $(this).attr('data-original'));
        $(this).removeAttr('data-original');
      }
    });
  });
});

$('#sl_main_gallery .carousel-inner .active img,#sl_main_blog img').each(function() {
  if ($(this).attr('data-original')) {
    $(this).attr('src', $(this).attr('data-original'));
    $(this).removeAttr('data-original');
  }
  return;
});
