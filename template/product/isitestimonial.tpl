<?php echo $header; ?>
<link rel="stylesheet" href="catalog/view/smartv3/css/lasa_opp_comp.css?v=1.0">
<section id="lasa_opinia_block">
<form <?php if (isset($_COOKIE['Social'])) { ?>action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="testimonial"<?php } ?>>
	<div class="container content_in_main">
		<div class="cont_info_block">
			<!-- Login Part -->
			<a class="x-inchide-op" href="/opinii_companie">✕</a>
			<div class="login_part">
				<style type="text/css">
					.x-inchide-op {
						float: right;
						font-size: 30px;
						margin-top: -5px;
						margin-right: -5%;
						color: #000;
						cursor: pointer;
					}
					@media screen and (max-width: 970px) and (min-width:940px){
						.x-inchide-op {
							margin-right: 0;
						}
					}
					@media screen and (max-width:939px) {
						.x-inchide-op {
							margin-right: 20px;
						}
					}
				</style>

					<h2 class="big_swoosh"><?php echo $opinia_ta; ?></h2>
    			<?php if (isset($_COOKIE['Social'])) { ?>
				<?php } else { ?>

				<?php } ?>


				<div class="row social buttons">
					<?php if (isset($_COOKIE['Social'])) { ?>
					<?php } else { ?>

					<?php if ($this->config->get('hybrid_auth_status')) { ?>
					  <?php foreach ($this->config->get('hybrid_auth') as $config) { ?>
					  	<div class="col m3 s12">
						  <?php if ($config['provider']=='Facebook') { ?>

						  <a href="https://www.facebook.com/pg/smart.md.moldova/reviews/" target="_blank" class="waves-effect waves-light btn socials_btn fbk">
						  	<svg class="new-svg-icon left facebook_ic" width="18" height="35"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-facebook"></use></svg>
						  	<span>|</span>facebook</a>
						  <?php } elseif ($config['provider']=='Google') { ?>
						  <a href="https://www.google.com/search?q=opinii+google+smart.md&oq=opinii+google+smart.md&aqs=chrome..69i57.7317j0j7&sourceid=chrome&ie=UTF-8#q=smart+md&lrd=0x40c97dbe8378a37f:0xc49f62f72c0d4144,1" target="_blank" class="waves-effect waves-light btn socials_btn gplus">
						  	<svg class="new-svg-icon left gplus_ic" width="24" height="36"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-gplus"></use></svg>
						  	<span>|</span>Google+</a>
						  <?php } elseif ($config['provider']=='Vkontakte') { ?>


						  <?php } ?>
						 </div>
					  <?php } ?>
					<?php } ?>

					<?php } ?>
				</div>


</form>
<script type="text/javascript">
	$(document).ready(function () {
		$('footer').css("margin-top","20px");
	});
</script>
</section>
<?php echo $footer; ?>
