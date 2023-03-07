<?php echo $header; ?>
<div id="ccx_tr_2befcd2e1c6e65c43e3a1440eec2ea59"></div>
<div id="ccx_tr_2820114c4eed75d0b0fe92df77adf48f"></div>
<div itemscope itemtype="//schema.org/WebPage" id="content">
	<div style="display: none;">
		<span itemprop="name"><?php echo $heading_title; ?></span>
		<ol itemscope itemtype="http://schema.org/BreadcrumbList">
			<?php foreach ($breadcrumbs as $breadkey => $breadcrumb) { ?>
			<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
				<a itemprop="item" href="<?= $breadcrumb['href']; ?>">
					<span itemprop="name"><?= $breadcrumb['text']; ?></span></a>
				<meta itemprop="position" content="<?= $breadkey + 1; ?>" />
			</li>
			<?php } ?>
		</ol>
	</div>
</div>

<div itemscope itemtype="//schema.org/Product" id="content">
	<div style="display: none;">
		<meta itemprop="name" content="<?php echo $heading_title; ?>">
		<div itemprop = "offers" itemscope itemtype = "//schema.org/AggregateOffer">
			<meta itemprop="lowPrice" content="<?php echo $lowPrice; ?>" />
			<meta itemprop="priceCurrency" content="MDL" />
		</div>
	</div>
</div>

<link rel="stylesheet" type="text/css" href="catalog/view/smartv3/css/category.css?v=1.5.8537">

<div style="display: none;" class="referrer"><?php echo $_SERVER['HTTP_REFERER']; ?></div>

<?= $category_lading; ?>

