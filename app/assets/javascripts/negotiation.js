$(function(){//誕生日
  //日付範囲決定
  function calcDays(){
    $('.select-day').empty();
    var y = $('.select-year').val();
    var m = $('.select-month'). val();

    if (m == "" || y == "") { //年か月が選択されていない時は31日まで表示
      var last = 31;
    } else if (m == 2 && ((y % 400 == 0) || ((y % 4 == 0) && (y % 100 != 0)))) {
      var last = 29; //うるう年判定
    } else {
      var last = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)[m-1];
    }

    $('.select-day').append('<option value="">--</option>');
    for (var i = 1; i <= last; i++) {
      if (d == i) { //日がすでに選択されている場合はその値が選択された状態で表示
        $('.select-day').append('<option value="' + i + '" selected>' + i + '</option>');
      } else {
        $('.select-day').append('<option value="' + i + '">' + i + '</option>');
      }
    }
  }

  var d = 0;
  $(function(){
    //1900年～2019年まで表示
    for (var i = 2019; i >= 1900; i--) {
      $('.select-year').append('<option value="' + i + '">' + i + '</option>');
    }
    //1月～12月まで表示
    for (var i = 1; i <= 12; i++) {
      $('.select-month').append('<option value="' + i + '">' + i + '</option>');
    }
    //1日～31日まで表示
    for (var i = 1; i <= 31; i++) {
      $('.select-day').append('<option value="' + i + '">' + i + '</option>');
    }

    $('.select-day').change(function(){
      d = $(this).val();
    });
    //年か月が変わるごとに日数を計算
    $('.select-year').change(calcDays);
    $('.select-month').change(calcDays);
  });
});

$(function(){//誕生日
  //日付範囲決定
  function calcDays(){
    $('.select-nday').empty();
    var y = $('.select-nyear').val();
    var m = $('.select-nmonth'). val();

    if (m == "" || y == "") { //年か月が選択されていない時は31日まで表示
      var last = 31;
    } else if (m == 2 && ((y % 400 == 0) || ((y % 4 == 0) && (y % 100 != 0)))) {
      var last = 29; //うるう年判定
    } else {
      var last = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)[m-1];
    }

    $('.select-nday').append('<option value="">--</option>');
    for (var i = 1; i <= last; i++) {
      if (d == i) { //日がすでに選択されている場合はその値が選択された状態で表示
        $('.select-nday').append('<option value="' + i + '" selected>' + i + '</option>');
      } else {
        $('.select-nday').append('<option value="' + i + '">' + i + '</option>');
      }
    }
  }

  var d = 0;
  $(function(){
    //1900年～2019年まで表示
    for (var i = 2019; i >= 1900; i--) {
      $('.select-nyear').append('<option value="' + i + '">' + i + '</option>');
    }
    //1月～12月まで表示
    for (var i = 1; i <= 12; i++) {
      $('.select-nmonth').append('<option value="' + i + '">' + i + '</option>');
    }
    //1日～31日まで表示
    for (var i = 1; i <= 31; i++) {
      $('.select-nday').append('<option value="' + i + '">' + i + '</option>');
    }

    $('.select-nday').change(function(){
      d = $(this).val();
    });
    //年か月が変わるごとに日数を計算
    $('.select-nyear').change(calcDays);
    $('.select-nmonth').change(calcDays);
  });
});

//編集削除メニュー表示
$(function() {  
  $(".main-nego__detail__head__menu").click(function () {
    // ナビが表示される
    var clickPanel = $(".main-nego__detail__head__menu__window");
    clickPanel.toggle();
    $(".main-nego__detail__head__menu__window:visible")
    $(".main-nego__detail__head__menu__window:hidden")
    return false;
  });

  $(document).on('click', function () {
    if ($('.main-nego__detail__head__menu__window').is(':visible')) {
        // ナビが表示されていたらcloseを実行
        $('.main-nego__detail__head__menu').trigger('click');
    } else {
        // ナビが非表示の場合は起動しない
        event.stopPropagation();
    }
  });
});

//商談記事の削除確認
$(function(){
  $(".confirm-btn").on('click', function(){
      if(window.confirm("削除してもよろしいですか？")) {
          location.href = $(this).attr('href');
      } else {
          return false;
      }
  });
});

//ボタンの色変更
$(function(){
  $(".menu-btn").hover(function(){
    $(this).css('background', '#000044');
    $(this).css('color', '#FFF');
  }, function() {
    $(this).css('background', '');
    $(this).css('color', '');
  });
});