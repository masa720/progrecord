$(function() {
  $('.dropdwn').click(function(){
    if ($("ul.dropdwn_menu").is(':visible')) {
      // ナビが表示されていたらcloseを実行
      $("ul.dropdwn_menu").slideUp();
    } else {
      // ナビが非表示の場合は起動しない
      $("ul:not(:animated)", this).slideDown();
      $("ul.dropdwn_menu",this).css('display', 'block');
        event.stopPropagation();
    }
  });

  $(document).on('click', function () {
    if ($("ul.dropdwn_menu").is(':visible')) {
        // ナビが表示されていたらcloseを実行
      $("ul.dropdwn_menu",this).slideUp();
    } else {
        // ナビが非表示の場合は起動しない
        event.stopPropagation();
    }
  });
});