<?php if(isset($has_products)) { ?>
<section id="category_section" <?php if($category_id == 28337) { ?> style="display: none;" <?php } ?>>

<input type="text" value="<?php echo $category_id; ?>" id="category_id" style="display:none;">
<input type="text" value="<?php echo $category_path; ?>" id="category_path" style="display:none;">

<div class="container content_in_main">

	<!-- Custom banners -->

  <?php $custom__banners = true; ?>

  <?php if ($custom__banners) { ?>
    <a href="#" class="custom__banners_desk">
        <img src="https://www.smart.md/image/data/results-photos/banners/visadecdesk.png">
    </a>

    <a href="#" class="custom__banners_mob">
        <img src="https://smart.md/image/data/results-photos/banners/visadecmob.png">
    </a>
  <?php } ?>

  <!-- Custom banners -->

	<?php if ($image) { ?>
	<div class="row">
		<div class="col s12">
			<img src="image/<?php echo $image; ?>" class="banners">
		</div>
	</div>
	<?php } ?>
	<div class="row special_padding">
		<div class="col m10 s12 demumire">
			<?php echo $content_bottom; ?>
			<?php if(!$category_lading) { ?>
			<!-- BREADCRUMB -->
			<div class="breadcrumb">
				<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<a href="<?php echo $breadcrumb['href']; ?>"> <?php echo $breadcrumb['text']; ?></a><?php echo $breadcrumb['separator']; ?>
				<?php } ?>
			</div>
			<!-- BREADCRUMB -->
			<?php } ?>
			<h1 class="heading_title_style heading_title_cat">
				<?php echo $heading_title." ($pagination_total)"; ?>
			</h1>
		</div>
		
	</div>

	<div class="aq_filter_group">
		<button id="aq_filter" class="wrapper-dropdown_select" style="width: 50%;"><?php echo $text_filter_aq; ?></button>
		<div class="col m2 afis_ordon" style="width: 50%;">
			<ul class="inline_list arangment_list">
				<li class="select_ord">
					<div id="rating_ord_dup" class="wrapper-dropdown_select" tabindex="1">
						<div class="__new_sort_text"><?php echo $text_sort; ?></div>
					
						<ul class="dropdown_select">
							<?php foreach ($sorts as $sort_type) { ?>
							<?php $sort_link = $sort_type['href']; ?>
							<li dropdown-list onclick="ajaxDropDownF($(this))" <?php if ($sort_type['value'] == $sort . '-' . $order) { echo 'class="selected_ordering"'; }?>>
							<a ajax-filter href="<?php echo $sort_type['href']; ?>"><?php echo $sort_type['text']; ?></a>
							</li>
							<?php } ?>
						</ul>
					</div>
				</li>
			</ul>
		</div>
	</div>


	<?php if (true) { ?>
	<?php if ($category_id==412 || $category_id==437 || $category_id==414 || $category_id==440) { ?>
	<?php if ($category_id==437 || $category_id==440) { ?>
	<script type="text/javascript">
		$(document).ready(function () {
			("#search_accesoriu").attr("placeholder", "<?php echo $introdu_tablet; ?>");
		});
	</script>
	<?php } ?>
	<style type="text/css">
		.cautare_accesorii {
			display: block;
		}
	</style>
	<input type="hidden" name="categoria" id="categoria" value="<?php echo $category_id; ?>">
	<?php } else { ?>
	<style type="text/css">
		.cautare_accesorii {
			display: none;
		}
	</style>
	<?php } ?>

	<!-- Butoanele pe mobile fixed Filtre si Ordoneaza -->
	<div class="filtreaza_ordoneaza <?php if(!$category_lading) { echo 'is_not_lading'; } ?>">
		<?php if ($lang == "ru") { ?>
		<div class="row mobile_option_butons fixed_butons_active">
		
			<div class="col s6 check_if_exists">
				<a class="waves-effect waves-light btn open_filtre ru_open_filtre">
					<span class="ru_alignement"><?php echo $Filters; ?></span>
				</a>
			</div>
	

			<div class="col s6 check_if_exists">
				<a class="waves-effect waves-light btn open_ordoneaza ru_text"><?php echo $Sort_btn; ?></a>
				<select class="browser-default sort-category-products" onchange="ajaxDropDownFSelect($(this).val())">
					<?php foreach ($sorts as $sort_type) { ?>
					<?php $sort_link = $sort_type['href']; ?>
					<option dropdown-list ajax-filter value="<?php echo $sort_type['href']; ?>" <?php if ($sort_type['value'] == $sort . '-' . $order) { echo 'class="selected_ordering"'; }?>><?php echo $sort_type['text']; ?>
					</option>
					<?php } ?>
				</select>
			</div>

			<div class="reset_filters_top">
				<div class="col m2 s6 sterge_col">
									<span>
										<a href="<?php echo $reset_link; ?>" title="<?php echo $button_reset; ?>" reset-filter>
											<svg class="new-svg-icon" width="20" height="20"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-rubbish-bin"></use></svg>
										</a>
									</span>
				</div>
			</div>
		</div>
		<?php } else { ?>
		<div class="row mobile_option_butons fixed_butons_active">
	
			<div class="col s6 check_if_exists">
				<a class="waves-effect waves-light btn open_filtre">
					<span><?php echo $Filters; ?></span>
				</a>
			</div>


			<div class="col s6 check_if_exists">
				<a class="waves-effect waves-light btn open_ordoneaza"><?php echo $Sort_btn; ?></a>
				<select class="browser-default sort-category-products" onchange="ajaxDropDownFSelect($(this).val())">
					<?php foreach ($sorts as $sort_type) { ?>
					<?php $sort_link = $sort_type['href']; ?>
					<option dropdown-list ajax-filter value="<?php echo $sort_type['href']; ?>" <?php if ($sort_type['value'] == $sort . '-' . $order) { echo 'class="selected_ordering"'; }?>><?php echo $sort_type['text']; ?>
					</option>
					<?php } ?>
				</select>
			</div>

			<div class="reset_filters_top">
				<div class="col m2 s6 sterge_col">
									<span>
										<a href="<?php echo $reset_link; ?>" title="<?php echo $button_reset; ?>" reset-filter>
											<svg class="new-svg-icon" width="20" height="20"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-rubbish-bin"></use></svg>
										</a>
									</span>
				</div>
			</div>
		</div>
		<?php } ?>
	</div>

	

	<?php } ?>
	<!-- products block part -->

	<div ajax-container id="pjaxy" class="<?php if (!$filter) { ?>lading_full<?php } ?>" >
		<!-- Labels -->
		<?php if($labels) { ?>
		<div class="category_labels row col m9" style="margin-left: 20px;">

			<?php if($labels) { ?>
			<?php foreach ($labels as $label) { ?>
			<?php if(isset($label['static'])) { ?>
			<a class="labels-a-element" href="<?php echo $label['url']; ?>"><div class="text-labels"><?php echo $label['text']; ?></div></a>
			<?php } else { ?>
				<a class="labels-a-element" href="<?php echo $label['url']; ?>"><div class="text-labels"><?php echo $label['text']; ?></div></a>
			<?php } ?>
			<?php } ?>
			<?php } ?>

		</div>
		<?php } else { ?>
		<div class="category_labels row col m9"></div>
		<?php } ?>
		<!-- Labels -->
		<?php if ($filter) { ?>
		<div class="row products_container col m9">
			<?php } else { ?>
			<div class="row products_container col m9">
				<?php } ?>
				<?php if($pjax_request) { ?>
				<div id="loading-ajax" style="display: block;"></div>
				<?php } else { ?>
				<div id="loading-ajax"></div>
				<?php } ?>
				<?php if ($products) { ?>
				<?php $forGtag = []; ?>
				<!-- Block produs #### -->
				</script>
				<?php foreach ($products as $product) { ?>

				<?php $forGtag[] = "'".$product['sku']."'"; ?>

				<?php if ($filter) { ?>
				<div class="m4 s6 pre_bloc_prod_cont row_special" style="position:relative">
					<?php } else if($pjax_request) { ?>
					<div class="m4 s6 pre_bloc_prod_cont row_special" style="position:relative">
						<?php } else { ?>
						<div class="col m4 s6 pre_bloc_prod_cont row_special" style="position:relative">
							<?php } ?>

							<div class="Block_cont_produsC row_special" id="id_prod_1">

								<?php foreach($product['product_labels'] as $product_label) { ?>
								<?php if(isset($product_label['url']) && !empty($product_label['url'])) { ?>
								<a target="_blank" class="__new_product_category_labels"  style="background:  <?= $product_label['color'] ?>; color: <?= $product_label['text_color'] ?>;"  href="<?= $product_label['url']; ?>">
									<?php } else { ?>
									<div class="__new_product_category_labels" style="background:  <?= $product_label['color'] ?>; color: <?= $product_label['text_color'] ?>;">
										<?php } ?>
										<span class="__new_label_text"><?= $product_label['name']; ?></span>
										<?php if(isset($product_label['url']) && !empty($product_label['url'])) { ?>
								</a>
								<?php } else { ?>
							</div>
							<?php } ?>
							<?php } ?>

							<?php if ($product['thumb']) { ?>
							<a class="__new_product_href" href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>">
								<img class="lazy" src="<?= $placeholder_lazy; ?>" data-src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"/>
								<div class="__new-smart-loader"></div>
							</a>
							<?php } else { ?>
							<div class="image no-image">
								<i class="icon-camera"></i>
							</div>
							<?php } ?>

							<a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>">
								<h4><?php echo $product['name']; ?></h4>
							</a>

							<hr class="custom_category_prod_hr">

							<div class="row grid_bottom_side <?php if($product['stock_status_id'] == '5') { echo "__new_out_of_stock_btn_cnt"; } ?>">
						

							<div class="col m6 s6 price_container cred">
								<!--- <h4 class="price_prod" style="float: right; padding-left: 0 !important;">
                                    <? if ((in_array(4485, $allcurentcategs)) || (in_array(4091, $allcurentcategs)) || (in_array(3089, $allcurentcategs)) || (in_array(4556, $allcurentcategs)) || (in_array(4818, $allcurentcategs)) || (in_array(4141, $allcurentcategs))) { ?>
                                        <?php if ($product['special2']) { ?>
                                            <div class="old_price">
                                                <small>+<?php echo number_format(ceil(0.05 * $product['special2']), 0, ",", " "); ?><?php echo $bonusuri_pr; ?></small>
                                            </div>
                                        <?php } else { ?>
                                            <div class="old_price">
                                                <small>+<?php echo number_format(ceil(0.05 * $product['price2']), 0, ",", " "); ?><?php echo $bonusuri_pr; ?></small>
                                            </div>
                                        <?php } ?>
                                    <?php } ?>
                                </h4> -->

								<?php if ($product['credit_rata_value']) { ?>

								<div class="monthly_rate">
									<small class="rate_label" style="color: #A6A6A6;"><?= $per_month; ?></small>
									<strong class="rate_price"><?= $product['credit_rata_value']; ?>
										<span class="rate_currency"><?= $currency;?></span>
									</strong>
								</div>

								<?php } ?>

							</div>

							<?php if($product['stock_status_id'] != '5') { ?>
							<div class="col m6 s6 price_container pr">
								<div style="display: none;"><?php echo $product['price2']; ?></div>
								<?php if ($product['price']=='1') { ?>
								<h4 class="price_prod single_price">
									<span><?php echo $precomanda; ?></span>
								</h4>
								<?php } else { ?>
								<?php if (!$product['special']) { ?>
								<h4 class="price_prod">
									<del style="visibility: hidden">
										<?php echo $currency; ?>
									</del>
									<span><?php echo $product['price']; ?><small><?php echo $currency; ?></small>
																		</span>
								</h4>
								<?php } else { ?>
								<h4 class="price_prod">
									<del class="old_price"><?php echo $product['price']; ?><small><?php echo $currency; ?></small>
									</del>
									<span style="color: #bf0000;" ><?php echo $product['special']; ?><small><?php echo $currency; ?></small>
																		</span>
								</h4>
								<?php } ?>
								<?php } ?>
							</div>
							<?php } ?>

						</div>
						<?php if($product['variations']['count']) { ?>
						<div class="product_variations" data-variation="true">

							<?php foreach( $product['variations']['options'] as $key => $options ) { ?>

							<div class="option_name"> <?php echo $options['name'] ?> </div>

							<div class="options_block">
								<ul class="options">
									<?php $i=0; foreach( $options['products'] as $key => $option ) {
										// $i++;
										// if($i == 5) {
										// 	break;
										// }
									?>
									<?php if( isset($option['thumb']) && !empty($option['thumb']) ) { 
									?>
										
									<li class="thumb <?php if( $option['current'] ){ ?> current_option  <?php } ?> ">
										<a rel="canonical" href="<?= $option['href']?>">
											<img src="<?= $option['thumb']?>" alt="<?= $option['title']?>">
										</a>
									</li>

									<?php } else if( isset($option['color']) && !empty($option['color']) ) { ?>

									<li class="circle  <?php if ( (int)$options['count'] - 4 == 1  ) { ?> on_limit <?php } ?>   <?php if( strtolower($option['color']) === "#ffffff"){ ?> border_white  <?php } ?> <?php if( $option['current'] ){ ?> current_option  <?php } ?>" style=" background: <?= $option['color'] ?> ">
										<a rel="canonical" href="<?= $option['href']?>">
										</a>
									</li>

									<?php } else { ?>
									<li class="circle mem <?php if( $option['current'] ){ ?> current_option  <?php } ?>">
										<a rel="canonical" href="<?= $option['href']?>">
											<?= $option['value']?>
										</a>
									</li>
									<?php } ?>
									<?php } ?>
								</ul >
								<?php if( $options['count'] > 4 && (int)$options['count'] - 4 > 1 ) { ?>
								<a href="<?php echo $product['href']; ?>" class="count"> +<?= (int)$options['count'] - 4 ?> </a>
								<?php } ?>
								<?php if( $options['count'] > 3 && (int)$options['count'] - 3 > 1 ) { ?>
								<a href="<?php echo $product['href']; ?>" class="mobile_count count"> +<?= (int)$options['count'] - 3 ?></a>
								<?php } ?>
							
							</div>

							<?php } ?>

						</div>
						<?php } else { ?>
						<div class="product_variations" data-variation="false">
							<div class="variation_atu"><?php echo $var_placeholder ?></div>
						</div>
						<?php } ?>
					</div>
				</div>
				<?php } ?>
			</div>
			<div class="pagination">
				<?php echo $pagination; ?>

			</div>
			<span style="display: none;" ajax-totals><?php echo $pagination_total; ?></span>
		</div>
		<div class="__new_description_category">
			<?php if($description && strpos($description, '</h2>') === false) { ?>
			<span class="__new_heading_descriere_category"><?php echo $descriere_categorie; ?></span>
			<?php } ?>
			<div class="__new_description_category_content">
				<?php echo $description; ?>
			</div>
		</div>
		<div class="__new_chats_home">
			<div class="__new_chats_container">
				<div class="__new_chats_block1">
					<span class="__new_chats_title"><?php echo $hai_sa_vorbim; ?></span>
					<img src="catalog/view/smartv3/img/__new_chats/Megafon.png" alt="magazinul" />
				</div>
				<div class="__new_chats_block2">
					<a href="viber://pa?chatURI=smartclick">
						<img src="catalog/view/smartv3/img/__new_chats/Viber.png" alt="detalii in viber" />
					</a>
					<a href="https://m.me/smart.md.moldova">
						<img src="catalog/view/smartv3/img/__new_chats/Messenger.png" alt="facebook messenger" />
					</a>
					<a href="https://t.me/Smart_md_Bot">
						<img src="catalog/view/smartv3/img/__new_chats/Telegram.png" alt="scrie in telegram" />
					</a>
				</div>
			</div>
		</div>

		<h3 class="hidd_s_elements"><?php echo $h3_txt_3; ?></h3>

		<div class="__new_block_ieftin">
			<span class="__new_title_ieftin"><?php echo $three_motif; ?></span>
			<span class="__new_motiv_ieftin">
						          	<?php echo $three_motif_1; ?>
						      	</span>
			<span class="__new_motiv_ieftin">
							       	<?php echo $three_motif_2; ?>
						     	</span>
			<span class="__new_motiv_ieftin">
						          	<?php echo $three_motif_3; ?>
						      	</span>
		</div>

		<div id="filtere_mobile_block" class="modal mobile_modals">
			<div class="content_top_filters_selected">
				<div class="mobile_number_products">
										<span class="mobile_number_span">
											<span class="mobile_number_number"><?php echo $pagination_total; ?></span>
											<?php echo $de_produse; ?></span>
					<a class="modal-close">
						<span class="close_Mdl_M"><?php echo $afiseaza; ?></span>
					</a>
				</div>

				<div class="mobile_choose_filter" mobile-filter>
					<span style="display: none;" class="not-filters">Nu au fost aplicate filtre</span>
					<div class="tags_block_container"></div>
				</div>
			</div>
		</div>

		<div class="overlay_ordonare">
			<div id="ordoneaza_mobile_block" class="modal mobile_modals">
				<div class="modal-content">
					<h4><?php echo $Sort; ?></h4>
					<a class="modal-close">
						<i class="close_Mdl_M"></i>
					</a>
				</div>
			</div>
		</div>
		<script>
			$(".dropdown_filtre_Producator").click(function () {
				$("#filtre_Producator").toggleClass("noscroll");
			});
		</script>

		<?php } ?>

		<?php if (!$products) { ?>
		<div style="margin-top: 20px"><?php echo $nu_exista_produse; ?></div>
		<?php } ?>
	</div>
