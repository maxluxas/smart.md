<?php echo $header; ?>
<div style="position:absolute; top:-9999px;">
<img src="catalog/view/theme/default/image/stars-<?php echo round($product['rating']); ?>.png" alt="<?php echo $review['rating']; ?>"  title="<?php echo round($product['rating'],1); ?> (<?php echo $product['reviews']; ?>)"/>
</div>
<div class="container-top">
    <div class="gpc">
        <!-- START CONTENT TOP -->
        <div class="content-top">
            <div class="global-no-value desktop-view">
               <!--  <img src="image/data/promo/page/980x85_BlackWeek_<?=$promo_lang; ?>.jpg" class="page_title">          -->
            </div>
            <div class="mobile-view">
                <!-- <img src="image/data/promo/page/320x50_Mobile.jpg" class="page_title" style="width: 320px; height: auto;">          -->
            </div>
        </div>
    </div>
        <!-- END CONTENT TOP -->
</div>
<style type="text/css">
    .specificatii {font-size: 11px;color: #888;line-height: 0px;text-align: center;width: 100%;margin-top: 11px;}
</style>


<div class="container-bottom">

    <div class="gpc">
        <?php echo $column_left; ?>
        <?php echo $column_right; ?>
        <!-- START COLUMN CENTER -->
               
        <div class="column-center">
            <div class="subcategories global-module" style="display: block !important;">
                <ul class="list-global-module static-list-global-module" style="background: #ededed;width: 100%;">
                    <li style="width: auto;border-right: 1px solid #fff;height: 32px;padding-top: 10px;padding-left: 10px;"><a href="telefoane/smartphones?filter=57=358" title="Smartphones">Smartphones</a></li>
                    <li style="width: auto;border-right: 1px solid #fff;height: 32px;padding-top: 10px;padding-left: 10px;"><a href="laptopuri/notebook?filter=57=358" title="Laptopuri">Laptopuri</a></li>
                    <li style="width: auto;border-right: 1px solid #fff;height: 32px;padding-top: 10px;padding-left: 10px;"><a href="tablete-1/tablete?filter=57=358" title="Tablete">Tablete</a></li>
                </ul>
            </div>
                
            <!-- <?php echo $content_top; ?> -->
            <!-- START CATEGORY PAGE -->
            <div class="category-page">
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
                            <div class="image">
                                <a href="<?php echo $product['href']; ?>" onclick="ga('send', 'event', {
                                    eventCategory: 'Category',
                                      eventAction: 'Accesare produs',
                                       eventLabel: 'Click Imagine',
                                       eventValue: <?php echo $product['name']; ?>
                                });" title="<?php echo $product['name']; ?>" id="p_image"><?php echo $product['labels']; ?>
                                <!-- <img id="category_price_label" style="margin-left: 115px;" src="catalog/view/smartv3/img/Labels/75x75_Label_black.png"> -->
                                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" width="160" height="160" /></a>
                            </div>
                        </div>
                        <div class="panel-content">
                            <div class="upload-rating">
                            <?php if ($product['price']) { ?>
                            <?php if ($product['special']) { ?>
                            
                            <?php } ?>
                            <?php } ?>
                            <?php if ($product['rating']) { ?>
                            <div style="display:none;" class="rating rating<?php echo $product['rating']; ?>" data-original-title="<?php echo $product['reviews']; ?>" data-placement="top" rel="tooltip">
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-color color1"></i>
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-color color2"></i>
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-color color3"></i>
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-color color4"></i>
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-color color5"></i>
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-dark dark1"></i>
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-dark dark2"></i>
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-dark dark3"></i>
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-dark dark4"></i>
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-dark dark5"></i>
                            </div>
                            <?php } ?>
                            </div>
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
                                <h3 class="name"><a href="<?php echo $product['href']; ?>"  onclick="ga('send', 'event', {
                                        eventCategory: 'Category',
                                          eventAction: 'Accesare produs',
                                           eventLabel: 'Titlu produs',
                                           eventValue: <?php echo $product['name']; ?>
                                    });" title="<?php echo $product['name']; ?>"><?php echo $product['name']; ?></a>
                                <h4 class="specificatii"><?php echo $product['specificatii']; ?></h4>
                                </h3>

                                
                            </div>
                            <div class="middle"></div>
                            <div class="bottom">
                                <a class="add add_cart" onclick="addToCart('<?php echo $product['product_id']; ?>');ga('send', 'event', {
                                        eventCategory: 'Category',
                                          eventAction: 'Adauga in cos',
                                           eventLabel: '<?php echo $product['name']; ?>'
                                    });" title="<?php echo $button_cart; ?>"><i class="<?php if($this->config->get('tranda_icon_cart') != '') { ?><?php echo $this->config->get('tranda_icon_cart'); ?><?php } else { ?>icon-shopping-cart<?php } ?>"></i></a>
        <div class="quickview-hidden">
            <div class="quickview" id="quickview<?php echo $product['product_id']; ?>">               
                <?php if ($product['thumb']) { ?>
                <div class="left-image">
                    <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" /></a>
                </div>
                <?php } else { ?>
                <div class="no-image"><i class="icon-camera"></i></div>
                <?php } ?>
                <div class="right-info">
                    <h3><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h3>
                    <div class="price">
                    <?php if ($product['price']) { ?>
                        <?php if (!$product['special']) { ?>
                        <?php echo $product['price']; ?> <?php echo $currency; ?>
                        <?php } else { ?>
                        <span class="price-new"><?php echo $product['special']; ?> <?php echo $currency; ?></span>
                        <span class="price-old"><?php echo $product['price']; ?> <?php echo $currency; ?></span>
                        <?php } ?>
                    <?php } ?>

                    </div>
                    <div class="menu">
                        <div class="left">
                            <div class="mini_links">
                                <a href="<?php echo $product['href']; ?>"><i class="<?php if($this->config->get('tranda_icon_viewmore') != '') { ?><?php echo $this->config->get('tranda_icon_viewmore'); ?><?php } else { ?>icon-link<?php } ?>"></i><?php if($this->config->get('tranda_text_viewmore') != '') { ?><?php echo $this->config->get('tranda_text_viewmore'); ?><?php } else { ?>View More<?php } ?></a>
                                <a onClick="addToCompare('<?php echo $product['product_id']; ?>');"><i class="<?php if($this->config->get('tranda_icon_compare') != '') { ?><?php echo $this->config->get('tranda_icon_compare'); ?><?php } else { ?>icon-exchange<?php } ?>"></i><?php if($this->config->get('tranda_text_addcompare') != '') { ?><?php echo $this->config->get('tranda_text_addcompare'); ?><?php } else { ?>Add to Compare<?php } ?></a>
                           <!--     <a onClick="addToWishList('<?php echo $product['product_id']; ?>');"><i class="<?php if($this->config->get('tranda_icon_wishlist') != '') { ?><?php echo $this->config->get('tranda_icon_wishlist'); ?><?php } else { ?>icon-file-alt<?php } ?>"></i><?php if($this->config->get('tranda_text_addwishlist') != '') { ?><?php echo $this->config->get('tranda_text_addwishlist'); ?><?php } else { ?>Add to Wish List<?php } ?></a>-->
                            </div>
                            <a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button but_green"><i class="<?php if($this->config->get('tranda_icon_cart') != '') { ?><?php echo $this->config->get('tranda_icon_cart'); ?><?php } else { ?>icon-shopping-cart<?php } ?>"></i><?php echo $button_cart; ?></a>
                        </div>
                        <div class="right">
                            <?php if ($product['rating']) { ?>
                            <p><?php echo $product['reviews']; ?></p>
                            <div class="rating rating<?php echo $product['rating']; ?>">
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-color color1"></i>
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-color color2"></i>
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-color color3"></i>
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-color color4"></i>
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-color color5"></i>
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-dark dark1"></i>
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-dark dark2"></i>
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-dark dark3"></i>
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-dark dark4"></i>
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-dark dark5"></i>
                            </div>
                            <?php } else { ?>
                            <p>&nbsp;</p>
                            <div class="rating rating<?php echo $product['rating']; ?> rating-opac">
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-dark dark1"></i>
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-dark dark2"></i>
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-dark dark3"></i>
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-dark dark4"></i>
                                <i class="<?php if($this->config->get('tranda_icon_rating') != '') { ?><?php echo $this->config->get('tranda_icon_rating'); ?><?php } else { ?>icon-star<?php } ?> star-dark dark5"></i>
                            </div>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>                       
        </div>
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
                        <a class="add add_compare" onClick="addToCompare('<?php echo $product['product_id']; ?>');ga('send', 'event', {
                                eventCategory: 'Category',
                                  eventAction: 'Adauga in comparare',
                                   eventLabel: '<?php echo $product['name']; ?>'
                            });" title="<?php echo $button_compare; ?>"><i class="<?php if($this->config->get('tranda_icon_compare') != '') { ?><?php echo $this->config->get('tranda_icon_compare'); ?><?php } else { ?>icon-exchange<?php } ?>"></i></a>
                            </div>

                        </div>
                    </div>
                    <!-- end item -->
                    <?php } ?>
                </div>
                <div class="pagination"><?php echo $pagination; ?></div>
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