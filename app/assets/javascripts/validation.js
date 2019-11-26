$(function(){//メール必須判定
  $('.email').on('blur',function(){
    let error;
    let value = $(this).val();
    if(value == ""){
      error = false;
    }
    else if (!value.match(/^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/)){
      error = true;
    }

    if(error){//エラー時の処理
      //エラーで、エラーメッセージがなかったら
      if(!$(this).nextAll('span.error-info').length){//メッセージを後ろに追加
        $(this).after('</br><span class = "error-info">正しいメールアドレスを入力してください</span>');
      }
    }
    else {//エラーじゃないのにメッセージがあったら
      if($(this).nextAll('span.error-info').length){//消す
        $(this).nextAll('span.error-info').remove();
      }
    }
  });
});

$(function(){//パス必須判定
  $('.password').on('blur',function(){
    let error;
    let value = $(this).val();
    if(value == ""){
      error = true;
    }
    else if (!value.match(/^([a-zA-Z0-9]{6,})$/)){
      error = true;
    }

    if(error){//エラー時の処理
      //エラーで、エラーメッセージがなかったら
      if(!$(this).nextAll('span.error-info').length){//メッセージを後ろに追加
        $(this).after('</br><span class = "error-info">正しいパスワードを入力してください</span>');
      }
    }
    else {//エラーじゃないのにメッセージがあったら
      if($(this).nextAll('span.error-info').length){//消す
        $(this).nextAll('span.error-info').remove();
      }
    }
  });
});

$(function(){//パス必須判定
  $('.current_password').on('blur',function(){
    let error;
    let value = $(this).val();
    if(value == ""){
      error = true;
    }
    else if (!value.match(/^([a-zA-Z0-9]{6,})$/)){
      error = true;
    }

    if(error){//エラー時の処理
      //エラーで、エラーメッセージがなかったら
      if(!$(this).nextAll('span.error-info').length){//メッセージを後ろに追加
        $(this).after('</br><span class = "error-info">正しいパスワードを入力してください</span>');
      }
    }
    else {//エラーじゃないのにメッセージがあったら
      if($(this).nextAll('span.error-info').length){//消す
        $(this).nextAll('span.error-info').remove();
      }
    }
  });
});

$(function(){//パス確認判定
  $('.password_confirmation').on('blur',function(){
    let error;
    let value = $(this).val();
    if(value == ""){
      error = true;
    }
    else if (user_password.value != user_password_confirmation.value){
      error = true;
    }

    if(error){//エラー時の処理
      //エラーで、エラーメッセージがなかったら
      if(!$(this).nextAll('span.error-info').length){//メッセージを後ろに追加
        $(this).after('</br><span class = "error-info">入力値が一致しません</span>');
      }
    }
    else {//エラーじゃないのにメッセージがあったら
      if($(this).nextAll('span.error-info').length){//消す
        $(this).nextAll('span.error-info').remove();
      }
    }
  });
});

$(function(){//姓必須判定
  $('.last_name').on('blur',function(){
    let error;
    let value = $(this).val();
    if(value == ""){
      error = true;
    }
    else if (!value.match(/^[ぁ-んァ-ン一-龥]/)){
      error = true;
    }

    if(error){//エラー時の処理
      //エラーで、エラーメッセージがなかったら
      if(!$(this).nextAll('span.error-info').length){//メッセージを後ろに追加
        $(this).after('</br><span class = "error-info">正しく姓を入力してください</span>');
      }
    }
    else {//エラーじゃないのにメッセージがあったら
      if($(this).nextAll('span.error-info').length){//消す
        $(this).nextAll('span.error-info').remove();
      }
    }
  });
});

$(function(){//名必須判定
  $('.first_name').on('blur',function(){
    let error;
    let value = $(this).val();
    if(value == ""){
      error = true;
    }
    else if (!value.match(/^[ぁ-んァ-ン一-龥]/)){
      error = true;
    }

    if(error){//エラー時の処理
      //エラーで、エラーメッセージがなかったら
      if(!$(this).nextAll('span.error-info').length){//メッセージを後ろに追加
        $(this).after('</br><span class = "error-info">正しく名を入力してください</span>');
      }
    }
    else {//エラーじゃないのにメッセージがあったら
      if($(this).nextAll('span.error-info').length){//消す
        $(this).nextAll('span.error-info').remove();
      }
    }
  });
});

