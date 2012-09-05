$(document).ready(function() {
  $('new_menuitem').submit(function() {
    var price = $('#menuitem_price').val();
    console.log(price);
  });
});
