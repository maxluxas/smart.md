<?php echo $header; ?>
<div class="container-top" style="margin-bottom:100px; padding-left:100px;">
<!-- iScroll -->
<!-- <script>
$(document).ready(function(){
// ======= Select an animation type and set it below ======== //
	$animation_type = 1;
//Hiding not useful divs
	$('.limit, .pagination, .results').hide();
//Creating div container for products
	$('#search_content').append('<div id="products" style="width: 100%; height: 100%"></div>');
//View type watcher
	view = $.cookie('display');
	$(document).live("click",function(){
	view = $.cookie('display');
})

//Ajaxload motor
$('#products').infinitescroll({
	navSelector  : "#search_content .links",
	nextSelector : "#search_content .links a",
	itemSelector : "#search_content .grid-item",
	loading: {
	msgText: "", //Loading message goes here
	finishedMsg: '', //Finished message goes here
	img: '//smart.md/image/loading.gif' //Loading gif link goes here
}
},function(elm){
//New elements sort-up
	$(elm).each(function(){
	if($.cookie('display') == 'grid'){
	$(this).appendTo('.product-grid');
	animate_products(this, $animation_type);
}

if($.cookie('display') == 'list') {
	$(this).appendTo('.product-list');
	animate_products(this, $animation_type);
}
});
display(view);
});
});
</script> -->
<!-- End iScroll -->
    <div class="gpc">
    	<!-- START CONTENT TOP -->
        <div class="content-top">
            <!-- START BREADCRUMB -->
            <!-- <div class="breadcrumb">
            	<h2>
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                <?php } ?>
                </h2>
            </div> -->
			<h1 class="page_title"><?php echo $heading_title; ?></h1>
            <!-- END BREADCRUMB -->

            <?php if (isset($products)) { ?>
                <div class="product-filter global-no-value">
                    <div class="display">
                        <a class="" onclick="display('grid');"><i class="<?php if($this->config->get('tranda_icon_grid') != '') { ?><?php echo $this->config->get('tranda_icon_grid'); ?><?php } else { ?>icon-th<?php } ?>"></i><span><?php echo $text_grid; ?></span></a>
                        <a class="active" onclick=""><i class="<?php if($this->config->get('tranda_icon_list') != '') { ?><?php echo $this->config->get('tranda_icon_list'); ?><?php } else { ?>icon-th-list<?php } ?>"></i><span><?php echo $text_list; ?></span></a>
                    </div>
                    <div class="limit">
                      <select onchange="location = this.value;">
                        <?php foreach ($limits as $limits) { ?>
                        <?php if ($limits['value'] == $limit) { ?>
                        <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                        <?php } else { ?>
                        <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                        <?php } ?>
                        <?php } ?>
                      </select>
                    </div>
                    <div class="sort">
                      <select onchange="location = this.value;">
                        <?php foreach ($sorts as $sorts) { ?>
                        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                        <?php } else { ?>
                        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                        <?php } ?>
                        <?php } ?>
                      </select>
                    </div>
                    <a class="product-compare" href="<?php echo $compare; ?>"><i class="<?php if($this->config->get('tranda_icon_compare') != '') { ?><?php echo $this->config->get('tranda_icon_compare'); ?><?php } else { ?>icon-exchange<?php } ?>"></i><span id="compare-total"><?php echo $text_compare; ?></span></a>

                </div>
            <?php } ?>
        </div>
        <!-- END CONTENT TOP -->
    </div>