$(function(){//タイトル必須判定
  $('.require-check-title').on('blur',function(){
    let error;
    let value = $(this).val();
    if(value == ""){
      error = true;
    }

    if(error){//エラー時の処理
      //エラーで、エラーメッセージがなかったら
      if(!$(this).nextAll('span.error-info').length){//メッセージを後ろに追加
        $(this).after('</br><span class = "error-info">タイトルを入力してください</span>');
      }
    }
    else {//エラーじゃないのにメッセージがあったら
      if($(this).nextAll('span.error-info').length){//消す
        $(this).nextAll('span.error-info').remove();
      }
    }
  });
});

$(function(){//内容必須判定
  $('.require-check-body').on('blur',function(){
    let error;
    let value = $(this).val();
    if(value == ""){
      error = true;
    }

    if(error){//エラー時の処理
      //エラーで、エラーメッセージがなかったら
      if(!$(this).nextAll('span.error-info').length){//メッセージを後ろに追加
        $(this).after('</br><span class = "error-info">内容を入力してください</span>');
      }
    }
    else {//エラーじゃないのにメッセージがあったら
      if($(this).nextAll('span.error-info').length){//消す
        $(this).nextAll('span.error-info').remove();
      }
    }
  });
});

$(function(){//社名必須判定
  $('.require-check-customer').on('blur',function(){
    let error;
    let value = $(this).val();
    if(value == ""){
      error = true;
    }

    if(error){//エラー時の処理
      //エラーで、エラーメッセージがなかったら
      if(!$(this).nextAll('span.error-info').length){//メッセージを後ろに追加
        $(this).after('</br><span class = "error-info">会社名を入力してください</span>');
      }
    }
    else {//エラーじゃないのにメッセージがあったら
      if($(this).nextAll('span.error-info').length){//消す
        $(this).nextAll('span.error-info').remove();
      }
    }
  });
});

$(function(){//担当必須判定
  $('.require-check-person').on('blur',function(){
    let error;
    let value = $(this).val();
    if(value == ""){
      error = true;
    }

    if(error){//エラー時の処理
      //エラーで、エラーメッセージがなかったら
      if(!$(this).nextAll('span.error-info').length){//メッセージを後ろに追加
        $(this).after('</br><span class = "error-info">担当を入力してください</span>');
      }
    }
    else {//エラーじゃないのにメッセージがあったら
      if($(this).nextAll('span.error-info').length){//消す
        $(this).nextAll('span.error-info').remove();
      }
    }
  });
});

$(function(){//携帯番号判定
  $('.mobile_phone').on('blur',function(){
    let error;
    let value = $(this).val();
    if(value == ""){
      error = false;
    }
    else if (!value.match(/^0[789]0\d{8}$/)){
      error = true;
    }

    if(error){//エラー時の処理
      //エラーで、エラーメッセージがなかったら
      if(!$(this).nextAll('span.error-info').length){//メッセージを後ろに追加
        $(this).after('</br><span class = "error-info">正しく携帯番号を入力してください</span>');
      }
    }
    else {//エラーじゃないのにメッセージがあったら
      if($(this).nextAll('span.error-info').length){//消す
        $(this).nextAll('span.error-info').remove();
      }
    }
  });
});

$(function(){//電話判定
  $('.telephone').on('blur',function(){
    let error;
    let value = $(this).val();
    if(value == ""){
      error = false;
    }
    else if (!value.match(/^0\d{9,10}$/)){
      error = true;
    }

    if(error){//エラー時の処理
      //エラーで、エラーメッセージがなかったら
      if(!$(this).nextAll('span.error-info').length){//メッセージを後ろに追加
        $(this).after('</br><span class = "error-info">正しく番号入力してください</span>');
      }
    }
    else {//エラーじゃないのにメッセージがあったら
      if($(this).nextAll('span.error-info').length){//消す
        $(this).nextAll('span.error-info').remove();
      }
    }
  });
});

$(function(){//User登録前判定
  $('form').on('submit',function(){
    let error = $(this).find('span.error-info').length;

    if(error){
      alert("入力エラーがあります");
      return false;
    }
  });
});