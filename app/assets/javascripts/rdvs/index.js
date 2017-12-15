$(document).ready(function() {
  $('.tab-bar a').click(function() {
    var tab_id = $(this).attr('data-tab');
    $('.tab-bar a').removeClass('is-active');
    $('.tab-content').removeClass('is-active');
    $(this).addClass('is-active');
    $("#" + tab_id).addClass('is-active');
  });
});

$('.pop-up').hide(0);
$('.pop-up-container').hide(0);

$('.linktbar').click(function(){
  $('.pop-up-container').show();
  $('.pop-up').fadeIn(500);
  $('.link_to_bar').hide(0);
  $('.overlay').removeClass('blur-out');
  $('.overlay').addClass('blur-in');
  // e.stopPropagation();
  var event = document.createEvent('HTMLEvents');
  event.initEvent('resize', true, false);
  document.dispatchEvent(event);
});

$('.pop-up span').click(function() {
  $('.pop-up-container').hide(0);
  $('.pop-up').hide(0);
  $('.linktbar').show(0);
  $('.overlay').removeClass('blur-in');
  $('.overlay').addClass('blur-out');
});
