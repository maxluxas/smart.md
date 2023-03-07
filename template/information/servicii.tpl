<?php echo $header; ?>
<link rel="stylesheet" href="catalog/view/smartv3/css/informations.css?v=1.0">
<div class="info_heading"></div>
<section id="content_info" >
	<?php echo $content_info; ?>
</section>
<style type="text/css">.achitari_main .col.l6.s12{box-shadow: 0px 2px 10px -3px;padding: 20px;
    width: 48%;
    margin: 0 1%;
    height: 170px;}
.achitari_main .col.l6.s12:hover {background: #37474f;color: #fff;box-shadow: 0px 2px 10px -3px;}
.info_cel_livrare h4 {font-family: SmartFont;font-size:20px;}
.col.l6.s12:hover h4{color:#fff;}</style>
<style type="text/css">
	 .roistat-promo-wrap {
	   display: none !important;
	 }
</style>
<script type="text/javascript">
	$(document).ready(function () {
		if ($(window).width() < 426) {
			$('.info_cel_livrare').each(function () {
				if (($(this).children('h4').text() == "Livrare") || ($(this).children('h4').text() == "Доставка")) {
					$(this).css("padding-top","21px");
				}
			});
		}
	});
</script>
<?php echo $footer; ?>
