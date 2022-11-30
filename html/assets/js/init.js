$(document).ready(function(){
  // LUA listener
  window.addEventListener('message', function( event ) {
    if (event.data.action == 'openBadge') {
      var type        = event.data.type;
      var userData    = event.data.array['user'][0];
      var nr          = event.data.array['namerank'];
	  
		//$('img').show();
		$('#name').css('color', '#FFFFFF');


		$('#name').text(userData.firstname + ' ' + userData.lastname);
		$('#namerank').text(nr);
		
		$('#id-card').css('background', 'url(assets/images/' + type + '.png)');

		$('#id-card').show();
    } else if (event.data.action == 'closeBadge') {
      $('#name').text('');
      $('#namerank').text('');
      $('#id-card').hide();
      $('#licenses').html('');
    }
  });
});