</div>
<div class="container-bottom" style="margin-bottom:200px; padding-left:100px">
    <div class="gpc">
    	<?php echo $column_left; ?>
        <?php echo $column_right; ?>
        <!-- START COLUMN CENTER -->
        <div class="column-center">
            <?php echo $content_top; ?>
            <!-- START SEARCH PAGE -->
        	<div id="search_content" class="search-page">

  <div class="content" style="width: 100%;margin-top: -80px;">


    <?php if ($search) { ?>

      <input style="display:none" type="text" name="search" onclick="ga('send', 'event', {
    eventCategory: 'Cautare',
      eventAction: 'Pagina cautare',
       eventLabel: '<?php echo $search; ?>'
});" style="display:none" value="<?php echo $search; ?>" />
      <?php } else { ?>
      <input type="text" name="search" value="<?php echo $search; ?>" onclick="this.value = '';ga('send', 'event', {
    eventCategory: 'Cautare',
      eventAction: 'Pagina cautare',
       eventLabel: '<?php echo $search; ?>'
});" onkeydown="this.style.color = '000000'" style="color: #999;display:none;" />
      <?php } ?>
	<div style="float:left; margin-bottom: 15px; margin-top: -8px; width: 100%; background: #ededed; padding: 20px 20px 30px 20px;">
	  <?php if (isset($categories)) { ?>
        <?php foreach ($categories as $category_1) { ?>
			<?php if ($category_1['qty'] > 0) { ?>
			<ul style="list-style-type:none;">
			<?php foreach ($category_1['children'] as $category_2) { ?>
				<?php if ($category_2['qty'] > 0) { ?>
				<li style="float:left; margin-left: 20px"><a href="<?php echo $this->url->link('product/search', 'search=' . $search . '&category_id=' . $category_2['category_id']); ?>" style="font-weight:bold; color: #333; font-size: 16px"><?php echo $category_2['name']; if ($category_2['category_id'] != 52) { echo " (" .$category_2['qty']. ")"; } ?></a>
				<?php foreach ($category_2['children'] as $category_3) { ?>
					<?php if ($category_3['qty'] > 0) { ?>
					<ul style="list-style-type:none;">
					<li style="margin-top: 15px; margin-left: -40px"><a href="<?php echo $this->url->link('product/search', 'search=' . $search . '&category_id=' . $category_3['category_id']); ?>" style="color: #333; font-size: 14px;"><?php echo $category_3['name']; echo " (" .$category_3['qty']. ")"; ?></a></li>
					</ul>
					<?php } ?>
				<?php } ?>
				</li>
				<?php } ?>
			<?php } ?>
			</ul>
			<?php } ?>
        <?php } ?>
        <?php } ?>
	</div>





      <?php if ($sub_category) { ?>
      <input type="checkbox" style="display:none" name="sub_category" value="1" id="sub_category" checked="checked" />
      <?php } else { ?>
      <input type="checkbox" style="display:none" name="sub_category" value="1" id="sub_category" />
      <?php } ?>
    <p></p>

    <?php if ($description) { ?>
    <input type="checkbox" style="display:none" name="description" value="1" id="description" checked="checked" />
    <?php } else { ?>
    <input type="checkbox" style="display:none" name="description" value="1" id="description" />
    <?php } ?>
  </div>
  <?php  ?>

                <?php if (isset($products)) { ?>
                <div class="product-grid">
                    <?php foreach ($products as $product) { ?>
                    <!-- ecomm analytics remarketing -->
                    <script type="text/javascript">
					var google_tag_params = {
					ecomm_prodid: '<?php echo $product["product_id"]; ?>',
					ecomm_pagetype: 'pagina categoriei',
					ecomm_totalvalue: '<?php echo $product["price"]; ?>',
					};
					</script>
                    <!-- start item -->
                    <div class="grid-item" id="<?php echo $product['product_id']; ?>">

                        <div class="image-content">
                            <?php if ($product['thumb']) { ?>

                            <?php if ($product['label'] == 2) { ?>
                            <div><?php echo $promo_philips; ?></div>
                            <?php } elseif ($product['label'] == 1) { ?>
                            <div><?php echo $promo_samsung; ?></div>
                            <?php } elseif ($product['label'] == 3) { ?>
              				<div style="position: absolute;margin-left: 130px;"><?php echo $credit0p_label; ?></div>
              				<?php } ?>
                            <div class="image" id="<?php echo $product['product_id']; ?>">

                                <a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo $product['labels']; ?><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
                            </div>
                            <?php } else { ?>
                            <div class="image no-image">
                                <i class="icon-camera"></i>
                            </div>
                            <?php } ?>
                        </div>
                        <div class="panel-content">
                            <div class="upload-rating">
                            <?php if ($product['price']) { ?>
                            <?php if ($product['special']) { ?>

                            <?php } ?>
                            <?php } ?>
                            <?php if ($product['rating']) { ?>

                            <?php } ?>
                            </div>
                            <div class="top">
                                <?php if ($product['price']) { ?>
                                <div class="price">
                                    <?php if (!$product['special']) { ?>
                                    <?php echo $product['price']; ?> <?php echo $currency; ?>
                                    <?php } else { ?>
                                    <span class="price-new"><?php echo $product['special']; ?> <?php echo $currency; ?></span>
                                    <span class="price-old"><?php echo $product['price']; ?> <?php echo $currency; ?></span>
                                    <?php } ?>
                                    <?php if ($product['tax']) { ?>
                                    <span class="price-tax">/&nbsp;&nbsp;<?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                    <?php } ?>
                                </div>
                                <?php } ?>
                                <h3 class="name"><a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo $product['name']; ?></a></h3>
                            </div>
                            <div class="middle"></div>
                            <div class="bottom">
                                 <a class="add add_cart" onclick="addToCart('<?php echo $product['product_id']; ?>');" rel="tooltip" data-placement="top" data-original-title="<?php echo $button_cart; ?>"><i class="<?php if($this->config->get('tranda_icon_cart') != '') { ?><?php echo $this->config->get('tranda_icon_cart'); ?><?php } else { ?>icon-shopping-cart<?php } ?>"></i></a>

                                <a class="add add_compare" onClick="addToCompare('<?php echo $product['product_id']; ?>');" rel="tooltip" data-placement="top" data-original-title="<?php echo $button_compare; ?>"><i class="<?php if($this->config->get('tranda_icon_compare') != '') { ?><?php echo $this->config->get('tranda_icon_compare'); ?><?php } else { ?>icon-exchange<?php } ?>"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- end item -->
                    <?php } ?>
                </div>
                <div class="pagination"><?php echo $pagination; ?></div>
                <?php } else { ?>
                <script>

				  $(".content").addClass("t_empty");

				//script pentru adaugarea stilului css pentru .content {margin-top:-15px !important;}
				</script>
                <style>
				.t_empty {margin-top:-15px !important;}
				</style>
                <div class="tranda_empty"><i class="icon-cogs info_icon"></i><?php echo $text_empty; ?></div>
                <?php } ?>
            </div>
            <!-- END SEARCH PAGE -->
        </div>
        <!-- END COLUMN CENTER -->
    	<!-- START CONTENT BOTTOM -->
        <div class="content-bottom">
            <?php echo $content_bottom; ?>
        </div>
        <!-- END CONTENT BOTTOM -->
    </div>
</div>
<script type="text/javascript">

$('select[name=\'category_id\']').bind('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').attr('disabled', 'disabled');
		$('input[name=\'sub_category\']').removeAttr('checked');
	} else {
		$('input[name=\'sub_category\']').removeAttr('disabled');
	}
});

$('select[name=\'category_id\']').trigger('change');

$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';

	var search = $('#search_content input[name=\'search\']').attr('value');

	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#search_content select[name=\'category_id\']').attr('value');

	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}

	var sub_category = $('#search_content input[name=\'sub_category\']:checked').attr('value');

	if (sub_category) {
		url += '&sub_category=true';
	}

	var filter_description = $('#search_content input[name=\'description\']:checked').attr('value');

	if (filter_description) {
		url += '&description=true';
	}
	if (search) {
		location = url;
	}
});

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
</script>
<?php echo $footer; ?>
