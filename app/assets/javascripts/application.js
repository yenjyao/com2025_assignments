// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require jquery
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require bootstrap
//= require bootstrap-sprockets
//= require_tree .

//Hide the welcome message and shows information message.
$(document).on("turbolinks:load", function(){
  $("#info").hide();
  $("#welcometext").click(function(){
    $("#welcometext").hide(1000);
    $("#info").show(1000);
  });
});

//Filter function
$(document).on("turbolinks:load", function(){
  $("#myInput").on("keyup", function() {

    var value = $(this).val().toLowerCase();
    $("#List tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
