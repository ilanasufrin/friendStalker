$( document ).ready(function(){
  $('.stalking').change(function(){
    var $stalkingText = $(this).prev();
    if ($stalkingText.text() === 'Currently Following') {
      $stalkingText.text('Follow this Friend');
    } else {
      $stalkingText.text('Currently Following');
    }
    $('input:submit').trigger('click');
  });


  $('.jcarousel').jcarousel();
    $('.jcarousel').jcarousel('scroll', '+=2');

});

// $(function() {
//     $('.jcarousel').jcarousel();
//     $('.jcarousel').jcarousel('scroll', '+=2');
// });

