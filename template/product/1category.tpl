<?php echo $header; ?>
<section id="category_section"<?php if ($_SERVER["HTTP_CF_CONNECTING_IP"] == '195.22.229.38') { ?><?php } else { ?> style="display:none;"<?php } ?>>
<style>.price-new{font-size: 16px !important;} .price-old {font-size: 14px !important;text-decoration:line-through;color:#ccc;}.Block_cont_produsC a {color:#000 !important;}</style>
	<div class="container content_in_main">
		<div class="row">
			<div class="col s6 demumire" style="font-size: 26px;">
				<div style="background:url(catalog/view/smartv3/img/graf1.png);background-repeat: no-repeat;height: 51px;float: left;width: 31px;background-position: 0;background-size: 34px;"></div>
				<div style="background:url(catalog/view/smartv3/img/graf2.png);background-repeat:repeat-x;float: left;height: 55px;padding: 6px;background-size: contain;">
					<?php if (isset($_GET['filter']) && $_GET['filter']=='57=345') { ?>Lichidare stock <?php echo $heading_title; ?><?php } else { ?><?php echo $heading_title; ?> <?php } ?>
				</div>
				<div style="background:url(catalog/view/smartv3/img/graf3.png);background-repeat: no-repeat;height: 51px;float: left;width: 31px;background-position: 0;background-size: 34px;"></div>
			</div>
			<div class="col s6 afis_ordon">
                    <ul class="inline_list arangment_list">
						<!-- li class="pre_txt_viz">Viziualizare ca</li>
						<li><i class="iicon-apps afis_grid active_afis_mode"></i></li>
						<li><i class="iicon-list afis_list"></i></li>
						<li class="devider_viz"> | </li> -->
						<li class="select_ord">
							<div id="rating_ord_dup" class="wrapper-dropdown_select" tabindex="1">
							    <span><?php echo $text_sort; ?></span>
							    <i class="iicon-keyboard_arrow_down"></i>
							    <ul class="dropdown_select">
						    	<?php foreach ($sorts as $sorts) { ?>
						    	<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
						    	<script>
								$( ".sort_title" ).append( "<?php echo $sorts['text']; ?>" );
								</script>
						        <li><?php echo $sorts['text']; ?></li>
						        <?php } else { ?>
						        <?php $sort_link = $sorts['href']; ?>
								<li onclick="location.href='<?php echo $sort_link; ?>';"><a href="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></a></li>
								<?php } ?>
								<?php } ?>
						    	</ul>
							</div>
						</li>
					</ul>
			</div>
		</div>
		
	<?php if ($products) { ?>
        <!-- products block part -->
			<div class="row products_container">
				<!-- Block produs #### -->
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
				<div class="col m3 pre_bloc_prod_cont">
					<div class="Block_cont_produsC" id="id_prod_1">
						<?php if ($product['thumb']) { ?>
							<a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>">
                            	<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
                            </a>
                        <?php } else { ?>
	                            <div class="image no-image">
	                                <i class="icon-camera"></i>
	                            </div>
	                    <?php } ?>
							<a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><h4><?php echo $product['name']; ?></h4></a>
							<p><?php echo $product['specificatii']; ?></p>
							<!-- Labels list -->
							<ul class="label_category">
								<?php if ($product['label'] == 2) { ?>
	                            <!--div><?php echo $promo_philips; ?></div-->
	                            <?php } elseif ($product['label'] == 1) { ?>
	                            	<div style="position: absolute;margin-left: 50px;"><?php echo $credit0p_label; ?></div>
	                            <!--div><?php echo $promo_samsung; ?></div-->
	                            <?php } elseif ($product['label'] == 3) { ?>
	                            	<div style="position: absolute;margin-left: 50px;"><?php echo $credit0p_label; ?></div>
	                            <?php } ?>
	                            <?php if ($product['labels']) { ?>
								<li class="label_conatiner default">
									<?php echo $product['labels']; ?>
								</li>
								<? if(in_array($product['product_id'], $products_promo)): ?>
								<li class="label_conatiner">
                                    <img id="category_price_label" src="catalog/view/smartv3/img/Labels/40x140_label_aniversar_<?=$promo_lang; ?>.png">
                                </li>
                                <? endif; ?>
                                <?php if ($product['special']>0) { ?>
                                <li class="label_conatiner" style="box-shadow:none;">
                                	<!-- <img id="category_price_label" src="catalog/view/smartv3/img/Labels/75x75_Label_black.png" style="position: inherit;margin-left: 0px;height: auto;width: 65%;"> -->
                                </li>
                                <?php } ?>
								<?php } ?>
							</ul>
						<!-- <div class="row Block_info_list_mode">
							<div class="col m4 img_place"></div>
							<div class="col m8 info_place">
								<ul class="specificatii_detaliate">
									<li><span>Smartphone: </span>Android 6.0.1</li>
									<li><span>Ecran: </span>5.2 ” rez. 1920x1080 px</li>
									<li><span>Cameră: </span>21 MP | 8 MP</li>
									<li><span>Sim: </span>Dual Sim </li>
									<li><span>Memorie: </span>32 GB, slot de cartelă memorie </li>
									<li><span>Memorie RAM: </span>3 GB</li>
									<li><span>Baterie: </span>3000 mAh</li>
								</ul>
								<div class="row add_compare_row_L">
									<div class="col s6">
										<a class="waves-effect waves-light btn vezi_det_list_mode">Vezi Detalii</a>
									</div>
									<div class="col s6 add_compare_check"></div>
								</div>
							</div>
						</div> -->
						<hr class="custom_category_prod_hr">
						<div class="row grid_bottom_side">
							<div class="col m6 s12 price_container" <?php if ($product['price']==0) { ?>style="display:none"<?php } ?>>
                                <?php if (!$product['special']) { ?>
                                <h4 class="price_prod"><span><?php echo $product['price']; ?> <small><?php echo $currency; ?></small></span></h4>
                                <?php } else { ?>
								<h4 class="price_prod">
									<del class="old_price"><?php echo $product['price']; ?> <small><?php echo $currency; ?></small></del>
									<span><?php echo $product['special']; ?> <small><?php echo $currency; ?></small></span>
								</h4>
                                <?php } ?>
							</div>
							<div class="col s6 add_compare_block">
								<input type="checkbox" class="filled-in" id="filled-in-box" />
								<label class="add add_compare" onClick="addToCompare('<?php echo $product['product_id']; ?>');" title="<?php echo $button_compare; ?>" for="filled-in-box"><?php echo $button_compare; ?></label>
							</div>
						</div>
						<div class="row price_and_credit">
							<div class="col s6 pret_online">
								<h3><span>Cumpără Acum</span> 
									<?php if (!$product['special']) { ?>
                                    <?php echo $product['price']; ?> <small>l<?php echo $currency; ?></small>
                                    <?php } else { ?>
                                    <h4 class="price_prod price-new" style="font-size:16px !important;"><?php echo $product['special']; ?> <small><?php echo $currency; ?></small></h4>
                                    <h4 class="price_prod price-old" style="font-size:16px !important;"><?php echo $product['price']; ?> <small><?php echo $currency; ?></small></h4>
                                    <?php } ?>
								</h3>
							</div>
							<div class="col s6 credit_pl">
								<h3><span>Credit de la </span>1 098 <small>lei/lună</small></h3>
							</div>
						</div>
					</div>
				</div>
				<?php } ?>	
			</div>
		<!-- End products block part -->
	<?php } ?>	
	<script type="text/javascript" src="catalog/view/smartv3/js/category.js"></script>
	<link rel="stylesheet" href="catalog/view/smartv3/css/category.css">
	</div>
