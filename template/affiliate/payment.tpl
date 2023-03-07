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
            <?php echo $content_top; ?> 
            <!-- START ACCOUNT PAGE -->
        	<div class="account-page" style="min-height: 0;">
                <div class="admin-panel" style="">
                <style>
				.dashboard-content {float: left;width: 50%;text-align: left;margin-bottom: 60px;}
				.statistic {width: 50%;float: right;}
				.aff_menu {background: #ededed;width: 100%; height:40px; font-weight:bold}
				.aff_menu_li {width: auto;border-right: 1px solid #fff;height: 32px;padding-top: 10px;padding-left: 10px;display: block;float: left;padding-right: 10px; cursor:pointer;}
				.admin-panel ul li a {color: #999;}
				.admin-panel ul .selected {background:#ffcc33;}
				.admin-panel ul .selected a {color:#000 !important; }				td {font-size: 16px;}
				td {font-size: 16px;}
				table.list {line-height: 30px;}
				table.list .left {padding-left: 20px;}
				table.list .right {border-right:none; text-align:center;}
				table.list .left:last {border-bottom:2px solid #ccc;}
				table.list .right:last {border-bottom:2px solid #ccc;}
				table.list > thead > tr > td { font-weight:bold;}
				input[type="text"] {float: right;margin-right: 30px;margin-top: -9px;}
				input[type="radio"] {float: left;margin-top: 2px;margin-right: 8px;}
				select {float: right;margin-right: 30px;margin-top: -9px;}
				.credit-button_input {background: #ffcc33;color: #000 !important;font-family: Arial !important;font-size: 18px !important;text-transform: uppercase;}
	   			.credit-button_input:hover {background-color: #333;color:#ffcc33 !important;font-size: 18px !important;text-transform: uppercase;}
				.gpu_form p {float: left;}
				.aff_menu a {color:#999;}
				.aff_menu .selected {color:#000;}
				.aff_menu a:hover {color:#000;}
				</style>

                    <ul class="aff_menu">
                    <a href="<?php echo $account; ?>"><li class="aff_menu_li"><?php echo $text_my_account; ?></li></a>
                    <a href="<?php echo $edit; ?>"><li class="aff_menu_li"><?php echo $text_edit; ?></li></a>
                    <a href="<?php echo $password; ?>"><li class="aff_menu_li"><?php echo $text_password; ?></li></a>
                    <li class="aff_menu_li selected"><?php echo $text_payment; ?></li>

                    <a href="<?php echo $tracking; ?>"><li class="aff_menu_li"><?php echo $text_tracking; ?></li></a>
                    <a href="<?php echo $history; ?>"><li class="aff_menu_li"><?php echo $text_history; ?></li></a>
                    <a href="<?php echo $help_page; ?>"><li class="aff_menu_li"><?php echo $text_help; ?></li></a>
                    <!--li class="aff_menu_li"><a href="<?php echo $transaction; ?>">FAQ</a></li-->
                    <a href="<?php echo $logout; ?>"><li class="aff_menu_li" style="float: right;"><b style="color:#000;"><?php echo $text_logout; ?></b></li></a>
                    </ul>
                </div>

                <div class="form-content">
                    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                    <div class="left-form-content" style="width: 615px;">
                        <!-- START -->
                        <div class="gpu_box_form">
                            <p class="title"><b><?php echo $text_your_payment; ?></b></p>
                            
                            <div class="gpu_form">
                                <p><?php echo $entry_payment; ?></p>
                                <div style="float: right;width: auto;margin-bottom: 25px;">
                                
                                <div style="float: left;margin-right: 35px;">
                                    <?php if ($payment == 'cheque') { ?>
                                    <input type="radio" name="payment" value="cheque" id="cheque" checked="checked" /><label for="cheque"> <?php echo $text_cheque; ?></label>
                                    <?php } else { ?>
                                    <input type="radio" name="payment" value="cheque" id="cheque" /><label for="cheque"> <?php echo $text_cheque; ?></label>
                                    <?php } ?>
                                </div>
                                <div style="float: left;margin-right: 35px;">
                                    <?php if ($payment == 'bank') { ?>
                                    <input type="radio" name="payment" value="bank" id="bank" checked="checked" /> <label for="bank"><?php echo $text_bank; ?></label>
                                    <?php } else { ?>
                                    <input type="radio" name="payment" value="bank" id="bank" /><label for="bank"> <?php echo $text_bank; ?></label>
                                    <?php } ?>
                                </div>
                                </div>
                            </div>
                            <div class="gpu_form" style="display:none">
                                <p><?php echo $entry_tax; ?></p>
                                <div><input type="text" name="tax" value="<?php echo $tax; ?>" /></div>
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
                                <div class="gpu_form" style="display:none">
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
                        </div>
                        <!-- END -->
                    </div>
                    <div class="right-form-content" style="margin-left:640px;margin-top:40px;">
                   <?php echo $text_payment_info; ?>
                    </div>
                    <div class="buttons" style="margin-top: 15px;
float: left;
margin-left: 45px;">
                        <div class="left" style="margin-top: 30px;margin-left: 400px;"><input type="submit" value="<?php echo $button_continue; ?>" class="credit-button_input" /></div>
                       
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