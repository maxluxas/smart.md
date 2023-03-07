<?php echo $header; ?>
<link rel="stylesheet" href="catalog/view/smartv3/css/informations.css">
<div class="info_heading"></div>
<section id="content_info mobile_padding" style="padding-bottom:80px;">
	<?php echo $content_info; ?>
</section>
<style type="text/css">
	 .roistat-promo-wrap {
	   display: none !important;
	 }
	 @media screen and (max-width:425px) {
	 		.row.info_block .col:first-of-type {
				float: none;
			}
			.row.info_block .col:first-of-type img {
				margin: 0 auto;
				display: block;
			}
	 }
</style>
<?php echo $footer; ?>
