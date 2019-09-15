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