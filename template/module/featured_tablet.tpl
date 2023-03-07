<!-- START FEATURED -->
<style type="text/css">
@media screen and (max-width:550px) {
#carousel_featured{display: none; !important;}
.jcarousel-prev.jcarousel-prev-horizontal{display: none !important;}
.img_promo {width: 150% !important;left: -40%;position: relative;}
.see-more{text-align: center;margin-bottom: 40px;}
.see-more a {font-size: 14px !important;}
}
</style>

<a href="//www.smart.md/tablet_apple-ipad-pro-32gb-wi-fi-gold.html"><img src="image/data/slide2016/ipad-pro-offer_<?php echo $promo_img; ?>.jpg" class="img_promo" width="980" /></a>
<div class="mobile-view carousel_featured">
	<div style="color: #333;font-size: 34px;"><?php echo $heading_title; ?></div>
	<?php $count = count($products) ?>
		<?php $output = array_slice($products, 0, 4); ?>
		<?php foreach ($output as $product) {  ?>
		<div class="grid-item">
				<div class="image-content">
					<?php if ($product['thumb']) { ?>
					<div class="image">
						<a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" width="160" height="160" /></a>
					</div>
					<?php } else { ?>
					<div class="image no-image">
						<i class="icon-camera"></i>
					</div>
					<?php } ?>
				</div>
				<div class="panel-content">
					<?php if ($product['price']) { ?>
					<?php } ?>
					<?php if ($product['rating']) { ?>
					
					<?php } ?>
					<div class="top">
						<?php if ($product['price']) { ?>
						<div class="price">
							<?php if (!$product['special']) { ?>
							<?php echo $product['price']; ?> <?php echo $currency; ?>
							<?php } else { ?>
							<span class="price-new"><?php echo $product['special']; ?> <?php echo $currency; ?></span>
							<span class="price-old"><?php echo $product['price']; ?> <?php echo $currency; ?></span>
							<?php } ?>
						</div>
						<?php } ?>
						<h3><a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo $product['name']; ?></a></h3>
					</div>

				</div>
			</div>
	<?php } ?>
	<div class="mobile-view see-more"><a class="waves-effect yellow black-text waves-light btn btn-medium button"href="//www.smart.md/tablete-1/tablete">Vezi mai multe</a></div>
</div>
<div  id="carousel_featured" class="desktop-view module-jcarousel global-module">
<ul class="jcarousel-skin-smart">
    	<?php foreach ($products as $product) { ?>
        <!-- start item -->
        <li>
			<div class="grid-item">
				<div class="image-content">
					<?php if ($product['thumb']) { ?>
					<div class="image">
						<a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
					</div>
					<?php } else { ?>
					<div class="image no-image">
						<i class="icon-camera"></i>
					</div>
					<?php } ?>
				</div>
				<div class="panel-content">
					<?php if ($product['price']) { ?>
					<?php } ?>
					<?php if ($product['rating']) { ?>
					
					<?php } ?>
					<div class="top">
						<?php if ($product['price']) { ?>
						<div class="price">
							<?php if (!$product['special']) { ?>
							<?php echo $product['price']; ?> lei
							<?php } else { ?>
							<span class="price-new"><?php echo $product['special']; ?> lei</span>
							<span class="price-old"><?php echo $product['price']; ?> lei</span>
							<?php } ?>
						</div>
						<?php } ?>
						<h3><a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo $product['name']; ?></a></h3>
					</div>

				</div>
			</div>
		</li>
        <?php } ?>
</ul>	
</div>
<style>
.jcarousel-item-horizontal {width:215px !important;}
</style>
<script type="text/javascript"><!--
$('#carousel_featured ul').jcarousel({
buttonNextHTML: '<div style="margin-top: -180px;margin-left: 899px;font-size: 46px;"><i class="<?php if($this->config->get('tranda_icon_carnext') != '') { ?><?php echo $this->config->get('tranda_icon_carnext'); ?><?php } else { ?>icon-double-angle-right<?php } ?>"></i></div>',
buttonPrevHTML: '<div style="margin-top: 112px;margin-left: -10px;font-size: 46px;"><i class="<?php if($this->config->get('tranda_icon_carback') != '') { ?><?php echo $this->config->get('tranda_icon_carback'); ?><?php } else { ?>icon-double-angle-left<?php } ?>"></i></div>',
vertical: false,
visible: 4,
scroll: 1,
wrap: 'circular'
});
								//-->
</script>
<!-- END FEATURED -->