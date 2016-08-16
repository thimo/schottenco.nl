// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
// require jquery.ui.sortable
//= require modernizr
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.nl.js
// require bootstrap3-typeahead.min
// require bootstrap3-autocomplete-input.min
//= require turbolinks
//= require jquery.autosize
// require jquery.Jcrop
// require bootstrap-toggle
//= require_tree .

$(document).ready(function(){
  $('textarea').autosize();
  
  if ($('.has-error').length > 0) {
    var fieldTypes = ".has-error input[type=text], .has-error input[type=email], .has-error input[type=number], .has-error textarea";
    $(fieldTypes).first().focus().select();
  } else {
    var fieldTypes = "form input[type=text], form input[type=email], form input[type=number], form input[type=url], form textarea";
    $(fieldTypes).filter("[data-provide!=datepicker]").first().focus().select();
  }

  App.init();
});
