<?php if($options || $manufacturers || $attributes || $price_slider) { ?>
<div class="box" style="width:200px;">
	<div class="box-content" style="position:relative;">
		<a class="clear_filter"><i class="icon-refresh"></i></a>
		<form id="themerzfilters">
			<?php if($manufacturers) { ?>
			<?php foreach($manufacturers as $manufacturer) { ?>
				<input type="hidden" class="m_name" id="m_<?php echo $manufacturer['manufacturer_id']?>" value="<?php echo $manufacturer['name']?>" />
				<?php } ?>
			<?php } ?>

			<?php if($options) { ?>
			<?php foreach($options as $option) { ?>
				<?php foreach($option['option_values'] as $option_value) { ?>
					<input type="hidden" class="o_name" id="o_<?php echo $option_value['option_value_id']?>" value="<?php echo $option_value['name']?>" />
					<?php } ?>
				<?php } ?>
			<?php } ?>
			<input type="hidden" name="category_id" value="<?php echo $category_id ?>" />
			<input type="hidden" name="page" id="themerzfilters_page" value="0" />
			<input type="hidden" name="path" value="<?php echo $path ?>" />
		<!--	<input type="hidden" name="sort" id="themerzfilters_sort" value="">
			<input type="hidden" name="order" id="themerzfilters_order" value="">
			<input type="hidden" name="limit" id="themerzfilters_limit" value="">-->

			<div class="price_slider" <?php if(!$price_slider) {echo 'style="display:none"';}?>>
				<h1 class="head-title"><span><?php echo $text_price_range?></span></h1>
				<table>
					<tr>
						<td><input class="price_limit" type="text" name="min_price" value="-1" id="min_price"/></td>
						<td><input class="price_limit" type="text" name="max_price" value="-1" id="max_price"/></td>
					</tr>
				</table>

			<div id="slider-range"></div>

			</div>
			<?php if($manufacturers) { ?>
			<div class="option_box">
				<h1 class="head-title"><span><?php echo $text_manufacturers; ?></span></h1>
				<?php if($display_manufacturer == 'select') { ?>
				<div class="collapsible">
					<select name="manufacturer[]" class="filtered">
						<option value=""><?php echo $text_all?></option>
						<?php foreach($manufacturers as $manufacturer) { ?>
						<option id="manufacturer_<?php echo $manufacturer['manufacturer_id']?>" class="manufacturer_value" value="<?php echo $manufacturer['manufacturer_id']?>"><?php echo $manufacturer['name']?></option>
						<?php } ?>
					</select>
				</div>
				<?php } elseif($display_manufacturer == 'checkbox') { ?>
				<table class="collapsible">
					<?php foreach($manufacturers as $manufacturer) { ?>
					<tr>
						<td width="100%">
								<input id="manufacturer_<?php echo $manufacturer['manufacturer_id']?>" class="manufacturer_value filtered" type="checkbox" name="manufacturer[]"
									   value="<?php echo $manufacturer['manufacturer_id']?>" />
								<label for="manufacturer_<?php echo $manufacturer['manufacturer_id']?>"><span></span><?php echo $manufacturer['name']?></label>
						</td>
						<td width="0">
							
						</td>
					</tr>
					<?php } ?>
				</table>
				<?php } elseif($display_manufacturer == 'radio') { ?>
				<table class="collapsible">
					<?php foreach($manufacturers as $manufacturer) { ?>
					<tr>
						<td>
							<input id="manufacturer_<?php echo $manufacturer['manufacturer_id']?>" class="manufacturer_value filtered"
								   type="radio" name="manufacturer[]"
								   value="<?php echo $manufacturer['manufacturer_id']?>" />
						</td>
						<td>
							<label for="manufacturer_<?php echo $manufacturer['manufacturer_id']?>"><?php echo $manufacturer['name']?></label>
						</td>
					</tr>
					<?php } ?>
				</table>
				<?php }?>
			</div>
			<?php } ?>

			<?php if($attributes) { ?>
			<?php foreach($attributes as $attribute_group_id => $attribute) { ?>
			<div class="option_box">
				<h1 style="display:none;"><span><?php echo $attribute['name']; ?></span></h1>
				<?php foreach($attribute['attribute_values'] as $attribute_value_id => $attribute_value) { ?>
				<div class="attribute_box">
					<h1 class="head-title"><span><?php echo $attribute_value['name']; ?></span></h1>
					<?php if($attribute_value['display'] == 'select') { ?>
					<div class="collapsible">
						<select class="filtered" name="attribute_value[<?php echo $attribute_value_id?>][]">
							<option value=""><?php echo $text_all?></option>
							<?php foreach($attribute_value['values'] as $i => $value) { ?>
							<option class="a_name"
									at_v_i="<?php echo $attribute_value_id . '_' . $value ?>"
									at_v_t="<?php echo $attribute_value_id . '_' . $value ?>"
									data-value = "<?php echo $value ?>"
									value="<?php echo $value ?>"><?php echo $value ?></option>
							<?php }?>
						</select>
					</div>
					<?php } elseif($attribute_value['display'] == 'checkbox') {?>
					<table class="collapsible">
						<?php foreach($attribute_value['values'] as $i => $value) { ?>
						<tr>
							<td>
								<input class="filtered a_name"
									   id="attribute_value_<?php echo $attribute_value_id . $i; ?>"
									   type="checkbox" name="attribute_value[<?php echo $attribute_value_id?>][]"
									   at_v_i="<?php echo $attribute_value_id . '_' . $value ?>"
									   value="<?php echo $value ?>" />
                                       <label for="attribute_value_<?php echo $attribute_value_id . $i; ?>"
									   at_v_t="<?php echo $attribute_value_id . '_' . $value ?>"
									   data-value = "<?php echo $value ?>"
									   value="<?php echo $value ?>">
									   <?php if ($attribute_value_id == '221') { ?>(<?php } ?><?php echo $value ?></label>
							</td>
							<td>
								
							</td>
						</tr>
						<?php } ?>
					</table>
					<?php } elseif($attribute_value['display'] == 'radio') {?>
					<table class="collapsible">
						<?php foreach($attribute_value['values'] as $i => $value) { ?>
						<tr>
							<td>
								<input class="filtered a_name"
									   id="attribute_value_<?php echo $attribute_value_id . $i; ?>"
									   type="radio" name="attribute_value[<?php echo $attribute_value_id?>][]"
									   at_v_i="<?php echo $attribute_value_id . '_' . $value ?>"
									   value="<?php echo $value ?>" />
							</td>
							<td>
								<label for="attribute_value_<?php echo $attribute_value_id . $i; ?>"
										at_v_t="<?php echo $attribute_value_id . '_' . $value ?>"
										data-value = "<?php echo $value ?>"
										value="<?php echo $value ?>"><?php if ($attribute_value_id == '221') { ?>(<?php } ?><?php echo $value?></label>
							</td>
						</tr>
						<?php } ?>
					</table>
					<?php }?>
				</div>
				<?php } ?>
			</div>
			<?php } ?>
			<?php } ?>

			<?php if($options) { ?>
			<?php foreach($options as $option) { ?>
			<div class="option_box">
				<h1 class="head-title"><span><?php echo $option['name']; ?></span></h1>
				<?php if($option['display'] == 'select') { ?>
				<div class="collapsible">
					<select class="filtered" name="option_value[<?php echo $option['option_id']?>][]">
						<option value=""><?php echo $text_all?></option>
						<?php foreach($option['option_values'] as $option_value) { ?>
						<option class="option_value" id="option_value_<?php echo $option_value['option_value_id']?>" value="<?php echo $option_value['option_value_id'] ?>"><?php echo $option_value['name']?></option>
						<?php }?>
					</select>
				</div>
				<?php } elseif($option['display'] == 'checkbox') {?>
					<table class="collapsible">
						<?php foreach($option['option_values'] as $option_value) { ?>
						<tr>
							<td>
								<input class="filtered option_value" id="option_value_<?php echo $option_value['option_value_id']?>"
									   type="checkbox" name="option_value[<?php echo $option['option_id']?>][]"
									   value="<?php echo $option_value['option_value_id']?>" />
							</td>
							<td>
								<label for="option_value_<?php echo $option_value['option_value_id']?>"><?php echo $option_value['name']?></label>
							</td>
						</tr>
						<?php } ?>
					</table>
				<?php } elseif($option['display'] == 'radio') {?>
				<table class="collapsible">
					<?php foreach($option['option_values'] as $option_value) { ?>
					<tr>
						<td>
							<input class="filtered option_value" id="option_value_<?php echo $option_value['option_value_id']?>"
								   type="radio" name="option_value[<?php echo $option['option_id']?>][]"
								   value="<?php echo $option_value['option_value_id']?>" />
						</td>
						<td>
							<label for="option_value_<?php echo $option_value['option_value_id']?>"><?php echo $option_value['name']?></label>
						</td>
					</tr>
					<?php } ?>
				</table>
				<?php }?>
			</div>
			<?php } ?>
			<?php } ?>
		</form>
	</div>
<style>
.philips_label {position:absolute;margin-top: -162px;margin-left: 93px;}
.philips_label:hover {transform: none !important;-ms-transform: none !important;-webkit-transform: none !important;-o-transform: none !important;-moz-transform: none !important); background:transparent !important;}</style>	

<script id="productTemplate" type="text/x-jquery-tmpl">
	<div>
	{{if thumb}}
		<div style="position: relative; width: 90px; height: 55px;">
			${label}
		</div>
	
	{{/if}}
		
		{{if thumb}}
			<div class="image">
			<a id="image_${product_id}" href="${href}" title="magazin online">${labels}<img src="${thumb}" title="${name}" alt="${name}"/></a>
				
			<div class="quickview-wrap hidden-phone"></div>
      <div class="modal hide" id="myModal${product_id}">
    <div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <img src="//darwin.md/catalog/view/theme/cartmaniac/image/inf.png"></span> <h3 style="padding-left:10px;display: inline;"><?php echo $text_quickview; ?></h3>
    </div>
    <div class="modal-body">
        <div class="loading-content"></div>
    </div>

    <div class="modal-footer">

    </div>
</div>
<div class="navigation-wrap">
	<a data-toggle="modal" href="index.php?route=product/quickview/&product_id=${product_id}" title="<?php $this->language->load('module/themerz'); echo $this->language->get('text_quickview'); ?>" class="button button-mini buttonwishlist" data-target="#myModal${product_id}" onclick="_gaq.push(['_trackEvent', 'Butoane_QuickView', 'Info']);">
	<span class="ui-icon-grey ui-icon-heart"></span></a>
	<a onclick="animateToCompare('${product_id}'); addToCompare('${product_id}'); $(this).attr('onClick',''); _gaq.push(['_trackEvent', 'Butoane_QuickView', 'Compara']);" class="button button-mini buttoncompare" title="<?php echo $button_compare; ?>"><span class="ui-icon-grey ui-icon-shuffle"></span></a>
	<a onclick="addToCart('${product_id}');_gaq.push(['_trackEvent', 'Butoane_QuickView', 'Adauga in Cos']);" class="button button-mini buttoncart" title="<?php echo $button_cart; ?>"><span class="ui-icon-grey ui-icon-cart"></span></a>
</div>

			</div>
		{{/if}}	
		<div class="name"><a href="${href}">${name}</a>
			<div class="extra" style="color: #444;">
				{{if sku}}
				<span style="color:#38b0e3"><?php echo $pds_sku; ?></span> ${sku} <br/>
				{{/if}}
				{{if model}}
				<span style="color:#38b0e3"><?php echo $pds_model; ?></span> ${model} <br/>
				{{/if}}
				{{if brand}}
				<span style="color:#38b0e3"><?php echo $pds_brand; ?></span> ${brand} <br/>
				{{/if}}
				{{if location}}
				<span style="color:#38b0e3"><?php echo $pds_location; ?></span> ${location} <br/>
				{{/if}}
				{{if upc}}
				<span style="color:#38b0e3"><?php echo $pds_upc; ?></span> ${upc} <br/>
				{{/if}}
				{{if stock}}
				<span style="color:#38b0e3"><?php echo $pds_stock; ?></span> ${stock} <br/>
				{{/if}}
			</div>
		</div>
		<div class="description">${description}</div>
		{{if price}}
			<div class="price">
				{{if special }}
					<span class="price-old">${price}</span> <br> <span class="price-new">${special}</span>
				{{else}}
					<span style="font-size:16px; font-weight:bold; color: #f32800;">SUPER PRET!</span><br />
					${price}
				{{/if}}
				{{if tax}}
					<br/>
					<span class="price-tax"><?php echo $text_tax; ?> ${tax}</span>
				{{/if}}
			</div>
		{{/if}}
		{{if rating}}
			<div class="rating"><img src="catalog/view/theme/cartmaniac/image/stars-${rating}.png" alt="${reviews}" /></div>
		{{/if}}
		<div class="cart"><a onclick="addToCart('${product_id}');" class="button button-mini default-button"><?php echo $button_cart; ?></a></div>
		<div class="wishlist"><a onclick="addToWishList('${product_id}');"><?php echo $button_wishlist; ?></a></div>
		<div class="compare"><a onclick="addToCompare('${product_id}');"><?php echo $button_compare; ?></a></div>
	</div>
</script>
<script>
	function animateToCompare(id) {
		var new_clone = $('#image_' + id + ' > img').clone().appendTo($('#image_' + id)); 
		//clone = $('#image_' + id + ' > img').next();
		new_clone.css('position','fixed');
		new_clone.css('left',new_clone.offset().left);
		new_clone.css('top',new_clone.offset().top - 165 - $(window).scrollTop()*2);		
		var compare_position = $('#compare').offset();			
		if ($('.menubar').css('display') == 'none') {		
			new_clone.animate({top: (compare_position.top)+'px',
							   left: (compare_position.left)+'px',
							   width: 30+'px',
							   height: 30+'px',
							   opacity: 0.5}, "slow");
			new_clone.fadeOut(function(){
				new_clone.remove();
			});
			
		} if ($('.menubar').css('display') == 'block') {
			new_clone.css('z-index','9999');
			new_clone.animate({top: '10px',
							   left: (compare_position.left)+'px',
							   width: 30+'px',
							   height: 30+'px',
							   opacity: 0.5}, "slow");
			new_clone.fadeOut(function(){
				new_clone.remove();
			});			
		}
	}
	
</script>
</div>
<?php } ?>