</section>








<div style="position:absolute; top:-9999px;">
<img src="catalog/view/theme/default/image/stars-<?php echo round($product['rating']); ?>.png" alt="<?php echo $review['rating']; ?>"  title="<?php echo round($product['rating'],1); ?> (<?php echo $product['reviews']; ?>)"/>
</div>
<div class="container-top">
    <div class="gpc">
        <!-- START CONTENT TOP -->
        <div class="content-top">
            <?php if ($products) { ?>
                <div class="product-filter global-no-value">
        <style>
        div.select span{font-size:12px;}
        .column-center .grid-item, .content-top .grid-item, .content-bottom .grid-item {height: 235px;}
        .specificatii {font-size: 11px;color: #888;line-height: 0px;text-align: center;width: 100%;margin-top: 11px;}
        <?php if ($category_id==52) { ?>
            .reset-filter,.filter-item,.outer3{display: none !important;}
        <?php } ?>
        </style>
                <?php if (isset($_GET['filter']) && $_GET['filter']=='57=345') { ?>
                  <img src="image/data/promo/page/980x85_Lichidare_<?php echo $promo_lang; ?>.jpg"><?php } ?>
       <h1 class="page_title">
                  <?php if (isset($_GET['filter']) && $_GET['filter']=='57=345') { ?>Lichidare stock <?php echo $heading_title; ?><?php } else { ?><?php echo $heading_title; ?> <?php } ?></h1>
                    <div class="sort styled-sort">
                      <select onchange="location = this.value;" class="sorting_input browser-default">
                      <option class="mobile-view" disabled selected><?php echo $text_sort; ?></option>
                        <?php foreach ($sorts as $sorts) { ?>
                        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                        <?php } else { ?>
                        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                        <?php } ?>
                        <?php } ?>
                      </select>
                    </div>          
                    <div class="mb-filter-button" style="display:none;">Filtre</div>
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
        <script type="text/javascript">
		$(document).ready(function () {
		    if (window.location.href.indexOf("57=359") > -1) {
		    	$('.macbook_promo').css("display","block");
            }
		});
		</script>
		 <img src="image/data/promo/nov2016/980x85_MacbookPro2016_<?php echo $promo_lang; ?>.jpg" class="macbook_promo" style="display:none;">
        <?php if ($category_id==199 || $category_id==200 || $category_id==201 || $category_id==202 || $category_id==203 || $category_id==204) { ?>
        <img src="image/data/promo/page/980x85_zeroprocente_<?php echo $promo_lang; ?>.jpg"><?php } ?>
        <?php if ($category_id==198) { ?>
        <img src="image/data/promo/page/980x85_promotoamna_<?php echo $promo_lang; ?>.jpg"><?php } ?>


            <?php if ($category_id==52 && (isset($_GET['filter']) && $_GET['filter']=='57=345')) { ?>

            <div class="subcategories global-module" style="display: block !important;">
                <ul class="list-global-module static-list-global-module" style="background: #ededed;width: 100%;">
                <li style="width: auto;border-right: 1px solid #fff;height: 32px;padding-top: 10px;padding-left: 10px;"><a href="//www.smart.md/telefoane/smartphones?filter=57=345" title="Hands Free">Smartphone</a></li>
                <li style="width: auto;border-right: 1px solid #fff;height: 32px;padding-top: 10px;padding-left: 10px;"><a href="//www.smart.md/accesorii-gsm/huse?filter=57=345" title="Huse">Huse</a></li>
                <li style="width: auto;border-right: 1px solid #fff;height: 32px;padding-top: 10px;padding-left: 10px;"><a href="//www.smart.md/accesorii-gsm/bluetooth?filter=57=345" title="Bluetooth">Bluetooth</a></li>
                <li style="width: auto;border-right: 1px solid #fff;height: 32px;padding-top: 10px;padding-left: 10px;"><a href="//www.smart.md/accesorii-gsm/folii?filter=57=345" title="Folii">Folii</a></li>
                <li style="width: auto;border-right: 1px solid #fff;height: 32px;padding-top: 10px;padding-left: 10px;"><a href="//www.smart.md/accesorii-gsm/hands-free?filter=57=345" title="Hands Free">Hands Free</a></li>
                </ul>
            </div>
            <?php } else { ?>
            <?php if ($categories) { ?>
                <div class="subcategories global-module">
                    <ul class="list-global-module static-list-global-module" style="background: #ededed;width: 100%;">
                        <?php foreach ($categories as $category) { ?>
                        <li style="width: auto;border-right: 1px solid #fff;height: 32px;padding-top: 10px;padding-left: 10px;"><a href="<?php echo $category['href']; ?>" title="<?php echo $category['name']; ?>"><?php echo $category['name']; ?></a></li>
                        <?php } ?>
                    </ul>
                </div>
            <?php } } ?>
                
            <?php echo $content_top; ?>
            <!-- START CATEGORY PAGE -->
            <div class="category-page">
                <?php if ($description) { ?>
                <div class="description global-no-value">
                <?php echo $description; ?>
                </div>
                <?php } ?>
                
                <?php if ($products) { ?>
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
                    <div class="grid-item">
                        <div class="image-content">
                            <?php if ($product['thumb']) { ?>
                            
                            <?php if ($product['label'] == 2) { ?>
                            <!--div><?php echo $promo_philips; ?></div-->
                            <?php } elseif ($product['label'] == 1) { ?>
                            <div style="position: absolute;margin-left: 50px;"><?php echo $credit0p_label; ?></div>
                            <!--div><?php echo $promo_samsung; ?></div-->
                            <?php } elseif ($product['label'] == 3) { ?>
                            <div style="position: absolute;margin-left: 50px;"><?php echo $credit0p_label; ?></div>
                            <?php } ?>
                            <div class="image">
                                <a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" id="p_image"><?php echo $product['labels']; ?>
                                <? if(in_array($product['product_id'], $products_promo)): ?>
                                    <img id="category_price_label" src="catalog/view/smartv3/img/Labels/40x140_label_aniversar_<?=$promo_lang; ?>.png">
                                <? endif; ?>
                                <?php if ($product['special']>0) { ?>
                                <!-- <img id="category_price_label" style="margin-left: 115px;" src="catalog/view/smartv3/img/Labels/75x75_Label_black.png"> -->
                                <?php } ?>
                                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" width="160" height="160" /></a>
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
                                <div class="price" <?php if ($product['price']==0) { ?>style="display:none"<?php } ?>>
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
                                <h3 class="name"><a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo $product['name']; ?></a>
                                <h4 class="specificatii"><?php echo $product['specificatii']; ?></h4>
                                </h3>
                            </div>
                            <div class="middle"></div>
                            <div class="bottom">
                                <a class="add add_cart" title="<?php echo $button_cart; ?>"><i class="<?php if($this->config->get('tranda_icon_cart') != '') { ?><?php echo $this->config->get('tranda_icon_cart'); ?><?php } else { ?>icon-shopping-cart<?php } ?>"></i></a>
                                <script type="text/javascript"><!-- 
                                    $(document).ready(function() {
                                        $( ".mb-filter-button" ).toggle(function() {
                                            $( ".filter-item" ).addClass( "activated" );
                                            $( ".close-filter" ).addClass( "activated" );
                                            $( ".filter-item-bg" ).addClass( "activatedbg" );
                                        }, function() {
                                          $( ".filter-item" ).removeClass( "activated" );
                                          $( ".close-filter" ).removeClass( "activated" );
                                          $( ".filter-item-bg" ).removeClass( "activatedbg" );
                                        });
                                        $("#fancybox").fancybox();
                                        $("a[rel=grid_latest_group]").fancybox({
                                            'titleFormat'       : function(title, currentArray, currentIndex, currentOpts) {
                                                return '<span id="fancybox-title-over"><?php echo $heading_title; ?> ' + (currentIndex + 1) + ' / ' + currentArray.length + (title.length ? ' &nbsp; ' + title : '') + '</span>';
                                            }
                                        });
                                    });
                            --></script>
                                <a class="add add_compare" onClick="addToCompare('<?php echo $product['product_id']; ?>');" title="<?php echo $button_compare; ?>"><i class="<?php if($this->config->get('tranda_icon_compare') != '') { ?><?php echo $this->config->get('tranda_icon_compare'); ?><?php } else { ?>icon-exchange<?php } ?>"></i></a>
                            </div>

                        </div>
                    </div>
                    <!-- end item -->
                    <?php } ?>
                </div>
                <div class="pagination"><?php echo $pagination; ?></div>
                <?php } ?>
                <?php if (!$categories && !$products) { ?>
                <div class="tranda_empty"><i class="icon-cogs info_icon"></i><?php echo $text_empty; ?></div>
                <div class="buttons">
                    <div class="right"><a href="<?php echo $continue; ?>" class="button"><i class="icon-share-alt"></i><?php echo $button_continue; ?></a></div>
                </div>
                <?php } ?>
            </div>
            <!-- END CATEGORY PAGE -->
        </div>
        <!-- END COLUMN CENTER -->
        <!-- START CONTENT BOTTOM -->
        <div class="content-bottom">
            <?php echo $content_bottom; ?>
        </div>
        <!-- END CONTENT BOTTOM -->
    </div>
</div>
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
                html += '<h4 class="specificatii">' + $(element).find('.specificatii').html() + '</h4></h3>';
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