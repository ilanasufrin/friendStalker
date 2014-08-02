$( document ).ready(function(){
  $('.stalking_check').click(function(e){
    e.preventDefault();
    var $form = $(this).closest('#stalking_check');
    $.ajax({
      url: "#",
      type: 'GET',
      data: $form.serialize(),
      dataType: 'text',
      success: function(){
        // $form.find('input[id="email_email_address"]').val("");
        // console.log('Email sent!');
        alert("YES");
      },
      failure: function(){
        alert('Something went wrong');
      }
    });
  });
});