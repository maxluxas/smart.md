<?php echo $header; ?>
<head><link rel="stylesheet" href="catalog/view/smartv3/css/cariere.css?v=0.0.2"></head>
<section id="header_cariere"></section>
<div class="content_data">
	<div class="container">
		<img class="top_img_cariere" src="catalog/view/smartv3/img/echipa_smart.jpg" alt="Top Image">
		<span class="title_block" style="display: none;">
				<h4 class="titl_txt_c"><?php echo $about_us; ?></h4>
			</span>
		<div class="row">

		</div>
		<p style="display: none;" id="despre_noi_descriere_c"><?php echo $about_us_descr; ?></p>
	</div>

	<div class="container">
		<?php echo $despre_noi_scurt_istoric; ?>
	</div>
	
	<section id="motive_get_in">
		<div class="container">
			<!-- Title Bloc -->
			<span class="title_block title_block1">
				<h4 class="titl_txt_c"><?php echo $tot_ce_trebuie; ?></h4>
			</span>
			<div style="clear: both;"></div>
			<!-- End title Bloc -->
			<div class="row prim_rand_car">
				<div class="col m3 s12" style="text-align: center;">
					<a href="livrare" style="color:#fff;text-decoration: none;">
						<div class="col s3 m12">
						<div style="height: 90px;vertical-align: middle;">
						<img src="catalog/view/smartv3/img/livrare_ico.png" style="white-space: nowrap;text-align: center;margin: 0.5em 0;">
						</div>
						</div>
						<div class="col s9 m12">
							<?php echo $livrare; ?>
						</div>
					</a>
				</div>
				<div class="col m3 s12" style="text-align: center;">
					<a href="opinii_companie" style="color:#fff;text-decoration: none;">
					<div class="col s3 m12">
					<div style="height: 90px;vertical-align: middle;">
					<img src="catalog/view/smartv3/img/opinii_ico.png" style="white-space: nowrap;text-align: center;margin: 0.5em 0;">
					</div>
					</div>
					<div class="col s9 m12">
						<?php echo $opinii; ?>
					</div>
					</a>
				</div>

				<div class="col m3 s12" style="text-align: center;">
					<div class="col s3 m12">
					<div style="height: 90px;vertical-align: middle;">
					<img src="catalog/view/smartv3/img/consultanta_ico.png" style="white-space: nowrap;text-align: center;margin: 1em 0;">
					</div>
					</div>
					<div class="col s9 m12">
						<?php echo $consultanta; ?>
					</div>
				</div>
				<div class="col m3 s12" style="text-align: center;">
					<a href="contacte" style="color:#fff;text-decoration: none;">
					<div class="col s3 m12">
					<div style="height: 90px;vertical-align: middle;">
					<img src="catalog/view/smartv3/img/showroom_ico.png" style="white-space: nowrap;text-align: center;">
					</div>
					</div>
					<div class="col s9 m12">
						<?php echo $showroom; ?>
					</div>
					</a>
				</div>
			</div>
		</div>
	</section>
	<style>.cariere_titl_sfat {font-family: SmartFont;font-size:20px;}.heading_fraze {
    font-weight: 500;
    font-size: 16px;
    color: #424242;
    margin-top: 40px;
    margin-bottom: 0;
}.go_to_opinii a {
    display: inline-block;
    padding-right: 5px;
    color: #424242;
}.hr_line {
    position: relative;
    width: auto;
    height: 3px;
    background: #ffcc33;
    display: block;
    border-radius: 30px;
    margin-top: 2px;
}</style>
	<section id="video_section_cariere" style="margin-bottom: 100px; padding-left: 10px;">
		<div class="container">
			<div class="row">
			<h4 class="heading_fraze go_to_opinii"><?php echo $te_asteptam; ?></h4>
			</div>
			<div style="clear: both;"></div>
		</div>
	</section>
</div>

	<script>(function(a,m,o,c,r,m){a[m]={id:"94113",hash:"bde537faad79914fdf2720dcc34465ec533a07f453144fca8f53e3372da41c6e",locale:"ru",inline:false,setMeta:function(p){this.params=(this.params||[]).concat([p])}};a[o]=a[o]||function(){(a[o].q=a[o].q||[]).push(arguments)};var d=a.document,s=d.createElement('script');s.async=true;s.id=m+'_script';s.src='https://gso.amocrm.ru/js/button.js?1638452576';d.head&&d.head.appendChild(s)}(window,0,'amoSocialButton',0,0,'amo_social_button'));
	</script>

	<script>(function(a,m,o,c,r,m){a[m]={id:"94113",hash:"bde537faad79914fdf2720dcc34465ec533a07f453144fca8f53e3372da41c6e",locale:"ru",inline:true,setMeta:function(p){this.params=(this.params||[]).concat([p])}};a[o]=a[o]||function(){(a[o].q=a[o].q||[]).push(arguments)};var d=a.document,s=d.createElement('script');s.async=true;s.id=m+'_script';s.src='https://gso.amocrm.ru/js/button.js?1638452576';d.head&&d.head.appendChild(s)}(window,0,'amoSocialButton',0,0,'amo_social_button'));
	</script>

<?php echo $footer; ?>

<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
<script src="catalog/view/smartv3/js/information.js"></script>
<style type="text/css">
	 .roistat-promo-wrap {
	   display: none !important;
	 }
</style>