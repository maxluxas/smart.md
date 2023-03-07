<!-- START JCAROUSEL -->
<div id="carousel<?php echo $module; ?>" class="module-jcarousel global-module">
    <ul class="jcarousel-skin-smart">
		  <li><a href="image/certificate/samsung.jpg" id="certificat_image"><img alt="Samsung" src="image/partners/partner_samsung.jpg" style="padding-right: 10px;"  height="55" width="110"></a></li>
		  <li><a href="image/certificate/nokia.jpg" id="certificat_image"><img alt="Nokia" src="image/partners/partner_nokia.jpg" style="padding-right: 10px;"  height="55" width="110"></a></li>
		  <li><a href="image/certificate/acer.jpg" id="certificat_image"><img alt="Acer" src="image/partners/partner_acer.jpg" style="padding-right: 10px;"  height="55" width="110"></a></li>
		  <li><a href="image/certificate/dell.jpg" id="certificat_image"><img alt="Dell" src="image/partners/partner_dell.jpg" style=""  height="50" width="110"></a></li>
		  <li><a href="image/certificate/lenovo.jpg" id="certificat_image"><img alt="Lenovo" src="image/partners/partner_lenovo.jpg" style=""  height="46" width="110"></a></li>
		  <li><a href="image/certificate/philips.jpg" id="certificat_image"><img alt="Philips" src="image/partners/partner_philips.jpg" style=""  height="55" width="110"></a></li>
		  <li><img alt="Apple" src="image/partners/partner_apple.jpg" style="padding-right: 10px;" width="110"  height="55"></li>
		  <li><a href="image/certificate/vonino.jpg" id="certificat_image"><img alt="Vonino" src="image/partners/partner_vonino.jpg" style=""  height="49" width="110"></a></li>
		  <li><img  alt="Asus"src="image/partners/partner_asus.jpg" style="padding-right: 10px;" width="110"  height="55"></li>
		  <li><a href="image/certificate/fly.jpg" id="certificat_image"><img alt="Fly" src="image/partners/partner_fly.jpg" style="padding-right: 10px;"  height="55" width="110"></a></li>
		  <li><img alt="Toshiba" src="image/partners/partner_toshiba.jpg" style="padding-right: 10px;" width="110"  height="55"></li>
		  <li><img alt="HP" src="image/partners/partner_hp.jpg" style="" width="110"  height="55"></li>
    </ul>
	<style>
	#carousel0 {margin-top:20px; margin-bottom:0px;}
	#carousel0 .jcarousel-item-horizontal {width: 145px !important;}
	</style>
    <script type="text/javascript"><!--
    $('#carousel<?php echo $module; ?> ul').jcarousel({
	
        buttonNextHTML: '<div style="margin-top: -49px;margin-left: 927px;font-size: 36px;"><i class="<?php if($this->config->get('tranda_icon_carnext') != '') { ?><?php echo $this->config->get('tranda_icon_carnext'); ?><?php } else { ?>icon-double-angle-right<?php } ?>"></i></div>',
buttonPrevHTML: '<div style="margin-top: 10px;margin-left: -32px;font-size: 36px;"><i class="<?php if($this->config->get('tranda_icon_carback') != '') { ?><?php echo $this->config->get('tranda_icon_carback'); ?><?php } else { ?>icon-double-angle-left<?php } ?>"></i></div>',
vertical: false,
        visible: 6,
        scroll: 1,
		wrap: 'circular',
easing: 'linear'
    });
    //--></script>
	<script>
	$(document).ready(function() {

	/* This is basic - uses default settings */	
	$("a#certificat_image").fancybox();

	/* Apply fancybox to multiple items */
	
});
	</script>
</div>
<!-- END JCAROUSEL -->