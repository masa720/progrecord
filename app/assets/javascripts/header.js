$(function() {  
  $(".nav-ver-item__user__name").click(function () {
    // ナビが表示される
    var clickPanel = $(".nav-ver-item__user__window");
    clickPanel.toggle();
    $(".nav-ver-item__user__window:visible")
    $(this).css("background","#444");
    $(".nav-ver-item__user__window:hidden")
    $(this).css("background","#555");
    return false;
  });

  $(document).on('click', function () {
    if ($('.nav-ver-item__user__window').is(':visible')) {
        // ナビが表示されていたらcloseを実行
        $('.nav-ver-item__user').trigger('click');
    } else {
        // ナビが非表示の場合は起動しない
        event.stopPropagation();
    }
  });
});