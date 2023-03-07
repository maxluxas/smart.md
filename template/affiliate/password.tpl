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
            <div class="admin-panel" style="">
                <style>
				.dashboard-content {float: left;width: 50%;text-align: left;margin-bottom: 60px;}
				.statistic {width: 50%;float: right;}
				.aff_menu {background: #ededed;width: 100%; height:40px; font-weight:bold;}
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
				input {float: right;margin-right: 30px;margin-top: -9px;}
				select {float: right;margin-right: 30px;margin-top: -9px;}
				input[disabled] {background: #666;color: #ccc !important;cursor: default !important; opacity:0.7;}
				input[disabled]:hover {background: #666;color: #ccc !important;cursor: default !important; opacity:0.7;}
				.credit-button_input {background: #ffcc33;color: #000 !important;font-family: Arial !important;font-size: 18px !important;text-transform: uppercase;}
	   			.credit-button_input:hover {background-color: #333;color:#ffcc33 !important;font-size: 18px !important;text-transform: uppercase;}
				.left-form-content {margin-top:40px;}
				.aff_menu a {color:#999;}
				.aff_menu .selected {color:#000;}
				.aff_menu a:hover {color:#000;}
				</style>

                    <ul class="aff_menu">
                    <a href="<?php echo $account; ?>"><li class="aff_menu_li"><?php echo $text_my_account; ?></li></a>
                    <a href="<?php echo $edit; ?>"><li class="aff_menu_li"><?php echo $text_edit; ?></li></a>
                    <li class="aff_menu_li selected"><?php echo $text_password; ?></li>
                    <a href="<?php echo $payment; ?>"><li class="aff_menu_li"><?php echo $text_payment; ?></li></a>

                    <a href="<?php echo $tracking; ?>"><li class="aff_menu_li"><?php echo $text_tracking; ?></li></a>
                    <a href="<?php echo $history; ?>"><li class="aff_menu_li"><?php echo $text_history; ?></li></a>
                    <a href="<?php echo $help_page; ?>"><li class="aff_menu_li"><?php echo $text_help; ?></li></a>
                    <!--li class="aff_menu_li"><a href="<?php echo $transaction; ?>">FAQ</a></li-->
                    <a href="<?php echo $logout; ?>"><li class="aff_menu_li" style="float: right;"><b style="color:#000;"><?php echo $text_logout; ?></b></li></a>
                    </ul>
                </div>
        	<div class="account-page">
                <div class="form-content">
                    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                    <div class="left-form-content">
                        <!-- START -->
                        <div class="gpu_box_form">
                            <p class="title"><b><?php echo $text_password; ?></b></p>
                            <div class="gpu_form">
                                <p></p>
                                <div><span class="required">* </span><?php echo $entry_password; ?><input type="password" name="password" id="password" value="<?php echo $password; ?>" /></div>
                                <?php if ($error_password) { ?><span class="error"><?php echo $error_password; ?></span><?php } ?>
                            </div>
                            <div class="gpu_form">
                                <p></p>
                                <div><span class="required">* </span><?php echo $entry_confirm; ?><input type="password" name="confirm" id="confirm" value="<?php echo $confirm; ?>" /></div>
                                <?php if ($error_confirm) { ?><span class="error"><?php echo $error_confirm; ?></span><?php } ?>
                            </div>
                            <div class="buttons">
                                <div class="left" style="margin-top: 35px;float: right;"><input type="submit" value="<?php echo $button_continue; ?>" id="credit-button_input" class="credit-button_input" /></div>
                                
                            </div>
                        </div>
                       
                        <!-- END -->
                    </div>
                    <div class="right-form-content" style="padding-top: 70px;">
                        <!-- START -->
						<?php echo $text_info; ?>
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
<?php echo $footer; ?>