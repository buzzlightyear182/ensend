jQuery(window).on('load',  function() {
				new JCaption('img.caption');
			});
jQuery(document).ready(function() {	
  	jQuery('#register-modal').on('hidden.bs.modal', function () {    	
        jQuery('#reg-status').html('');
	   	jQuery('#regEmail').val('');
		jQuery('#regPassword').val('');
  	});
});
(function ($) {		
	$(document).on('click', '#register-btn', function () {
		$('#register-modal').modal({
        	show: true
    	});
		$('#register-btn i.fa').removeClass('fa-angle-double-right').addClass('fa-spinner fa-spin');	
		$('#reg-status').html('');
		var email   = $('#regEmail').val(),
			pass = $('#regPassword').val(),
			request = {
					'option' : 'com_ajax',
					'module' : 'register',
					'email'  : email,
					'pass'   : pass,
					'format' : 'raw'
				};
		$.ajax({
			type   : 'POST',
			data   : request,
			success: function (response) {
				resp = jQuery.parseJSON(response);				
				$('#register-btn i.fa').removeClass('fa-spinner fa-spin').addClass('fa-angle-double-right');
				
				if(resp.success == '0')//error
				{
					$('#reg-status').addClass(resp.class)
					$('#reg-status').removeClass('hide').html(resp.message);
				}
				else //success
				{					
					$('#regEmail').val('');
					$('#regPassword').val('');
					$('#register-modal').modal('hide');
					$('#thankyou-modal').modal('show')
				}				
			}
		});
		return false;
	});
})(jQuery)