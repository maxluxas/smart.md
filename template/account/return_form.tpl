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
        	<div class="account-page">
                <div class="form-content">
                    <div class="info-form-content"><?php echo $text_description; ?></div>
                    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                    <div class="left-form-content" style="width: 400px;">
                        <!-- START -->
                        <div class="gpu_box_form">
                            <p class="title"><b><?php echo $text_order; ?></b></p>
                            <div class="gpu_form">
                                <p><?php echo $entry_firstname; ?></p>
                                <div><input type="text" name="firstname" value="<?php echo $firstname; ?>" /></div>
                            </div>
                            <div class="gpu_form">
                                <p><?php echo $entry_lastname; ?></p>
                                <div><input type="text" name="lastname" value="<?php echo $lastname; ?>" /></div>
                            </div>
                            <div class="gpu_form">
                                <p><?php echo $entry_email; ?></p>
                                <div><input type="text" name="email" value="<?php echo $email; ?>" /></div>
                            </div>
                            <div class="gpu_form">
                                <p><span class="required">* </span><?php echo $entry_telephone; ?></p>
                                <div><input type="text" name="telephone" value="<?php echo $telephone; ?>" /></div>
                                <?php if ($error_telephone) { ?><span class="error"><?php echo $error_telephone; ?></span><?php } ?>
                            </div>
                        </div>
                        <!-- END -->
                    </div>
                    <div class="right-form-content">
                        <!-- START -->
                        <div class="gpu_box_form">
                            <p class="title"><b><?php echo $text_product; ?></b></p>
                            <div class="gpu_form">
                                <p><?php echo $entry_date_ordered; ?></p>
                                <div><input type="text" name="date_ordered" value="<?php echo $date_ordered; ?>" class="date" /></div>
                            </div>
                            <div id="return-product">
                            <div class="gpu_form">
                                <p><span class="required">* </span><?php echo $entry_product; ?></p>
                                <div><input type="text" name="product" value="<?php echo $product; ?>" /></div>
                                <?php if ($error_product) { ?><span class="error"><?php echo $error_product; ?></span><?php } ?>
                            </div>
                            <div class="gpu_form">
                                <p><?php echo $entry_fault_detail; ?></p>
                                <div><textarea name="comment" style="width:277px;"><?php echo $comment; ?></textarea></div>
                            </div>
                            <div class="gpu_form">
                                <p><span class="required">* </span><?php echo $entry_captcha; ?></p>
                                <div><input type="text" style="width: 100px !important;min-width: 100px;" name="captcha" value="<?php echo $captcha; ?>" />
                                <img src="index.php?route=account/return/captcha" alt="" style="margin-left: 25px;position: absolute;" /></div>
                                <?php if ($error_captcha) { ?><span class="error"><?php echo $error_captcha; ?></span><?php } ?>
                            </div>
                            </div>
                        </div>
                        <!-- END -->
                    </div>
                    
               
                    <div class="buttons">
                      <div class="right">
                          <input type="submit" value="<?php echo $button_continue; ?>" style="margin-right: 191px;margin-top: 30px;" class="button but_yellow" />
                      </div>
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
$(document).ready(function() {
	$('.date').datepicker({dateFormat: 'dd-mm-yy'});
});
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