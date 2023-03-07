<?php echo $header; ?>
<div class="container-top">
    <div class="gpc">
    	<!-- START CONTENT TOP -->
        <div class="content-top">
            <!-- START BREADCRUMB -->
            
            <div class="breadcrumb">
            	<h2>
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                <?php } ?>
                </h2>
            </div>
			<h1 class="page_title"><?php echo $heading_title; ?></h1>
					
            <!-- END BREADCRUMB -->


<?php echo $content_top; ?> 
<br />

            <?php if ($products) { ?>
				
			
			
			
                <div class="product-filter global-no-value">
                <!-- Categories -->
					<div style="float:left; margin-bottom: 15px; margin-top: -8px; width: 100%; background: #ededed; padding: 20px 20px 25px 0px;">
					  <?php if (isset($categories)) { ?>
						<?php foreach ($categories as $category_1) { ?>
							<?php if ($category_1['qty'] > 0) { ?>
							
							<?php foreach ($category_1['children'] as $category_2) { ?>
								<?php if ($category_2['qty'] > 0) { ?>
								<span style="float:left; margin-left: 20px"><a id="cat_link" href="<?php echo $this->url->link('product/special', '&category_id=' . $category_2['category_id']); ?>" style="font-weight:bold; color: #333; font-size: 16px"><?php echo $category_2['name']; if ($category_2['category_id'] != 52 || $category_2['category_id'] != 53) { echo " (" .$category_2['qty']. ")"; } ?></a>				
								<?php foreach ($category_2['children'] as $category_3) { ?>
									<?php if ($category_3['qty'] > 0) { ?>
									<ul style="list-style-type:none;">					
									<li style="margin-top: 15px; margin-left: -40px"><a id="cat_link" href="<?php echo $this->url->link('product/special', '&category_id=' . $category_3['category_id']); ?>" style="color: #333; font-size: 14px;"><?php echo $category_3['name']; echo " (" .$category_3['qty']. ")"; ?></a></li>
									</ul>
									<?php } ?>
								<?php } ?>
								</span>
								<?php } ?>
							<?php } ?>
							
							<?php } ?>
						<?php } ?>
					  <?php } ?>		
					</div> 
				<!-- -->
                    <style>
					.styled-sort {background: url(image/new_arrow.png) no-repeat right #ededed;}
					.styled-sort select {color: #8d8c8c;background: transparent;padding: 5px 15px 5px 5px;font-size: 16px;line-height: 1;border: 0;border-radius: 0;-webkit-appearance: none;min-width: auto !important;}
					</style>
                    
                    
                </div>
            <?php } ?>
        </div>
        <!-- END CONTENT TOP -->
    </div>
</div>
<div class="container-bottom">

    <div class="gpc">
    	<?php echo $column_left; ?>
        <?php echo $column_right; ?>
        <!-- START COLUMN CENTER -->
        <div class="column-center">
            <div  id="carousel_banners" class="module-jcarousel global-module">   
			<ul class="jcarousel-skin-smart">
			<li><img src="//smart.md/image/data/slideshow/iphone-6-ro.jpg" style="width:980px;" /></li>
			<li><img src="//smart.md/image/data/slideshow/baner-ro-aces-es1-512-RO_opt.jpg" style="width:980px;" /></li>
			</ul>
			</div>
            <!-- START SPECIAL PAGE -->
        	<div class="special-page">
                <?php if (isset($products)) { ?>
                <div class="product-grid">

                    <?php foreach ($products as $product) { ?>

	
                    <div class="grid-item">
                        <div class="image-content">							
                            <?php if ($product['thumb']) { ?>
                            <div class="image">
                                <a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" id="p_image"><?php echo $product['labels']; ?><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
                            </div>
                            <?php } else { ?>
                            <div class="image no-image">
                                <i class="icon-camera"></i>
                            </div>
                            <?php } ?>
                        </div>
                        <div class="panel-content">
                            <div class="top">
                                <?php if ($product['price']) { ?>
                                <div class="price">                                   
                                    <span class="price-new"><?php echo $product['special']; ?></span>
                                    <span class="price-old"><?php echo $product['price']; ?></span>                                   
                                </div>
                                <?php } ?>
                                <h3 class="name"><a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo $product['name']; ?></a></h3>
                            </div>
                            <div class="middle">
                                
                                <a class="add add_wishlist" style="display:none;" onClick="addToWishList('<?php echo $product['product_id']; ?>');" rel="tooltip" data-placement="top" data-original-title="<?php echo $button_wishlist; ?>"><i class="<?php if($this->config->get('tranda_icon_wishlist') != '') { ?><?php echo $this->config->get('tranda_icon_wishlist'); ?><?php } else { ?>icon-file-alt<?php } ?>"></i></a>
                                </div>
                            <div class="bottom">
							<a class="add add_cart" onclick="addToCart('<?php echo $product['product_id']; ?>');" rel="tooltip" data-placement="top" data-original-title="<?php echo $button_cart; ?>"><i class="<?php if($this->config->get('tranda_icon_cart') != '') { ?><?php echo $this->config->get('tranda_icon_cart'); ?><?php } else { ?>icon-shopping-cart<?php } ?>"></i></a>
                            <a class="add add_compare" onClick="addToCompare('<?php echo $product['product_id']; ?>');" rel="tooltip" data-placement="top" data-original-title="<?php echo $button_compare; ?>"><i class="<?php if($this->config->get('tranda_icon_compare') != '') { ?><?php echo $this->config->get('tranda_icon_compare'); ?><?php } else { ?>icon-exchange<?php } ?>"></i></a>
                            
							
                            </div>
                        </div>
                    </div>
                    
                    <?php } ?>
                </div>
                <div class="pagination"><?php echo $pagination; ?></div>
                <?php } else { ?>
                <div class="tranda_empty"><i class="icon-cogs info_icon"></i><?php echo $text_empty; ?></div>
                <?php }?>
            </div>
            <!-- END SPECIAL PAGE -->
        </div>
        <!-- END COLUMN CENTER -->
    	<!-- START CONTENT BOTTOM -->
        <div class="content-bottom">
            <?php echo $content_bottom; ?>
        </div>
        <!-- END CONTENT BOTTOM -->
    </div>
</div>
<style>
.jcarousel-item-horizontal {width:910px !important;}
</style>
<script type="text/javascript"><!--
$('#carousel_banners ul').jcarousel({
buttonNextHTML: '<div style="margin-top: -126px;margin-left: 930px;font-size: 46px;"><i class="<?php if($this->config->get('tranda_icon_carnext') != '') { ?><?php echo $this->config->get('tranda_icon_carnext'); ?><?php } else { ?>icon-double-angle-right<?php } ?>"></i></div>',
buttonPrevHTML: '<div style="margin-top: 68px;margin-left: -30px;font-size: 46px;"><i class="<?php if($this->config->get('tranda_icon_carback') != '') { ?><?php echo $this->config->get('tranda_icon_carback'); ?><?php } else { ?>icon-double-angle-left<?php } ?>"></i></div>',
vertical: false,
visible: 1,
scroll: 1,
wrap: 'circular'
});
								//-->
</script>
<script type="text/javascript"><!--
function display(view) {
	if (view == 'list') {
		$('.product-grid').attr('class', 'product-list');
		$('.grid-item').attr('class', 'list-item');
		
		$('.product-list > div').each(function(index, element) {
			html = '';
			var image = $(element).find('.image-content').html();
			if (image != null) {
				html += '<div class="image-content">' + image + '</div>';
			}
			html += '<div class="panel-content">';
				var rating = $(element).find('.upload-rating').html();
				if (rating != null) {
					html += '<div class="upload-rating">' + rating + '</div>';
				}
				html += '<div class="top">';
				html += '<h3 class="name">' + $(element).find('.name').html() + '</h3>';
				var price = $(element).find('.price').html();
				if (price != null) {
					html += '<div class="price">' + price  + '</div>';
				}
				html += '</div>';
			html += '<div class="bottom">' + $(element).find('.bottom').html() + '</div>';
			html += '<div class="middle">' + $(element).find('.middle').html() + '</div>';
			html += '</div>';
						
			$(element).html(html);
		});	
		
		$('.display').html('<a class="" onclick="display(\'grid\');"><i class="<?php if($this->config->get("tranda_icon_grid") != '') { ?><?php echo $this->config->get("tranda_icon_grid"); ?><?php } else { ?>icon-th<?php } ?>"></i><span><?php echo $text_grid; ?></span></a><a class="active" onclick=""><i class="<?php if($this->config->get("tranda_icon_list") != '') { ?><?php echo $this->config->get("tranda_icon_list"); ?><?php } else { ?>icon-th-list<?php } ?>"></i><span><?php echo $text_list; ?></span></a>');

		$.cookie('display', 'list');
		$(".rating").tooltip();
		$(".middle a").tooltip();
	} else {
		$('.product-list').attr('class', 'product-grid');
		$('.list-item').attr('class', 'grid-item');
		
		$('.product-grid > div').each(function(index, element) {
			html = '';
			var image = $(element).find('.image-content').html();
			if (image != null) {
				html += '<div class="image-content">' + image + '</div>';
			}
			html += '<div class="panel-content">';
				var rating = $(element).find('.upload-rating').html();
				if (rating != null) {
					html += '<div class="upload-rating">' + rating + '</div>';
				}
				html += '<div class="top">';
				var price = $(element).find('.price').html();
				if (price != null) {
					html += '<div class="price">' + price  + '</div>';
				}
				html += '<h3 class="name">' + $(element).find('.name').html() + '</h3>';
				html += '</div>';
			html += '<div class="middle">' + $(element).find('.middle').html() + '</div>';
			html += '<div class="bottom">' + $(element).find('.bottom').html() + '</div>';
			html += '</div>';
						
			$(element).html(html);
		});	
		
		$('.display').html('<a class="active" onclick=""><i class="<?php if($this->config->get("tranda_icon_grid") != '') { ?><?php echo $this->config->get("tranda_icon_grid"); ?><?php } else { ?>icon-th<?php } ?>"></i><span><?php echo $text_grid; ?></span></a><a class="" onclick="display(\'list\');"><i class="<?php if($this->config->get("tranda_icon_list") != '') { ?><?php echo $this->config->get("tranda_icon_list"); ?><?php } else { ?>icon-th-list<?php } ?>"></i><span><?php echo $text_list; ?></span></a>');
		
		$.cookie('display', 'grid');
		$(".rating").tooltip();
		$(".middle a").tooltip();
	}
}

view = $.cookie('display');

if (view) {
	display(view);
} else {
	display('grid');
}
//--></script> 
<?php echo $footer; ?>