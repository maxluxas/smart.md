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
                <?php if ($success) { ?>
                <div class="success"><i class="icon-ok info_icon"></i><?php echo $success; ?></div>
                <?php } ?>
            </div>
            <?php echo $content_top; ?> 
            <!-- START ACCOUNT PAGE -->
        	<div class="account-page" style="min-height: 0;">
                <div class="admin-panel" style="">
                <style>
				.dashboard-content {float: left;width: 50%;text-align: left;margin-bottom: 60px;}
				.statistic {width: 50%;float: right;}
				.admin-panel ul li a {color: #999;}
				.admin-panel ul .selected {background:#ffcc33;}
				.admin-panel ul .selected a {color:#000 !important; }
				.aff_menu {background: #ededed;width: 100%; height:40px; color:#999;font-weight:bold;}
				.aff_menu_li {width: auto;border-right: 1px solid #fff;height: 32px;padding-top: 10px;padding-left: 10px;display: block;float: left;padding-right: 10px; cursor:pointer;}
				td {font-size: 16px;}
				table.list {line-height: 30px;}
				table.list .left {padding-left: 20px;}
				table.list .right {border-right:none; text-align:center;}
				table.list .left:last {border-bottom:2px solid #ccc;}
				table.list .right:last {border-bottom:2px solid #ccc;}
				table.list > thead > tr > td { font-weight:bold;}
				.gpu_form {padding-left: 20px;}
				.disabled {background-color: #333; color:#ccc;}
				.credit-button_input {background: #ffcc33;color: #000 !important;font-family: Arial !important;font-size: 18px !important;text-transform: uppercase;}
	   			.credit-button_input:hover {background-color: #333;color:#ffcc33 !important;font-size: 18px !important;text-transform: uppercase;}
				.block {display:block !important;}
				.error_balance {margin-right: 30px;margin-top: 6px;color: #ff0000;}
				.aff_menu a {color:#999;}
				.aff_menu .selected {color:#000;}
				.aff_menu a:hover {color:#000;}
				</style>

                    <ul class="aff_menu">
                    <a href="<?php echo $account; ?>"><li class="aff_menu_li"><?php echo $text_my_account; ?></li></a>
                    <a href="<?php echo $edit; ?>"><li class="aff_menu_li"><?php echo $text_edit; ?></li></a>
                    <a href="<?php echo $password; ?>"><li class="aff_menu_li"><?php echo $text_password; ?></li></a>
                    <a href="<?php echo $payment; ?>"><li class="aff_menu_li"><?php echo $text_payment; ?></li></a>

                    <a href="<?php echo $tracking; ?>"><li class="aff_menu_li"><?php echo $text_tracking; ?></li></a>
                    <li class="aff_menu_li selected"><?php echo $text_history; ?></li>
                    <a href="<?php echo $help_page; ?>"><li class="aff_menu_li"><?php echo $text_help; ?></li></a>
                    <!--li class="aff_menu_li"><a href="<?php echo $transaction; ?>">FAQ</a></li-->
                    <a href="<?php echo $logout; ?>"><li class="aff_menu_li" style="float: right;"><b style="color:#000;"><?php echo $text_logout; ?></b></li></a>
                    </ul>
                </div>

                <div class="form-content">
                    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                    <div class="left-form-content" style="width: 300px;">
                        <!-- START -->
                        
                        <div class="gpu_box_form" style="background: #ededed;">
                           <div class="title" style="background: #666;color: #fff;text-align: center;padding-top: 15px;padding-bottom: 15px;margin-bottom: 15px; font-size:20px;"><?php echo $text_your_payment; ?><br /><b style="font-size:24px; color:#ffcc33;"><?php echo $balance; ?> <?php echo $currency; ?></b></div> 
                            
                            <div class="gpu_form">
                                <p><b><?php echo $entry_tax; ?></b></p>
                                <div><input type="text" class="balance" name="available" value="<?php echo $balance; ?>" style="width: 70px;max-width: 100px;min-width: 20px;font-size: 18px;" /> <?php echo $currency; ?>
                                <div class="error_balance" style="display:none;"><?php echo $error_balance; ?></div>
                                </div>
                                <script>
								// save the default value on page load
								var balance = $('.balance').val();
								
								// on submit, compare
							//	if ( $('.balance').val() > balance ) {
							//			$('.credit-button_input').addClass('disabled');
							//	}
								$(".balance").change(function(){
								 if(parseFloat(this.value) > balance || parseFloat(this.value) == 0){
									/*if it is*/
									$('.credit-button_input').addClass('disabled');
									$(".credit-button_input").attr("disabled",true);
									$(".error_balance").addClass('block');
								 } else {
									$('.credit-button_input').removeClass('disabled');
									$(".credit-button_input").attr("disabled",false);
									$(".error_balance").removeClass('block');
								 }
								})
								</script>
                            </div>
                            <div class="gpu_form">
                                <p><b><?php echo $entry_payment; ?></b></p>
                                <div>
                                    <?php if ($payment == 'cheque') { ?>
                                    <label style="float: left;margin-right: 25px;" for="cheque"><input type="radio" name="payment" value="cheque" id="cheque" checked="checked" /> <?php echo $text_cheque; ?></label>
                                    <?php } else { ?>
                                    <label style="float: left;margin-right: 25px;" for="cheque"><input type="radio" name="payment" value="cheque" id="cheque" /> <?php echo $text_cheque; ?></label>
                                    <?php } ?>
                                    <?php if ($payment == 'bank') { ?>
                                    <label for="bank"><input type="radio" name="payment" value="bank" id="bank" checked="checked" /> <?php echo $text_bank; ?></label>
                                    <?php } else { ?>
                                    <label for="bank"><input type="radio" name="payment" value="bank" id="bank" /> <?php echo $text_bank; ?></label>
                                    <?php } ?>
                                </div>
                            </div>
                            <div id="payment-cheque" class="payment">
                                <div class="gpu_form">
                                    <p><?php echo $entry_cheque; ?></p>
                                    <div><input type="text" name="cheque" value="<?php echo $cheque; ?>" /></div>
                                </div>
                            </div>
                            <div id="payment-paypal" class="payment" style="display:none">
                                <div class="gpu_form">
                                    <p><?php echo $entry_paypal; ?></p>
                                    <div><input type="text" name="paypal" value="<?php echo $paypal; ?>" /></div>
                                </div>
                            </div>
                            <div id="payment-bank" class="payment">
                                <div class="gpu_form">
                                    <p><?php echo $entry_bank_name; ?></p>
                                    <div><input type="text" name="bank_name" value="<?php echo $bank_name; ?>" /></div>
                                </div>
                                <div class="gpu_form" style="display:none;">
                                    <p><?php echo $entry_bank_branch_number; ?></p>
                                    <div><input type="text" name="bank_branch_number" value="<?php echo $bank_branch_number; ?>" /></div>
                                </div>
                                <div class="gpu_form">
                                    <p><?php echo $entry_bank_swift_code; ?></p>
                                    <div><input type="text" name="bank_swift_code" value="<?php echo $bank_swift_code; ?>" /></div>
                                </div>
                                <div class="gpu_form">
                                    <p><?php echo $entry_bank_account_name; ?></p>
                                    <div><input type="text" name="bank_account_name" value="<?php echo $bank_account_name; ?>" /></div>
                                </div>
                                <div class="gpu_form">
                                    <p><?php echo $entry_bank_account_number; ?></p>
                                    <div><input type="text" name="bank_account_number" value="<?php echo $bank_account_number; ?>" /></div>
                                </div>
                                
                            </div>
                            	<div class="gpu_form" style="margin-top: 30px;margin-left: -70px;">
                                
                                <input type="submit" value="<?php echo $button_continue; ?>" class="credit-button_input <?php if ($balance == '0') { ?>disabled"  disabled="disabled"<?php } else { ?>"<?php } ?>/>
                                
                                </div>
                                <div class="gpu_form" style="margin-top: 10px;margin-left: 20px;border-top: 1px solid #ccc;width: 255px;padding-left: 0px;padding-top: 10px;">
                                <?php echo $text_info; ?>
                                </div>
                                
                        </div>
                        <!-- END -->
                    </div>
                    <style>
					td {font-size:14px;}
					table.list .right {border-right:none; text-align: left;padding-left: 15px;}
					table.list .left:last {border-bottom:2px solid #ccc;}
					table.list .right:last {border-bottom:2px solid #ccc;}
					table.list .tr_last:last-child {border-bottom:2px solid #ccc;}
					.disabled {background:#666; color:#ccc !important; cursor:default !important;}
					.disabled:hover {background:#666; color:#ccc !important; cursor:default !important;}
					</style>
                    <div class="right-form-content" style="margin-left:340px;margin-top:40px;">
                    <table class="list" style="border: none;">
                    <thead style="border-bottom: 2px solid #ccc;">
                      <tr>
                        <td class="left"><?php echo $column_date_added; ?></td>
                        <td class="left" style="width: 28%;"><?php echo $column_amount; ?> (<?php echo $currency; ?>)</td>
                        <td class="right"><?php echo $column_description; ?></td>
                      </tr>
                    </thead>
                    <tbody>
                      <?php if ($historys) { ?>
                      <?php foreach ($historys  as $history) { ?>
                      <tr class="tr_last">
                        <td class="left"><?php echo $history['date_added']; ?></td>
                        <td style="text-align:center;vertical-align: middle;"><?php echo $history['available']; ?></td>
                        <td class="right">
                        <?php if ($history['status_id'] == '0') { ?><i class="icon-question-sign" style="padding-right: 5px;color:#8bcbf0;font-size: 18px;"></i> <?php echo $status_pending; ?>
                        <?php } elseif ($history['status_id'] == '1') { ?><i class="icon-exclamation-sign" style="color:#a8be6a;padding-right: 5px;font-size: 18px;"></i> <?php echo $status_approved; ?>
                        <?php } else { ?><i class="icon-ok-sign" style="color:#ccc;padding-right: 5px;font-size: 18px;"></i> <?php echo $status_withdraw; ?>
                        <?php } ?>
      
                        <!--?php echo $history['status_description']; ?--> <span style="color: #ccc; font-size:12px;">(<?php echo $history['date_modified']; ?>)</span>
	                         
                        </td>
                      </tr>
                      <?php } ?>
                      <?php } else { ?>
                      <tr>
                        <td class="center" colspan="5"><?php echo $text_empty; ?></td>
                      </tr>
                      <?php } ?>
                    </tbody>
                    </table>
                    <div class="pagination"><?php echo $pagination; ?></div>
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
$('input[name=\'payment\']').bind('change', function() {
	$('.payment').hide();
	
	$('#payment-' + this.value).show();
});

$('input[name=\'payment\']:checked').trigger('change');
//--></script> 
<?php echo $footer; ?>