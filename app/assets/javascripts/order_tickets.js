// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){

  // function orderUp(){
  //   var orderUpButton = $('.order-up');
  //   orderUpButton.click(function(){
  //     console.log('order up!');
  //     var orderStatus = $('.order-ticket-status');
  //     orderStatus.css('background-color', 'white');
  //     orderStatus.text('Complete!');
  //   });
  // }

  $('.order-ticket-status').each(function(){

    var createdAt = $(this).attr('id');
    var currentTime = new Date();

    createdAt = new Date(createdAt);
    var timeElapsed = Date.now() - createdAt.getTime();

    if (timeElapsed > 900000){
      $(this).css('background-color', 'red');
    } else if (timeElapsed > 600000){
      $(this).css('background-color', 'yellow');
    } else if (timeElapsed > 0) {
      $(this).css('background-color', 'green');
    }

    // if (orderUp()){
    //   timeElapsed = 0;
    // };

  });


});
