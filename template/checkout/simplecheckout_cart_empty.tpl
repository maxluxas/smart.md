
<?php
$simple_page = '';
include $simple->tpl_header();
include $simple->tpl_static();
?>
<style type="text/css">.container-top{display: none;}.heading_smart {
    margin: 0;
    font-family: SmartFont;
    font-size: 26px;
    padding-left: 25px;
    margin: 0;
    position: relative;
    top: -5px;
    z-index: 2;
}</style>
<section id="cosh_section">
	<div class="container content_in_main">
		<h2 class="heading_smart">
			<div class="row">
			<div class="col s3 m1"><img style="width: 100%;max-width: 100px;margin-top: 20px;" src="catalog/view/smartv3/img/suricat_msg_sfat.png"></div>
			<div class="col s9 m11" style="padding-top: 30px;"><span><?php echo $text_error; ?></span></div>
			</div>
		</h2>
		<!-- Apare doar atunci cand coshul este gol -->
		<div class="cosh_golit" style="/* display:none; */ margin-bottom:200px;">
			<p></p>
			<a class="waves-effect waves-light btn go_back_btn" href="promo"><?php echo $vezi_ofertele; ?></a>
		</div>
		<!-- Terminare Block cosh gol -->
	</div>
</section>
<?php include $simple->tpl_footer() ?>
