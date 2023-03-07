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

        <!-- START COLUMN CENTER -->
        <div class="column-center">
            <div class="page_notification">
                <?php if ($error_warning) { ?>
                <div class="warning"><i class="icon-warning-sign info_icon"></i><?php echo $error_warning; ?></div>
                <?php } ?>
            </div>
            <?php echo $content_top; ?> 
            <!-- START ACCOUNT PAGE -->
            <div class="admin-panel" style="">
                <style>
				.dashboard-content {float: left;width: 50%;text-align: left;margin-bottom: 60px;}
				.statistic {width: 50%;float: right;}
				.aff_menu {background: #ededed;width: 100%; height:40px; font-weight:bold;}
				.aff_menu_li {width: auto;border-right: 1px solid #fff;height: 32px;padding-top: 10px;padding-left: 10px;display: block;float: left;padding-right: 10px; cursor:pointer;}
				.admin-panel ul li a {color: #999;}
				.admin-panel ul .selected {background:#ffcc33;}
				.admin-panel ul .selected a {color:#000 !important; }				td {font-size: 16px;}
				table.list {line-height: 30px;}
				table.list .left {padding-left: 20px;}
				table.list .right {border-right:none; text-align:center;}
				table.list .left:last {border-bottom:2px solid #ccc;}
				table.list .right:last {border-bottom:2px solid #ccc;}
				table.list > thead > tr > td { font-weight:bold;}
				input {float: right;margin-right: 30px;margin-top: -9px;}
				select {float: right;margin-right: 30px;margin-top: -9px;}
				.credit-button_input {background: #ffcc33;color: #000 !important;font-family: Arial !important;font-size: 18px !important;text-transform: uppercase;}
	   			.credit-button_input:hover {background-color: #333;color:#ffcc33 !important;font-size: 18px !important;text-transform: uppercase;}
				input[disabled] {background: #666;color: #ccc !important;cursor: default !important; opacity:0.7;}
				input[disabled]:hover {background: #666;color: #ccc !important;cursor: default !important; opacity:0.7;}
.aff_menu a {color:#999;}
				.aff_menu .selected {color:#000;}
				.aff_menu a:hover {color:#000;}
				</style>

                    <ul class="aff_menu">
                    <a href="<?php echo $account; ?>"><li class="aff_menu_li"><?php echo $text_my_account; ?></li></a>
                    <li class="aff_menu_li selected"><?php echo $text_edit; ?></li>
                    <a href="<?php echo $password; ?>"><li class="aff_menu_li"><?php echo $text_password; ?></li></a>
                    <a href="<?php echo $payment; ?>"><li class="aff_menu_li"><?php echo $text_payment; ?></li></a>

                    <a href="<?php echo $tracking; ?>"><li class="aff_menu_li"><?php echo $text_tracking; ?></li></a>
                    <a href="<?php echo $history; ?>"><li class="aff_menu_li"><?php echo $text_history; ?></li></a>
                    <a href="<?php echo $help_page; ?>"><li class="aff_menu_li"><?php echo $text_help; ?></li></a>
                    <!--li class="aff_menu_li"><a href="<?php echo $transaction; ?>">FAQ</a></li-->
                    <a href="<?php echo $logout; ?>"><li class="aff_menu_li" style="float: right;"><b style="color:#000;"><?php echo $text_logout; ?></b></li></a>
                    </ul>
                </div>
        	<div class="account-page">
                <div class="form-content" style="margin-top: 40px;">
                    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                    <div class="left-form-content" style="border:none;">
                        <!-- START -->
                        <div class="gpu_box_form">
                            <p class="title" style="font-size:20px;"><?php echo $text_your_details; ?></p>
                            <div class="gpu_form">
                                
                                <div><span class="required">* </span><?php echo $entry_firstname; ?> <input type="text" name="firstname" id="firstname" value="<?php echo $firstname; ?>" /></div>
                                <?php if ($error_firstname) { ?><span class="error"><?php echo $error_firstname; ?></span><?php } ?>
                            </div>
                            <div class="gpu_form">
                                
                                <div><span class="required">* </span><?php echo $entry_lastname; ?><input type="text" name="lastname" id="lastname" value="<?php echo $lastname; ?>" /></div>
                                <?php if ($error_lastname) { ?><span class="error"><?php echo $error_lastname; ?></span><?php } ?>
                            </div>
                            <div class="gpu_form">
                                
                                <div><span class="required">* </span><?php echo $entry_email; ?><input type="text" name="email" id="email" value="<?php echo $email; ?>" /></div>
                                <?php if ($error_email) { ?><span class="error"><?php echo $error_email; ?></span><?php } ?>
                            </div>
                            <div class="gpu_form">
                                
                                <div><span class="required">* </span><?php echo $entry_telephone; ?><input type="text" name="telephone" id="telephone" value="<?php echo $telephone; ?>" /></div>
                                <?php if ($error_telephone) { ?><span class="error"><?php echo $error_telephone; ?></span><?php } ?>
                            </div>
                            <div class="gpu_form" style="display:none">
                                
                                <div><?php echo $entry_fax; ?><input type="text" name="fax" id="fax" value="<?php echo $fax; ?>" /></div>
                            </div>
                        </div>
                        <!-- END -->
                    </div>
                    <div class="right-form-content" style="border-left: 1px solid #ededed;margin-left: 470px;padding-left: 30px;">
                        <!-- START -->
                        <div class="gpu_box_form">
                            <p class="title" style="font-size:20px;"><?php echo $text_your_address; ?></p>
                            <div class="gpu_form">
                                
                                <div><?php echo $entry_company; ?><input type="text" name="company" id="company" value="<?php echo $company; ?>" /></div>
                            </div>
                            <div class="gpu_form">
                                
                                <div><?php echo $entry_website; ?><input type="text" name="website" id="website" value="<?php echo $website; ?>" /></div>
                            </div>
                            <div class="gpu_form">
                                
                                <div><span class="required">* </span><?php echo $entry_address_1; ?><input type="text" name="address_1" id="address_1" value="<?php echo $address_1; ?>" /></div>
                                <?php if ($error_address_1) { ?><span class="error"><?php echo $error_address_1; ?></span><?php } ?>
                            </div>
                            <div class="gpu_form" style="display:none">
                                <p><?php echo $entry_address_2; ?></p>
                                <div><input type="text" name="address_2" value="<?php echo $address_2; ?>" /></div>
                            </div>
                            <div class="gpu_form">
                                
                                <div><span class="required">* </span><?php echo $entry_city; ?><input type="text" name="city" id="city" value="<?php echo $city; ?>" /></div>
                                <?php if ($error_city) { ?><span class="error"><?php echo $error_city; ?></span><?php } ?>
                            </div>
                            <div class="gpu_form" style="display:none">
                                
                                <div><span id="postcode-required" class="required">* </span><?php echo $entry_postcode; ?><input type="text" name="postcode" id="postcode" value="<?php echo $postcode; ?>" /></div>
                                <?php if ($error_postcode) { ?><span class="error"><?php echo $error_postcode; ?></span><?php } ?>
                            </div>
                            <div class="gpu_form">
                                
                                <div><span class="required">* </span><?php echo $entry_country; ?>
                                    <select name="country_id" id="country_id">
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
                                
                                <div><span class="required">* </span><?php echo $entry_zone; ?><select name="zone_id" id="zone_id"></select> </div>
                                <?php if ($error_zone) { ?><span class="error"><?php echo $error_zone; ?></span><?php } ?>
                            </div>
                        </div>
                        <!-- END -->
                    </div>
                   
                        <div style="margin-top:40px;"><input type="submit" value="<?php echo $button_continue; ?>" class="credit-button_input"style="float: left;margin-left: 380px;width: 200px !important;" /></div>

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
		url: 'index.php?route=affiliate/edit/country&country_id=' + this.value,
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
<?php echo $footer; ?>