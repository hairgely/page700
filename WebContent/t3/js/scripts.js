
$(document).ready(function(){/* off-canvas sidebar toggle */

$('[data-toggle=offcanvas]').click(function() {
  	$(this).toggleClass('visible-xs text-center');
    $(this).find('i').toggleClass('glyphicon-chevron-right glyphicon-chevron-left');
    $('.row-offcanvas').toggleClass('active');
    $('#cateDis').toggleClass('hidden-xs').toggleClass('visible-xs');
    $('#cateDisButton').toggleClass('visible-xs').toggleClass('hidden-xs');
    $('#btnShow').toggle();
});
});