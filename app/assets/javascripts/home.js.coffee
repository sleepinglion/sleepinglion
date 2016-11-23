//= require application

$(document).ready ->
  $('#sl_main_gallery').on 'slide.bs.carousel', (e) ->
    $nextImage = $(e.relatedTarget).find('img')
    $nextImage.each ->
      if $(this).attr('data-original')
        $(this).attr 'src', $(this).attr('data-original')
        $(this).removeAttr 'data-original'
      return
    return
    
$('#sl_main_gallery .carousel-inner .active img,#sl_main_blog img').each ->
  if $(this).attr('data-original')
    $(this).attr 'src', $(this).attr('data-original')
    $(this).removeAttr 'data-original'
  return    
    
  return

