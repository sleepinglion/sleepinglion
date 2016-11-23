//= require application
//= require plugin/jquery.tagcanvas.min.js


$(document).ready(function(){ 
   if( ! $('#myCanvas').tagcanvas({
     textColour : '#ffffff',
     outlineThickness : 1,
     maxSpeed : 0.03,
     depth : 0.75
   })) {
     // TagCanvas failed to load
     $('#myCanvasContainer').hide();
   }
});