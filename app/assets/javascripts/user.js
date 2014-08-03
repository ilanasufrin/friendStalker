$( document ).ready(function(){
  $('.stalking').change(function(){
    // debugger;
    var $stalkingText = $(this).prev();
    if ($stalkingText.text() === 'Currently Stalking') {
      $stalkingText.text('Stalk this Friend');
    } else {
      $stalkingText.text('Currently Stalking');
    }
  });
});