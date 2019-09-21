//コメント投稿フォームの表示
$(function() {
  $('.comment-box-btn').click(function() {
    $(".main-nego__detail__box__comment").show();
    $('.comment-box-btn').hide();
  });
  $('.cancel-btn').click(function() {
    $(".main-nego__detail__box__comment").hide();
    $('.comment-box-btn').show();
    $('.comment-area').val('');
    $('comment-area')[0].reset();
  });
});

//コメントを表示
$(function() {
  $('.comment-show-btn').click(function() {
    $(".main-nego__detail__box__comment-box").toggle();
  });
});