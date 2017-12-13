$(document).ready(function() {
  $('.tab-bar a').click(function() {
    var tab_id = $(this).attr('data-tab');
    $('.tab-bar a').removeClass('is-active');
    $('.tab-content').removeClass('is-active');
    $(this).addClass('is-active');
    $("#" + tab_id).addClass('is-active');
  });
});