</div>
<script>
	window.dataLayer = window.dataLayer || [];
	window.dataLayer.push({
		'section_of_website' : 'category',
		'event' : 'productcategoryview',
		<?php if(isset($categories_path)) foreach($categories_path as $key => $path){ ?>
      'prod_cat_<?=$key?>' : '<?=$path?>',
      <?php } ?>
	});
</script>
<script>
	gtag('event', 'view_item_list', {
		'send_to': 'AW-984413743',
		'dynx_pagetype': 'searchresults',
		'google_business_vertical': 'custom'
	});
</script>


<script defer src="catalog/view/smartv3/js/jquery.pjax.js?v=1.0.4"></script>
<script src="catalog/view/smartv3/js/lazyload.min.js?v=1.0.0"></script>
<script defer src="catalog/view/smartv3/js/category.js?v=1.0.291"></script>
<script>
	$('#lading_title').remove();
	$('#lading_description').remove();
	$('.heading_title_cat').appendTo('#title_cat');
	
	
		$('.custom__banners_mob').prependTo('#title_cat').css("margin-top","10px");
		$('.custom__banners_desk').prependTo('#title_cat').css("margin-top","20px");

	

	$(document).on('click', ".__new_filtreaza_mobile", function() {
		$('#aq_filter').click();
	})
</script>
</section>
<?php } ?>

<!-- END CONTENT BOTTOM -->




<?php echo $footer; ?>
