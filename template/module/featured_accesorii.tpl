<!-- START FEATURED -->



<div  id="carousel_featured" class="module-jcarousel global-module">   
<span style="color: #333;font-family: CFJackStory;font-size: 46px;"><?php echo $heading_title; ?></span>
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
							<?php echo $product['price']; ?>
							<?php } else { ?>
							<span class="price-new"><?php echo $product['special']; ?></span>
							<span class="price-old"><?php echo $product['price']; ?></span>
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
wrap: 'circular',
auto: 2,
animation: 2000,
easing: 'linear'
});
								//-->
</script>
<!-- END FEATURED -->