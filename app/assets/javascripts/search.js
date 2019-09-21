$(function() {
  $("#q_customer_id_eq, #q_user_id_eq").on('change', function(){
    console.log("test")
    $(".search-btn").click();
  });
});