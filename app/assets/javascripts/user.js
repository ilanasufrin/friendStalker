$( document ).ready(function(){
  $('.stalking_check').click(function(e){
    e.preventDefault();
   // alert("fasf");
    var $form = $(this).closest('#stalking_check');
    $.ajax({
      url: "/users/:id",
      type: 'POST',
      data: $form.serialize(),
      dataType: 'script',
      success: function(){
        // $form.find('input[id="email_email_address"]').val("");
        // console.log('Email sent!');
        alert("YES");
      },
      failure: function(){
        alert('NO');
      }
    });
  });
});