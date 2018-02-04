$(document).on('turbolinks:load', () => {
  loadSocks();
});

function loadSocks() {
  $.get('/api/products', allProducts => {
    $(allProducts).each(function() {
      let template = Handlebars.compile($('#product-template').html());
      let html = template({
        imageUrl: `/assets/${this.image_url}`,
        id: this.id,
        name: this.name,
        supplierName: this.supplier_name,
        price: this.price
      });
      $(document).ready($('#products').append(html));
    });
  });
}
