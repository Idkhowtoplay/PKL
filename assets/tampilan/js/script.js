window.addEventListener('DOMContentLoaded', event => {

  var navbarShrink = function () {
      const navbarCollapsible = document.body.querySelector('#mainNav');
      if (!navbarCollapsible) {
          return;
      }
      if (window.scrollY === 0) {
          navbarCollapsible.classList.remove('navbar-shrink')
      } else {
          navbarCollapsible.classList.add('navbar-shrink')
      }

  };

  navbarShrink();

  document.addEventListener('scroll', navbarShrink);

  const mainNav = document.body.querySelector('#mainNav');
  if (mainNav) {
      new bootstrap.ScrollSpy(document.body, {
          target: '#mainNav',
          offset: 74,
      });
  };

  const navbarToggler = document.body.querySelector('.navbar-toggler');
  const responsiveNavItems = [].slice.call(
      document.querySelectorAll('#navbarResponsive .nav-link')
  );
  responsiveNavItems.map(function (responsiveNavItem) {
      responsiveNavItem.addEventListener('click', () => {
          if (window.getComputedStyle(navbarToggler).display !== 'none') {
              navbarToggler.click();
          }
      });
  });
});

(function ($) {
    "use strict";
    
        // Modal Video
        $(document).ready(function () {
            var $videoSrc;
            $('.btn-play').click(function () {
                $videoSrc = $(this).data("src");
            });
            console.log($videoSrc);
    
            $('#videoModal').on('shown.bs.modal', function (e) {
                $("#video").attr('src', $videoSrc + "?autoplay=1&amp;modestbranding=1&amp;showinfo=0");
            })
    
            $('#videoModal').on('hide.bs.modal', function (e) {
                $("#video").attr('src', $videoSrc);
            })
        });
    
})(jQuery);

