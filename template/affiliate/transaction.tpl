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
				.aff_menu {background: #ededed;width: 100%; height:40px;}
				.aff_menu_li {width: auto;border-right: 1px solid #fff;height: 32px;padding-top: 10px;padding-left: 10px;display: block;float: left;padding-right: 10px; cursor:pointer;}
				.selected {background:#ffcc33; color:#000 !important;}
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
                    <a href="<?php echo $history; ?>"><li class="aff_menu_li selected"><?php echo $text_history; ?></li></a>
                    <a href="<?php echo $help_page; ?>"><li class="aff_menu_li"><?php echo $text_help; ?></li></a>
                    <!--li class="aff_menu_li"><a href="<?php echo $transaction; ?>">FAQ</a></li-->
                    <a href="<?php echo $logout; ?>"><li class="aff_menu_li" style="float: right;"><b style="color:#000;"><?php echo $text_logout; ?></b></li></a>
                    </ul>
                </div>
            </div>
            <!-- END ACCOUNT PAGE --> 
            <!-- START ACCOUNT PAGE -->
        	<div class="account-page">
                <div class="transaction-info">
                    <div class="info-form-content"><p><?php echo $text_balance; ?> <?php echo $balance; ?></p></div>
                    <table class="list">
                    <thead>
                      <tr>
                        <td class="left"><?php echo $column_date_added; ?></td>
                        <td class="left"><?php echo $column_description; ?></td>
                        <td class="right"><?php echo $column_amount; ?></td>
                      </tr>
                    </thead>
                    <tbody>
                      <?php if ($transactions) { ?>
                      <?php foreach ($transactions  as $transaction) { ?>
                      <tr>
                        <td class="left"><?php echo $transaction['date_added']; ?></td>
                        <td class="left"><?php echo $transaction['description']; ?></td>
                        <td class="right"><?php echo $transaction['amount']; ?></td>
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
                    <div class="buttons">
                        <div class="right"><a href="<?php echo $continue; ?>" class="button"><i class="icon-share-alt"></i><?php echo $button_continue; ?></a></div>
                    </div>
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