//取引先の削除確認
$(function(){
  $(".customer-delete").on('click', function(){
      if(window.confirm("取引先を削除しますがよろしいですか？")) {
          location.href = $(this).attr('href');
      } else {
          return false;
      }
  });
});

//ボタンの色変更
$(function(){
  $(".customer-btn").hover(function(){
    $(this).css('background', '#000044');
    $(this).css('color', '#FFF');
  }, function() {
    $(this).css('background', '');
    $(this).css('color', '');
  });
});