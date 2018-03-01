function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var meetingAddress = document.getElementById('meeting_address');

    if (meetingAddress) {
      var autocomplete = new google.maps.places.Autocomplete(meetingAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(meetingAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
