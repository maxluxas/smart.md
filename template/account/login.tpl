<?php echo $header; ?>
<div class="container-top">
    <div class="gpc">
    	<!-- START CONTENT TOP -->
        <div class="content-top">
            <!-- START BREADCRUMB -->
            <h1 class="page_title"><?php echo $heading_title; ?></h1>
            <div class="breadcrumb">
            	<h2>
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                <?php } ?>
                </h2>
            </div>
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
                <?php if ($error_warning) { ?>
                <div class="warning"><i class="icon-warning-sign info_icon"></i><?php echo $error_warning; ?></div>
                <?php } ?>
            </div>
            <?php echo $content_top; ?> 
            <!-- START ACCOUNT PAGE -->
        	<div class="account-page">
                <div class="form-content">
                    <div class="left-form-content login-form-box">
                        <!-- START -->
                        <div class="gpu_box_form">
                            <p class="title"><b><?php echo $text_returning_customer; ?></b></p>
                            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                            <div class="gpu_form">
                                <p><span class="required">*</span> <?php echo $entry_email; ?></p>
                                <div><input type="text" name="email" value="<?php echo $email; ?>" /></div>
                            </div>
                            <div class="gpu_form">
                                <p><span class="required">*</span> <?php echo $entry_password; ?></p>
                                <div><input type="password" name="password" value="<?php echo $password; ?>" /></div>
                            </div>
                            <div class="buttons">
                                <div class="left">
                                    <input type="submit" value="<?php echo $button_login; ?>" class="button but_green" />
                                    <?php if ($redirect) { ?>
                                    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                                    <?php } ?>
                                </div>
                                <a class="forgotten" href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
                            </div>
                            </form>
                        </div>
                        <!-- END -->
						<?php if ($this->config->get('hybrid_auth_status')) { ?>
						  <?php foreach ($this->config->get('hybrid_auth') as $config) { ?>
							  <a onclick="window.open('<?php echo HTTP_SERVER . 'index.php?route=hybrid/auth&source=product-review&provider=' . $config['provider']; ?>&redirect=<?php echo base64_encode($this->url->link('hybrid/auth/success')); ?>', 'newwindow', 'width=700, height=550,top=100, left=600'); return false;" href="<?php echo HTTP_SERVER . 'index.php?route=hybrid/auth&provider=' . $config['provider']; ?>&redirect=<?php echo base64_encode($this->url->link('hybrid/auth/success')); ?>"><img src="<?php echo HTTP_IMAGE . 'themezee_social_icons/' . strtolower($config['provider']); ?>.png" alt="<?php echo $config['provider']; ?>" title="<?php echo $config['provider']; ?>"/></a>
						  <?php } ?>
						<?php } ?>
                    </div>
                    <div class="right-form-content">
                        <!-- START -->
                        <div class="gpu_box_form">
                            <p class="title"><b><?php echo $text_new_customer; ?></b></p>
                            <div class="new-customer-box">
                                <span><?php echo $text_register; ?></span>
                                <p><?php echo $text_register_account; ?></p>
                            </div>
                            <div class="buttons">
                                <div class="right"><a class="button but_black" href="<?php echo $register; ?>"><i class="icon-edit"></i><?php echo $button_continue; ?></a></div>
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
<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
//--></script> 
<?php echo $footer; ?>