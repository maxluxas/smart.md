<?php echo $header; ?>
<div class="container-top">
    <div class="gpc">
    	<!-- START CONTENT TOP -->
        <div class="content-top">
            <!-- START BREADCRUMB -->
            <h1 class="page_title"><?php echo $heading_title; ?></h1>
            
            <!-- END BREADCRUMB -->
        </div>
        <!-- END CONTENT TOP -->
    </div>
</div>
<div class="container-bottom">
    <div class="gpc">
    	<?php echo $column_left; ?>
<style>.gpu_form div {font-size:16px;}.title b {font-size: 20px;font-weight: normal;}.credit-button_input {margin-top: 10px;margin-right: 142px;background: #ffcc33;color: #000 !important;font-family: Arial !important;font-size: 18px !important;text-transform: uppercase;width: 223px !important;}.credit-button_input:hover {background-color: #333;color:#ffcc33 !important;font-size: 18px !important;}
</style>          
        <!-- START COLUMN CENTER -->
        <div class="column-center">
            <div class="page_notification">
                <?php if ($error_warning) { ?>
                <div class="warning"><i class="icon-warning-sign info_icon"></i><?php echo $error_warning; ?></div>
                <?php } ?>
            </div>
            <?php echo $content_top; ?> 
            <!-- START ACCOUNT PAGE -->
        	<div class="account-page">
                <div class="form-content register-form-box">
                    <div class="info-form-content">
                        <p><?php echo $text_account_already; ?></p>
                        <p><?php echo $text_signup; ?></p>
                    </div>
                    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                    <div class="left-form-content">
                        <!-- START -->
                        <div class="gpu_box_form">
                            <p class="title"><b><?php echo $text_your_details; ?></b></p>
                            <div class="gpu_form">
                             
                                <div><span class="required">* </span><?php echo $entry_firstname; ?> 
                                <input type="text" style="float: right;margin-right: 30px;margin-top: -8px;" name="firstname" value="<?php echo $firstname; ?>" /></div>
                                <?php if ($error_firstname) { ?><span class="error"><?php echo $error_firstname; ?></span><?php } ?>
                            </div>
                            <div class="gpu_form">
                               
                                <div><span class="required">* </span><?php echo $entry_lastname; ?> 
                                <input type="text" style="float: right;margin-right: 30px;margin-top: -8px;" name="lastname" value="<?php echo $lastname; ?>" /></div>
                                <?php if ($error_lastname) { ?><span class="error"><?php echo $error_lastname; ?></span><?php } ?>
                            </div>
                            <div class="gpu_form">
                                
                                <div><span class="required">* </span><?php echo $entry_email; ?>
                                <input type="text" style="float: right;margin-right: 30px;margin-top: -8px;" name="email" value="<?php echo $email; ?>" /></div>
                                <?php if ($error_email) { ?><span class="error"><?php echo $error_email; ?></span><?php } ?>
                            </div>
                            <div class="gpu_form">
                               
                                <div><span class="required">* </span><?php echo $entry_telephone; ?>
                                <input type="text" style="float: right;margin-right: 30px;margin-top: -8px;" name="telephone" value="<?php echo $telephone; ?>" /></div>
                                <?php if ($error_telephone) { ?><span class="error"><?php echo $error_telephone; ?></span><?php } ?>
                            </div>
                            <div class="gpu_form" style="display:none">
                                
                                <div><?php echo $entry_fax; ?>
                                <input type="text" style="float: right;margin-right: 30px;margin-top: -8px;" name="fax" value="<?php echo $fax; ?>" /></div>
                            </div>
                            <p class="title"><b><?php echo $text_your_password; ?></b></p>
                            <div class="gpu_form">
                                
                                <div><span class="required">* </span><?php echo $entry_password; ?>
                                <input style="float: right;margin-right: 30px;margin-top: -8px;" type="password" name="password" value="<?php echo $password; ?>" /></div>
                                <?php if ($error_password) { ?><span class="error"><?php echo $error_password; ?></span><?php } ?>
                            </div>
                            <div class="gpu_form">
                               
                                <div><span class="required">* </span><?php echo $entry_confirm; ?>
                                <input style="float: right;margin-right: 30px;margin-top: -8px;" type="password" name="confirm" value="<?php echo $confirm; ?>" /></div>
                                <?php if ($error_confirm) { ?><span class="error"><?php echo $error_confirm; ?></span><?php } ?>
                            </div>
                            <p class="title"><b><?php echo $text_payment; ?></b></p>
                            <div class="gpu_form" style="display:none">
                                
                                <div><?php echo $entry_tax; ?>
                                <input type="text" style="float: right;margin-right: 30px;margin-top: -8px;" name="tax" value="<?php echo $tax; ?>" /></div>
                            </div>
                            <div class="gpu_form">
                                
                                <div>
                                <?php echo $entry_payment; ?>
                                    <?php if ($payment == 'cheque') { ?>
									<input type="radio" name="payment" value="cheque" id="cheque" checked="checked" />
                                    <label for="cheque"> <?php echo $text_cheque; ?></label>
                                    <?php } else { ?>
									<input type="radio" name="payment" value="cheque" id="cheque" />
                                    <label for="cheque"> <?php echo $text_cheque; ?></label>
                                    <?php } ?>
                                    <?php if ($payment == 'paypal') { ?>
									<input type="radio" name="payment" value="paypal" id="paypal" checked="checked" />
                                    <label for="paypal"> <?php echo $text_paypal; ?></label>
                                    <?php } else { ?>
									<input type="radio" name="payment" value="paypal" id="paypal" />
                                    <label for="paypal" style="display:none"> <?php echo $text_paypal; ?></label>
                                    <?php } ?>
                                    <?php if ($payment == 'bank') { ?>
									<input type="radio" name="payment" value="bank" id="bank" checked="checked" />
                                    <label for="bank"> <?php echo $text_bank; ?></label>
                                    <?php } else { ?>
									<input type="radio" name="payment" value="bank" id="bank" />
                                    <label for="bank"> <?php echo $text_bank; ?></label>
                                    <?php } ?>
                                </div>
                            </div>
                            <div id="payment-cheque" class="payment">
                                <div class="gpu_form">
                                 
                                    <div><?php echo $entry_cheque; ?>
                                    <input type="text" style="float: right;margin-right: 30px;margin-top: -8px;" name="cheque" value="<?php echo $cheque; ?>" /></div>
                                </div>
                            </div>
                            <div id="payment-paypal" class="payment">
                                <div class="gpu_form">
                                   
                                    <div><?php echo $entry_paypal; ?>
                                    <input type="text" style="float: right;margin-right: 30px;margin-top: -8px;" name="paypal" value="<?php echo $paypal; ?>" /></div>
                                </div>
                            </div>
                            <div id="payment-bank" class="payment">
                                <div class="gpu_form">
                                   
                                    <div><?php echo $entry_bank_name; ?>
                                    <input type="text" style="float: right;margin-right: 30px;margin-top: -8px;" name="bank_name" value="<?php echo $bank_name; ?>" /></div>
                                </div>
                                <div class="gpu_form" style="display:none;">
                                   
                                    <div><?php echo $entry_bank_branch_number; ?>
                                    <input type="text" style="float: right;margin-right: 30px;margin-top: -8px;" name="bank_branch_number" value="<?php echo $bank_branch_number; ?>" /></div>
                                </div>
                                <div class="gpu_form">
        
                                    <div><?php echo $entry_bank_swift_code; ?>
                                    <input type="text" style="float: right;margin-right: 30px;margin-top: -8px;" name="bank_swift_code" value="<?php echo $bank_swift_code; ?>" /></div>
                                </div>
                                <div class="gpu_form">
                            
                                    <div><?php echo $entry_bank_account_name; ?>
                                    <input type="text" style="float: right;margin-right: 30px;margin-top: -8px;" name="bank_account_name" value="<?php echo $bank_account_name; ?>" /></div>
                                </div>
                                <div class="gpu_form">
                            
                                    <div><?php echo $entry_bank_account_number; ?>
                                    <input type="text" style="float: right;margin-right: 30px;margin-top: -8px;" name="bank_account_number" value="<?php echo $bank_account_number; ?>" /></div>
                                </div>
                            </div>
                        </div>
                        <!-- END -->
                    </div>
                    <div class="right-form-content">
                        <!-- START -->
                        <div class="gpu_box_form">
                            <p class="title"><b><?php echo $text_your_address; ?></b></p>
                            <div class="gpu_form">
                                
                                <div><?php echo $entry_company; ?>
                                <input type="text"  style="float: right;margin-right: 140px;margin-top: -8px;" name="company" value="<?php echo $company; ?>" /></div>
                            </div>
                            <div class="gpu_form">
                                
                                <div><?php echo $entry_website; ?>
                                <input type="text"  style="float: right;margin-right: 140px;margin-top: -8px;" name="website" value="<?php echo $website; ?>" /></div>
                            </div>
                            <div class="gpu_form">
                                
                                <div><span class="required">* </span><?php echo $entry_address_1; ?>
                                <input type="text"  style="float: right;margin-right: 140px;margin-top: -8px;" name="address_1" value="<?php echo $address_1; ?>" /></div>
                                <?php if ($error_address_1) { ?><span class="error"><?php echo $error_address_1; ?></span><?php } ?>
                            </div>
                            <div class="gpu_form" style="display:none">
                                
                                <div><?php echo $entry_address_2; ?>
                                <input type="text"  style="float: right;margin-right: 140px;margin-top: -8px;" name="address_2" value="<?php echo $address_2; ?>" /></div>
                            </div>
                            <div class="gpu_form">
                                
                                <div><span class="required">* </span><?php echo $entry_city; ?>
                                <input type="text"  style="float: right;margin-right: 140px;margin-top: -8px;" name="city" value="<?php echo $city; ?>" /></div>
                                <?php if ($error_city) { ?><span class="error"><?php echo $error_city; ?></span><?php } ?>
                            </div>
                            <div class="gpu_form" style="display:none">
                                
                                <div><span id="postcode-required" class="required">* </span><?php echo $entry_postcode; ?>
                                <input type="text"  style="float: right;margin-right: 140px;margin-top: -8px;" name="postcode" value="<?php echo $postcode; ?>" /></div>
                                <?php if ($error_postcode) { ?><span class="error"><?php echo $error_postcode; ?></span><?php } ?>
                            </div>
                            <div class="gpu_form">
                                
                                <div>
                                <span class="required">* </span><?php echo $entry_country; ?>
                                    <select style="float: right;margin-right: 140px;margin-top: -8px;" name="country_id">
                                        <option value=""><?php echo $text_select; ?></option>
                                        <?php foreach ($countries as $country) { ?>
                                        <?php if ($country['country_id'] == $country_id) { ?>
                                        <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                                        <?php } else { ?>
                                        <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                                        <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                                <?php if ($error_country) { ?><span class="error"><?php echo $error_country; ?></span><?php } ?>
                            </div>
                            <div class="gpu_form">
                                
                                <div><span class="required">* </span><?php echo $entry_zone; ?>
                                <select name="zone_id" style="float: right;margin-right: 140px;margin-top: -8px;"></select> </div>
                                <?php if ($error_zone) { ?><span class="error"><?php echo $error_zone; ?></span><?php } ?>
                            </div>
                        </div>
                  
                    <div class="center">
                           
                            <input type="submit" value="<?php echo $button_continue; ?>" class="credit-button_input" />
                        </div>

                        <!-- END -->
                    </div>

                    </form>
                </div>
            </div>
            <!-- END ACCOUNT PAGE -->
        </div>
        <!-- END COLUMN CENTER -->
    	<!-- START CONTENT BOTTOM -->
        <div class="content-bottom">
            <?php echo $content_bottom; ?>
        </div>
        <!-- END CONTENT BOTTOM -->
    </div>
</div>
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=affiliate/register/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait"><i class="icon-spinner icon-spin"></i></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<script type="text/javascript"><!--
$('input[name=\'payment\']').bind('change', function() {
	$('.payment').hide();
	
	$('#payment-' + this.value).show();
});

$('input[name=\'payment\']:checked').trigger('change');
//--></script> 
<script type="text/javascript"><!--
$('.colorbox').colorbox({
	overlayClose: true,
	opacity: 0.5,
	width: 640,
	height: 480
});
//--></script> 
<?php echo $footer; ?>