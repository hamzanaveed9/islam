$(document).ready(function(){

    $('.scroll-top').hide(); 
  
    /*--------------- Navbar Toggler ---------------*/
    $('#menu-btn').click(function(){
      $(this).toggleClass('fa-times');
      $('.navbar').toggleClass('active');
    });
  
    /*--------------- Scroll-Top ---------------*/
    $(window).on('scroll',function(){
      
      $('#menu-btn').removeClass('fa-times');
      $('.navbar').removeClass('active');
  
      $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
          $('.scroll-top').fadeIn();
        } else {
          $('.scroll-top').fadeOut();
        }
      });
  
    });
  
    /*--------------- Scroll-Top ---------------*/
    function loader(){
      document.querySelector(".loader-container").classList.add('fade-out');
    }
  
    function fadeOut(){
      setInterval(loader, 500)
    }
  
    window.onload = fadeOut;
  
  });
  
  