<?php echo $header; ?>
<link rel="stylesheet" href="catalog/view/smartv3/css/informations.css">
<div class="info_heading"></div>
<section id="content_info mobile_padding" style="padding-bottom:60px;">
	<?php echo $content_info; ?>
</section>
<style type="text/css">
	 .roistat-promo-wrap {
	   display: none !important;
 	}
</style>
<script type="text/javascript">
	$(document).ready(function () {
		if ($(window).width() < 674) {
			if (($('.active_page_infmen').children('a').text() == "Achitari") ||($('.active_page_infmen').children('a').text() == "Оплата") ) {
				$('.active_page_infmen').parents('.meniu_list').css("padding","0 10px 50px 0");
			}
	}
	});
</script>
<?php echo $footer; ?>
