$(function(){
  $(".sign-btn").hover(function(){
    $(this).css('background', '#000044');
    $(this).css('color', '#FFF');
  }, function() {
    $(this).css('background', '');
    $(this).css('color', '');
  });
});