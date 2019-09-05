$(function() {  
  $(".header-item__user").click(function () {
    // ナビが表示される
    var clickPanel = $("+.header-item__user__window",this);
    clickPanel.toggle();
    $(".header-item__user__window:visible").prev().css("background","#444");
    $(".header-item__user__window:hidden").prev().css("background","#555");
    return false;
  });

  $(document).on('click', function () {
    if ($('.header-item__user__window').is(':visible')) {
        // ナビが表示されていたらcloseを実行
        $('.header-item__user').trigger('click');
    } else {
        // ナビが非表示の場合は起動しない
        event.stopPropagation();
    }
  });
});