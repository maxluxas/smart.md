<?php echo $header; ?>
<?php echo $content_top; ?> 
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
<style>.credit-button_input {background: #ffcc33;color: #000 !important;font-family: Arial !important;font-size: 18px !important;text-transform: uppercase;}
	   .credit-button_input:hover {background-color: #333;color:#ffcc33 !important;font-size: 18px !important;text-transform: uppercase;}
	   .credit-button_input2 {background-color: #333;color:#ffcc33 !important;font-size: 18px !important;text-transform: uppercase;height: 35px !important;border: none;border-radius: 4px;float: right;margin-top: -22px;margin-right: 30px;margin-top: 15px;width: 223px !important;}
	   .credit-button_input2:hover {background: #ffcc33;color: #000 !important;font-family: Arial !important;font-size: 18px !important;}
</style>   
        <!-- START COLUMN CENTER -->
        <div class="column-center">
            <div class="page_notification">
                <?php if ($success) { ?>
                <div class="success"><i class="icon-ok info_icon"></i><?php echo $success; ?></div>
                <?php } ?>
                <?php if ($error_warning) { ?>
                <div class="warning"><i class="icon-warning-sign info_icon"></i><?php echo $error_warning; ?></div>
                <?php } ?>
            </div>
            <
            <!-- START ACCOUNT PAGE -->
        	<div class="account-page">
            	<div class="form-content">
                <span style="color: #ffcc33;font-family: CFJackStory;font-size: 26px;"><?php echo $scheme_title; ?></span>
                <img src="image/affiliate/<?php echo $schema_affiliate; ?>" style="margin: 30px 0px;width: 100%;" />
                <br />
                <span style="color: #ffcc33;font-family: CFJackStory;font-size: 26px;"><?php echo $dece_title; ?></span>
                <div style="padding: 5px 0px 25px 0px;background: #ededed;height: 130px;margin: 20px 0px 35px 0px;">
                	<div style="float: left;width: 29%;border-right: 1px solid #ccc;padding: 20px;">
                    	<i class="icon-time" style="position: absolute;font-size: 56px;"></i>
                        <div style="margin-left: 73px;"><?php echo $te_platim; ?></div></div>
                    <div style="float: left;width: 29%;border-right: 1px solid #ccc;padding: 20px;">
                    	<i class="icon-tasks" style="position: absolute;font-size: 56px;"></i>
                        <div style="margin-left: 73px;"><?php echo $statistici; ?></div></div>
                    <div style="float: left;width: 29%;padding: 20px;">
                    	<i class="icon-money" style="position: absolute;font-size: 56px;"></i>
                    	<div style="margin-left: 73px;"><?php echo $unelte; ?></div></div>
                    </div>
                </div>
                <span style="color: #ffcc33;font-family: CFJackStory;font-size: 26px;"><?php echo $aff_partners_title; ?></span> 
                <img src="image/affiliate/aff_partners.jpg" style="margin: 30px 0px;width: 100%;" />
				<br />
				<div style="color: #ffcc33;font-family: CFJackStory;font-size: 26px;"><?php echo $aff_promo_title; ?></div>
				<div style="margin: 0px 80px;">
				<img src="image/affiliate/mai2014/acer/Smart_AcerE1-532_300x250.gif" style="margin: 30px 10px;width: 250px;" />
				<img src="image/affiliate/feb2014/apple/AdWords_iPhone_300x250.gif" style="margin: 30px 10px;width: 250px;" />
				<img src="image/affiliate/mai2014/text_aff_link.jpg" style="margin: 30px 10px;width: 250px;" />
				</div>
            </div>
                
                <div class="form-content">
                    
                    <div class="left-form-content login-form-box" style="width: 680px;">
                        <!-- START -->
                        <div class="gpu_box_form" style="background: #ededed;padding-left: 30px;padding-top: 15px;padding-bottom: 20px;">
                            <p class="title"><b style="font-size: 20px;"><?php echo $text_returning_affiliate; ?></b></p>
                            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                            <div class="gpu_form" style="width: 57%;">
                                <div><span class="required">*</span> <?php echo $entry_email; ?> 
                                <input type="text" name="email" value="<?php echo $email; ?>" style="float:right; margin-right:30px;margin-top: -8px;" /></div>
                            </div>
                            <div class="gpu_form" style="width: 57%;">
                                <div><span class="required">*</span> <?php echo $entry_password; ?> 
                                <input type="password" name="password" value="<?php echo $password; ?>" style="float:right; margin-right:30px;margin-top: -8px;" /></div>
                            </div>
                            <div class="buttons" style="width: 57%;">
                                
                                <a class="forgotten" href="<?php echo $forgotten; ?>" style="margin-top: 0px;float: left;margin-left: 117px;"><?php echo $text_forgotten; ?></a>
                                <div class="right">
                                    <input type="submit" value="<?php echo $button_login; ?>" class="credit-button_input" style="margin-right: 30px;margin-top: 15px;width: 223px !important;" />
                                    <?php if ($redirect) { ?>
                                    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                                    <?php } ?>
                                </div>
                            </div>
                            </form>
							
                        </div>
                        <div style="float: right;margin-top: -190px;margin-right: 30px;"><img src="image/surrikat_aff_login.png" /></div>
                        <!-- END -->
                    </div>
                    <div class="right-form-content" style="margin: 0 0 0 725px;">
                        <!-- START -->
                        <div class="gpu_box_form" style="padding-top: 15px;">
                            <p class="title"><b style="font-size: 20px;"><?php echo $text_new_affiliate; ?></b></p>
                            <div class="new-customer-box">
                                <?php echo $text_register_account; ?>
                            </div>
                            <div class="buttons">
                                <div class="right"><a class="credit-button_input2" href="<?php echo $register; ?>" style="text-align: center;padding-top: 10px;height: 28px !important;text-decoration: none;margin-right: 30px;margin-top: 35px;width: 223px !important;"><?php echo $button_continue; ?></a></div>
                            </div>
                        </div>
                        <!-- END -->
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