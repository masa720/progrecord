$(function(){
  // 次回対応年月日の表示作成
  function appendNextBox(){
    var nextDateSelect = '';
    nextDateSelect = `<div class='field' id= 'next-date'>
                        <label for="negotiation_次回年月日">次回年月日</label>
                        <span class="require">必須</span>
                        <br>
                        <div class="wrap">
                        <select class="select-nyear" name="negotiation[next_year]" id="negotiation_next_year"><option value="">--</option>
                        <option value="2022">2022</option><option value="2021">2021</option><option value="2020">2020</option><option value="2019">2019</option><option value="2018">2018</option></select><div class="select">
                        
                        </div>
                        <span>年</span>
                        <div class="select">
                        <select class="select-nmonth" name="negotiation[next_month]" id="negotiation_next_month"><option value="">--</option>
                        <option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select>
                        </div>
                        <span>月</span>
                        <div class="select">
                        <select class="select-nday" name="negotiation[next_day]" id="negotiation_next_day"><option value="">--</option>
                        <option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select>
                        </div>
                        <span>日</span>
                        </div>
                      </div>`;
    $('.next-negotiation-box').append(nextDateSelect);
  }

    // 次回対応あり選択後のイベント
  $('#next-nego').on('change', function(){
    var nextNegotiation = document.getElementById('next-nego').value;
    if (nextNegotiation == "あり"){ //次回対応がありの場合
        appendNextBox();
      }
    else {
      $('#next-date').remove(); //次回対応が初期値になった時、以下を削除する
    }
  });
});