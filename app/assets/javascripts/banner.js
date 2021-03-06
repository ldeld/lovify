function cycleBackgrounds() {
  var index = 0;

  $imageEls = $('.container .slide'); // Get the images to be cycled.

  setInterval(function () {
      // Get the next index.  If at end, restart to the beginning.
      index = index + 1 < $imageEls.length ? index + 1 : 0;

      // Show the next
      $imageEls.eq(index).addClass('show');

      // Hide the previous
      $imageEls.eq(index - 1).removeClass('show');
  }, 4000);
};

// Document Ready.
$(function () {
    cycleBackgrounds();
});


$(function() {
  $('.scroll-down').click (function() {
    $('html, body').animate({scrollTop: $('section.ok').offset().top }, 'slow');
    return false;
  });
});

var scrollIcon = document.querySelector(".scroll-down")

if (scrollIcon) {
  document.addEventListener("scroll", function(event) {
    scrollIcon.style.opacity = 0;
  }, {once: true} )
};
