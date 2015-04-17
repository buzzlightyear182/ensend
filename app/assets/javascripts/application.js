// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require best_in_place
//= require jquery_ujs
//= require jquery-ui
//= require best_in_place.jquery-ui
//= require bootstrap-sprockets
//= require dashboard
//= require turbolinks
//= require_tree .

function get_tags(){
  console.log("Inside get_tags() function");
  value_id = $('#product_category_id').val();
  console.log(value_id);
  $.ajax({
    url: '/products/get_tags/' + value_id,
    data: { category_id: $('#product_category_id').val() },
    dataType: 'script'
  })
}

