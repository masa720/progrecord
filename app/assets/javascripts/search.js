$(function() {
  $(".search-list").on('change', function(){
    $("#negotiation_search, #customer_search").submit();
  });
});