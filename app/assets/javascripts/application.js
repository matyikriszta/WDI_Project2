// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require fancybox
//= require jquery_ujs
//= require jquery.ui.autocomplete
//= require jquery.ui.slider
//= require best_in_place
//= require fancybox
//= require_tree .

$(function() {
  $('#user_interest_list, #interest_list').tokenfield({
    autocomplete: {
      source: function( request, response ) {
        $.ajax({
          url: "/tags",
          dataType: "json",
          data: {
            q: request.term
          },
          success: function( data ) {
            response(data);
          }
        });
      },
      delay: 100
    },
    showAutocompleteOnFocus: false
  })

  var distance = $('#distance').val() || 10;
  $('#distance').val( distance );
  $( ".distance" ).text( distance );



  $( "#distance_slider" ).slider({
    value: distance,
    min: 1,
    max: 50,
    slide: function( event, ui ) {
      $( "#distance" ).val( ui.value );
      $( ".distance" ).text( ui.value );

    }
  });

  var age_from = $('#age_from').val() || 25;
  var age_to = $('#age_to').val() || 35;
  $('#age_from').val(age_from);
  $('#age_to').val(age_to);
  $( '.from' ).text( age_from );
  $( '.to' ).text( age_to );            


  $( "#age_slider" ).slider({
    range: true,
    values: [age_from, age_to],
    min: 18,
    max: 75,
    slide: function( event, ui ) {
      $( "#age_from" ).val( ui.values[ 0 ] );
      $( "#age_to" ).val( ui.values[ 1 ] );
      $( ".from" ).text( ui.values[ 0 ] );
      $( ".to" ).text( ui.values[ 1 ] );            
    }
  });

  $(".best_in_place").best_in_place();

  $('#upload_image').replaceWith('<a href=#image_form rel="leanModal" class="button">Upload Image</a>')
  $('#send_message').replaceWith('<a href=#message_form rel="leanModal" class="button">Send Message</a>')

  $("a[rel=leanModal]").leanModal();
  $(".fancybox").fancybox();

})

