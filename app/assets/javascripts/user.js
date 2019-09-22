$(function(){
  $(".sign-btn").hover(function(){
    $(this).css('background', '#000044');
    $(this).css('color', '#FFF');
  }, function() {
    $(this).css('background', '');
    $(this).css('color', '');
  });
});

$(function() {
  $('.tab-group__list').click(function() {
    var index = $('.tab-group__list').index(this);
    $('.user-main__detail__contents').css('display','none');
    $('.user-main__detail__contents').eq(index).css('display','block');
    $('.user-main__detail__contents').removeClass('is-active');
    $('.tab-group__list').removeClass('is-active');
    $(this).addClass('is-active');
    $('.hide').css('display','block'); 
  });
});

