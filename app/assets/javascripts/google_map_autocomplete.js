$(document).ready(function() {
  var space_address = $('#space_address').get(0);

  if (space_address) {
    var autocomplete = new google.maps.places.Autocomplete(space_address, { types: ['geocode'] });
    google.maps.event.addDomListener(space_address, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});

