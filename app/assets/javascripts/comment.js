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

// $(function(){
//   $(".comment-modal").click(function () {
//     // ナビが表示される
//     var clickPanel = $(".main-nego__detail__box__comment");
//     clickPanel.toggle();
//     $(".main-nego__detail__box__comment:visible")
//     $(".main-nego__detail__box__comment:hidden")
//     return false;
//   });

//   $(document).on('click', function () {
//     if ($('.main-nego__detail__box__comment').is(':visible')) {
//         // ナビが表示されていたらcloseを実行
//         $('.main-nego__detail__box__comment').trigger('click');
//     } else {
//         // ナビが非表示の場合は起動しない
//         event.stopPropagation();
//     }
//   });
// });