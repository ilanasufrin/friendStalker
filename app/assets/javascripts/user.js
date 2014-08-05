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

//We did not manage to implement this
  // $('.slide-right').click(function() {
  //   $('.friends-container').animate({ "right": "+=200px" }, "fast" );
  // });

  
  // $('.slide-left').click(function() {
  //   $('.friends-container').animate({ "left": "+=200px" }, "fast" );
  // });

 
 

});



