$(document).on('turbolinks:load', () => {
  loadSockInfo();
  // loadReviews();
});

function loadSockInfo() {
  let currentSockId = $('#sock-container').data('sock-id');
  $.get('/api/products/' + currentSockId, sockInfo => {
    $('#image').html('<img src="' + `/assets/${sockInfo.image_url}` + '">');
    $('#sock-name').text(sockInfo.name);
    $('#price').text('$' + sockInfo.price);
    $('#description').text(sockInfo.description);
    $('#shipping-info').text(sockInfo.shipping_info);
  });
}
