<?php echo $header; ?>
<link rel="stylesheet" type="text/css" href="catalog/view/smartv3/css/product.css?v=0.0.10397">
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/perfect-scrollbar/css/perfect-scrollbar.css?v=0.0.5"/>
<!-- CREDIT MODULE -->
<?php echo $CreditModule; ?>
<!-- CREDIT MODULE -->

<!-- CAPTCHA MODULE -->
<script src="https://www.google.com/recaptcha/api.js?onload=onloadCallbackCheckout&render=explicit&hl=<?= $language_code; ?>" async defer></script>
<div id="g-recaptcha-checkout" class="g-recaptcha" style="display: none;" data-badge="inline" data-size="invisible"></div>
<script type="text/javascript">
  let checkout_elem_id;
  var onloadCallbackCheckout = function() {
    checkout_elem_id = grecaptcha.render('g-recaptcha-checkout', {
      'sitekey' : '<?= RECAPTCHA_PUBLIC; ?>',
      'callback' : gRecaptchaSubmit
    });
  };
</script>

<!-- CAPTCHA MODULE -->

<div id="ccx_tr_2befcd2e1c6e65c43e3a1440eec2ea59"></div>
<div id="ccx_tr_c9be0d4f25eaf0759afb53fab491a76f"></div>
<script type="text/javascript">
  /* PUT YOUR VARIABLES HERE */
  var W2T_vars = ''
  + '/' + 'product_browsed'
  + '/' + '{"id":"<?= $product_id; ?>","price":"<?= $omniprice; ?>","in_basket":"<?= $product_to_bascket; ?>"}'
  ;
  /* END OF VARIABLES STRING */
  var tr_scr = document.createElement("script");
  tr_scr.type = "text/javascript";
  tr_scr.src = "//delivery.clickonometrics.pl/tracker=5862/track/shoppers"+W2T_vars+"/track.js";
  document.getElementById("ccx_tr_c9be0d4f25eaf0759afb53fab491a76f").appendChild(tr_scr);
</script>

<div class="popup-tradeIn">
  <div class="popup-tradein-overlay" onclick="popup_caller_close()">
  </div>
  <div class="popup-wrapper">
    <svg class="new-svg-icon popup-close" width="30" height="30" onclick="popup_caller_close()"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-close"></use></svg>
    <div class="title-tradein">
      <div class="popup-tradein-desktop">
        <?php echo $popup_tradein_desktop; ?>
      </div>
      <div class="popup-tradein-mobile">
        <?php echo $popup_tradein_mobile; ?>
      </div>
    </div>
    <div class="form-tradein">
      <form method="post" onsubmit="return false">
        <input type="text" id="numePrenumeTradeIn" name="numePrenumeTradeIn" value="" placeholder="<?php echo $numeprenume; ?>">
        <input type="number" id="telefonTradeIn" introdu-telefon name="telefonTradeIn" value="" placeholder="<?php echo $nrtelefon; ?>">
        <input type="text" name="tip_comanda" style="display: none" value="Trade-in">
        <input type="text" name="sku_produs" style="display: none" value="<?php echo $sku; ?>">
        <?php if($product_json) { ?>
          <input type="text" name="checkout_products_data" style="display: none" value='<?php echo $product_json; ?>'>
        <?php } ?>
        <input type="hidden" name="categ-produs" value="<?php echo $categ_produs; ?>">
        <input type="hidden" name="linkProdus" value="" id="linkProdus">
        <input type="text" name="roistat_visit" value="<?php echo $_COOKIE['roistat_visit']; ?>" style="display: none;">
        <input type="text" name="new_responsible_by_route" value="1" style="display: none;">
        <div class="nota-informare">
          <span>
            <?php echo $popup_notaclient; ?>
          </span>
        </div>
        <button class="leave-popup-tradein btn" id="sendTradeIn">
          <?php echo $send_tradein; ?>
        </button>
      </form>
      <div id="succesTradeIn">
        <?php echo $success_popup_tradein; ?>
      </div>
    </div>
  </div>
</div>

<script>
  $(document).ready(function () {
    document.getElementById('linkProdus').value = window.location.href;
    $("#sendTradeIn").click(function () {
      $('label.cta-error_field').remove();
      var num = $("#numePrenumeTradeIn").val();
      var tel = $("#telefonTradeIn").val();
      if(tel.indexOf('0') == 0) {
        tel = tel.substring(1);
      }
      var numLen = num.length;
      var telLen = tel.length;
      var telfvalue = $("#telefonTradeIn").val();
      if (num != '' && telfvalue != '' && telLen > 6 && (telfvalue.indexOf('6') == 0 || telfvalue.indexOf('7') == 0 || telfvalue.indexOf('0') == 0 || (telfvalue.indexOf('373') == 0 ))) {
        $("#succesTradeIn").fadeIn("slow");
        setTimeout(function () {
          $(".popup-tradeIn").fadeOut("slow");
          $(".popup-tradein-overlay").css("display","none");
          $("#succesTradeIn").css("display","none");
        },2000);
      }
      else {
        if ((numLen == 0)) {
          $("#numePrenumeTradeIn").css("border-bottom", "2px solid #e82b2b");
          $("#numePrenumeTradeIn").before('<label for="numePrenumeTradeIn" style="top:0!important;" class="cta-error_field">Scrie Numele Tau</label>');
        }
        else {
          $("#numePrenumeTradeIn").css("border-bottom", "2px solid mediumseagreen");
        }
        if ((telLen <= 6)) {
          if(telLen > 0) {
            $("#telefonTradeIn").css("border-bottom", "2px solid #e82b2b");
            $("#telefonTradeIn").before('<label for="telefonTradeIn" style="top:0!important;" class="cta-error_field">Numarul de telefon trebuie sa contina minim 7 simboluri</label>');
          }
          else {
            $("#telefonTradeIn").css("border-bottom", "2px solid #e82b2b");
            $("#telefonTradeIn").before('<label for="telefonTradeIn" style="top:0!important;" class="cta-error_field">Scrie Numarul Tau</label>');
          }
        }
        else {
          if(telfvalue.indexOf('6') !== 0 && telfvalue.indexOf('7') !== 0 && telfvalue.indexOf('0') !== 0) {
            $("#telefonTradeIn").css("border-bottom", "2px solid #e82b2b");
            $("#telefonTradeIn").before('<label for="telefonTradeIn" style="top:0!important;" class="cta-error_field">Format de numar invalid</label>');
          }
          else {
            $("#telefonTradeIn").css("border-bottom", "2px solid mediumseagreen");
          }
        }
      }
    });
  });
</script>


<script>
  /* BONUS Pagina Produs */
  /*function popup_open_bonus() {
    $(".popup_bonusuri_cond").fadeToggle(500);
  }*/
  /* END BONUS Pagina Produs */

  function popup_open_livrare() {
    $(".popup_livrare_cond").fadeToggle(300);
  }

  function popup_caller_open() {
    $(".popup-tradeIn").fadeIn(200);
    $(".popup-tradein-overlay").css("display","block");
  }

  function popup_caller_close() {
    $(".popup-tradeIn").fadeOut(200);
    $(".popup-tradein-overlay").css("display","none");
  }
</script>

<div class="popup_montare_cond">
  <div class="popup_montare_overlay"></div>
  <div class="popup_montare_container">
    <svg class="new-svg-icon icon_close_popup_montare"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-close2"></use></svg>
    <img width="539" height="432" class="popup_montare_img_desk img_lazy_load" src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="catalog/view/smartv3/img/popup_montare/montare_<?php echo $lang; ?>-o.png" alt="" title="">
    <img width="300" height="483" class="popup_montare_img_mob img_lazy_load" src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="catalog/view/smartv3/img/popup_montare/montare_mob_<?php echo $lang; ?>-o.png" alt="" title="">
  </div>
</div>
<script>
  $(document).ready(function(){
    $(".popup_montare_overlay, .icon_close_popup_montare, #montaj_popup").click(function(){
      $(".popup_montare_cond").fadeToggle(500);
    });
  });
</script>

<div class="popup_livrare_cond">
  <div class="popup_livrare_overlay" onclick="popup_open_livrare()"></div>
  <div class="popup_livrare_container">
    <svg class="new-svg-icon icon_close_popup_livrare" onclick="popup_open_livrare()"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-close2"></use></svg>
    <div class="livrare-content">
    	<div class="text-livrare">
    		<?php echo $livrare_text; ?>
    	</div>
    </div>
  </div>
</div>

<!-- BONUS Pagina Produs -->
<!-- <div class="popup_bonusuri_cond">
  <div class="popup_bonusuri_overlay" onclick="popup_open_bonus()"></div>
  <div class="popup_bonusuri_container">
    <svg class="new-svg-icon icon_close_popup_bonusuri" onclick="popup_open_bonus()"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-close2"></use></svg>
    <div class="popup_bonusuri_content">
      <div class="container_rules_bonus">
        <div class="img_arrow_bonus"></div>
        <?php echo $bonusuri_1; ?>
      </div>

      <div class="container_rules_bonus">
        <div class="img_arrow_bonus"></div>
        <?php echo $bonusuri_2; ?>
      </div>

      <div class="container_rules_bonus">
        <div class="img_arrow_bonus"></div>
        <?php echo $bonusuri_3; ?>
      </div>

      <div class="container_rules_bonus">
        <div class="img_arrow_bonus"></div>
        <?php echo $bonusuri_4; ?>
      </div>

    </div>
  </div>
</div> -->
<!-- END BONUS Pagina Produs -->

<script>
  $(document).on('fbq-init', function() {
    fbq('track', 'ViewContent', {
      value: <?php if ($special) { echo str_replace(" ", "", $special); } else { echo str_replace(" ", "", $price); } ?>,
      currency: 'USD',
      content_ids: ["<?php echo $sku; ?>"],
      content_type: 'product'
    });
  });
</script>
<script>
	window.dataLayer = window.dataLayer || [];
	window.dataLayer.push({
		'section_of_website' : 'product',
		 <?php foreach($categories_path as $key => $path){ ?>
      'prod_cat_<?=$key?>' : '<?=$path?>',
      <?php } ?>
	});
</script>
<script>
  gtag('event', 'view_item', {'send_to': 'AW-984413743',
    'dynx_itemid': '<?php echo $sku; ?>',
    'dynx_pagetype':'offerdetail',
    'dynx_totalvalue': <?php if ($special) { echo str_replace(" ", "", $special); } else { echo str_replace(" ", "", $price); } ?>,
    'google_business_vertical': 'custom'
  });
</script> 

<div itemscope itemtype="//schema.org/Product" id="content">
  <div style="display: none;">
  <span itemprop="model"><?php echo $heading_title; ?></span>
  <meta itemprop="brand" content="<?php echo $brand_name; ?>">
  <meta itemprop="name" content="<?php echo $heading_title; ?>">
  <meta itemprop="category" content="<?php echo $category_url; ?>">
  <span itemprop="description"><?php if($description) { echo $description; } else { echo $heading_title; } ?></span>
  <link itemprop="url" href="<?php echo $product_href; ?>" />
  <span itemprop="sku"><?php echo $sku; ?></span>
  <span itemprop="mpn"><?php echo $sku; ?></span>
  <div itemprop = "offers" itemscope itemtype = "//schema.org/Offer">
    <?php if($special) { ?>
      <meta itemprop="price" content="<?php echo number_format(str_replace(' ', '', $special), 2, '.', ''); ?>" />
    <?php } else { ?>
      <meta itemprop="price" content="<?php echo number_format(str_replace(' ', '', $price), 2, '.', ''); ?>" />
    <?php } ?>
    <meta itemprop="priceCurrency" content="MDL" />
    <meta itemprop="priceValidUntil" content="<?php echo date('c', (time() + 60 * 24 * 60 * 60)); ?>" />
    <?php if($stock_status_id == '7') { ?>
      <link itemprop="availability" href="//schema.org/InStock" />In stock
    <?php } else if($stock_status_id == '5') { ?>
      <link itemprop="availability" href="//schema.org/OutOfStock" />Out Of Stock
    <?php } else if($stock_status_id == '8') { ?>
      <link itemprop="availability" href="//schema.org/PreOrder" />Pre Order
    <?php } else { ?>
      <link itemprop="availability" href="//schema.org/SoldOut" />Sold Out
    <?php } ?>
    <link itemprop="url" href="<?= $product_href; ?>" />
  </div>

  <div itemprop="additionalProperty" itemscope itemtype="https://schema.org/PropertyValue">
    <meta itemprop="name" content="Rata">
    <meta itemprop="value" content="<?=$credit_rata_value ?>"/>
    <meta itemprop="unitText" content="MDL/Luna">
  </div>

  <div itemprop="aggregaterating" itemscope itemtype="//schema.org/AggregateRating">
    <img width="83" height="15" class="img_lazy_load" src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="catalog/view/theme/default/image/stars-5.png" alt="Best choice" title="Best choice" />
    <span itemprop="ratingValue">5</span>
    <span itemprop="reviewCount"><?php echo ceil($product_id/100000); ?></span>
  </div>
  <div itemprop="review" itemscope itemtype="//schema.org/Review" class="review-list">
    <span itemprop="author">smart.md</span>
    <time itemprop="datePublished" datetime="2013-01-12"></time>
    <div class="rating" itemprop="reviewRating" itemscope itemtype="//schema.org/Rating">
      <meta itemprop="worstRating" content = "1" />
      <meta itemprop="ratingValue" content="5" />
      <meta itemprop="bestRating" content="5" />
    </div>
    <div class="text" itemprop="reviewBody"></div>
  </div>
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


<!-- Light-Gallery -->
<link media="none" onload="if(media!='all')media='all'" href="catalog/view/javascript/light-gallery/light-gallery.min.css?v=0.0.4" rel="stylesheet">
<script defer="defer" type="text/javascript" src="catalog/view/javascript/light-gallery/light-gallery.min.js?v=0.0.2"></script>
<script src="catalog/view/smartv3/js/lazyload.min.js?v=1.0.0"></script>
<script defer src="catalog/view/smartv3/js/product.js?v=0.0.39"></script>
<!-- Light-Gallery -->

<div class="__new_info_product">

  <!-- Custom banners -->

  <?php $custom__banners = false; ?>

  <?php if ($custom__banners) { ?>
    <a href="#" class="custom__banners_desk">
        <img src="/image/data/results-photos/banners/visadecdesk.png">
    </a>

    <a href="#" class="custom__banners_mob">
        <img src="https://smart.md/image/data/results-photos/banners/visadecmob.png">
    </a>
  <?php } ?>

  <!-- Custom banners -->

  <div class="__new_product_name_left">
    <!-- BREADCRUMB -->
    <div class="__new_breadcrumb">
      <svg class="new-svg-icon icon-left mobile_icon_version"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg>
      <?php $lastBreadcrumb = end($breadcrumbs); ?>
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <a <?php if($lastBreadcrumb == $breadcrumb) { echo 'class="current-breadcrumb"'; } ?> href="<?php echo $breadcrumb['href']; ?>"><?php if($lastBreadcrumb == $breadcrumb) { echo ''; } ?><?php echo $breadcrumb['text']; ?></a><?php echo $breadcrumb['separator']; ?>
      <?php } ?>
     </div>
    <!-- BREADCRUMB -->

    <?php
      if (in_array(749, $categories) || in_array(7672, $categories)) {
        $roistat_class = 'roistatphone-electrocasnice';
      } else if(in_array(5968, $categories) || in_array(6477, $categories) || in_array(5766, $categories) || in_array(5268, $categories) || in_array(1054, $categories) || in_array(952, $categories) || in_array(7739, $categories)) {
        $roistat_class = 'roistatphone-mobila';
      } else if(in_array(992, $categories) || in_array(6466, $categories) || in_array(8819, $categories) || in_array(1263, $categories) || in_array(7686, $categories) || in_array(933, $categories) || in_array(7675, $categories)) {
        $roistat_class = 'roistatphone-instrumente';
      } else if(in_array(8463, $categories) || in_array(977, $categories)) {
        $roistat_class = 'roistatphone-ingrij-pers';
      } else if(in_array(8484, $categories)) {
        $roistat_class = 'roistatphone-sport';
      } else if(in_array(7025, $categories)) {
        $roistat_class = 'roistatphone-alimentare';
      } else {
        $roistat_class = 'roistatphone-electronice';
      }
    ?>

    <div class="col s12 m12 mai-ieftin mobile-ieftin">
      <a class="mai-ieftin_link __new_comanda_acum_mobile <?= $roistat_class; ?>" href="tel:079 002 751">
      <img src="/image/data/call-calling2.png">
      <span>079002751</span></a>
    </div>
    <?php if($stock_status_id != '5') { ?>
    <!-- Product Name -->
    <div id="__new_product_names" class="__new_product_names">
      <h1 class="denumire_produs"><?php echo $heading_title; ?></h1>
      <div class="__new_cod_produs">
        <svg class="new-svg-icon roistat_sku" width="18" height="18"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-label"></use></svg><span><?php echo $sku; ?></span>
      </div>
    </div>
    <!-- Product Name -->
    <?php } ?>
  </div>

  <div class="__new_product_name_right">
    <!-- Product CTA -->
    <aside id="banner_cta" class="__new_banner_cta">
      <div id="label" class="cta deskt">
        <a class="nr_telefon" onclick="new_open_cta_popup()" href="tel:079002751">
          <img src="/image/data/call-calling2.png" />
          <span class="track_number_desktop <?= $roistat_class; ?>">079002751</span>
        </a>
      </div>
    </aside>
    <!-- Product CTA -->
  </div>

  <?php if($same_category_products && $stock_status_id == '5' ) { ?>
    <div class="__new_products_blocks">
      <h2 class="oos_title"><?= $text_oos_similar; ?></h2>
      <div class="row __oos_similar __single_product_slider oos_slider">
        <?php foreach ($same_category_products as $product) { ?>
          <?php include DIR_APPLICATION . '/view/theme/smart/template/product/product_card.tpl' ; ?>
        <?php } ?>
      </div>
    </div>
  <?php } ?>

    <?php if($stock_status_id == '5') { ?>
    <!-- Product Name -->
    <div id="__new_product_names" class="__new_product_names">
      <h1 class="denumire_produs"><?php echo $heading_title; ?></h1>
      <div class="__new_cod_produs">
        <svg class="new-svg-icon roistat_sku" width="18" height="18"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-label"></use></svg><span><?php echo $sku; ?></span>
      </div>
    </div>
    <!-- Product Name -->
    <?php } ?>
  <div class="__new_product_details <?php if($stock_status_id == '5') { ?>out_out_stock<?php }?>">
    <div class="__new_product_details_left">
      <div id="product_P" class="gallery-product">
        <a class="gall-prev" onclick="plusSlidesGall(-1)">
          <svg class="new-svg-icon icon-left"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg>
        </a>
        <a class="gall-next" onclick="plusSlidesGall(1)">
          <svg class="new-svg-icon icon-right"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg>
        </a>
        <?php if ($thumb) { ?>
          <div class="thumbnails_cont">
            <ul>
              <? /* BONUS Pagina Produs */ /* if ((in_array(4485, $categories)) || (in_array(4091, $categories)) || (in_array(3089, $categories)) || (in_array(4556, $categories)) || (in_array(4818, $categories)) || (in_array(4141, $categories))) { ?>
                <div class="conatiner_label_bonus" onclick="popup_open_bonus()">
                  <?php if ($special2) { ?>
                    <span class="bonusuri_label">
                      <?php echo number_format(ceil(0.05 * $special2), 0, ",", " "); ?>
                      <?php echo $bonusuri_pr; ?>
                    </span>
                  <?php } else { ?>
                    <span class="bonusuri_label">
                      <?php echo number_format(ceil(0.05 * $price2), 0, ",", " "); ?>
                      <?php echo $bonusuri_pr; ?>
                    </span>
                  <?php } ?>
                </div>
              <?php } */ /* END BONUS Pagina Produs */ ?>

              <?php foreach($product_labels as $product_label) { ?>
                <?php if(isset($product_label['url']) && !empty($product_label['url'])) { ?>
                  <a target="_blank" class="__new_product_labels"  style="background:  <?= $product_label['color'] ?>; color: <?= $product_label['text_color'] ?>;"  href="<?= $product_label['url']; ?>">
                <?php } else { ?>
                  <div class="__new_product_labels" style="background:  <?= $product_label['color'] ?>; color: <?= $product_label['text_color'] ?>;">
                <?php } ?>
                    <span class="__new_label_text"><?= $product_label['name']; ?></span>
                <?php if(isset($product_label['url']) && !empty($product_label['url'])) { ?>
                  </a>
                <?php } else { ?>
                  </div>
                <?php } ?>
              <?php } ?>

              <?php if(in_array($sku, $products_14feb_label)) { ?>
                <div class="container_label_14feb">
                	<span class="feb_label"><!-- <?php echo $label_14feb; ?> -->Love Season -<?php echo ceil((($price2 - $special2)/$price2)*100); ?>%</span>
                </div>
              <?php } ?>
                <li class="gall-slider">
                  <img width="536" height="536" class="lazy" itemprop="image" src="<?= $placeholder_lazy_slider; ?>" data-src="<?php echo $popup; ?>" alt="<?= $heading_title; ?>" title="<?= $heading_title; ?>"/>
                  <div class="__new-smart-loader"></div>
                </li>
              <?php foreach ($images as $image) { ?>
                <li class="gall-slider">
                  <img width="536" height="536" class="lazy" itemprop="image" src="<?= $placeholder_lazy_slider; ?>" data-src="<?php echo $image['popup']; ?>" alt="<?= $heading_title; ?>" title="<?= $heading_title; ?>"/>
                </li>
              <?php } ?>
            </ul>
          </div>
        <?php } ?>
        <script>
          var slideIndex = 1;
          function plusSlidesGall(n) {
            slideIndex += n;
            showSlidesGall(slideIndex);
          }
          function currentSlideGall(n) {
            showSlidesGall(slideIndex = n);
          }
          function currentSlide(n) {
            showSlidesGall(slideIndex = n);
          }
          function showSlidesGall(n) {
            var i;
            var slides = document.getElementsByClassName("gall-slider");
            if (n > slides.length) {
              slideIndex = 1}
            if (n < 1) {
              slideIndex = slides.length}
            for (i = 0; i < slides.length; i++) {
              slides[i].style.display = "none";
            }
            $(slides[slideIndex-1]).fadeIn(500);
          }
        </script>
      </div>



      <div id="Top_produs_slideshow" class=" slide" >
         <?php foreach($product_labels as $product_label) { ?>
          <?php if(isset($product_label['url']) && !empty($product_label['url'])) { ?>
            <a target="_blank" class="__new_product_labels"  style="background:  <?= $product_label['color'] ?>; color: <?= $product_label['text_color'] ?>;"  href="<?= $product_label['url']; ?>">
          <?php } else { ?>
            <div class="__new_product_labels" style="background:  <?= $product_label['color'] ?>; color: <?= $product_label['text_color'] ?>;">
          <?php } ?>
              <span class="__new_label_text"><?= $product_label['name']; ?></span>
          <?php if(isset($product_label['url']) && !empty($product_label['url'])) { ?>
            </a>
          <?php } else { ?>
            </div>
          <?php } ?>
        <?php } ?>
        <a class="mobile_slider-prev">
          <svg class="new-svg-icon icon-left"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg>
        </a>
        <a class="mobile_slider-next">
          <svg class="new-svg-icon icon-right "><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg>
        </a>
        <div class="slider top_slider">
          <ul class="slides top_slides">
            <?php if ($thumb) { ?>
              <li>
                <a href="<?php echo $popup; ?>" class="js-Light-Gallery">
                  <img class="img_lazy_load" width="536" height="536" data-src="<?php echo $popup; ?>" data-group="product" alt="<?= $heading_title; ?>" title="<?= $heading_title; ?>"/>
                </a>
              </li>
            <?php } ?>
            <?php foreach ($images as $image) { ?>
              <li>
                <a href="<?php echo $image['popup']; ?>" class="js-Light-Gallery">
                  <img class="img_lazy_load" width="536" height="536" data-src="<?php echo $image['popup']; ?>" data-group="product" alt="<?= $heading_title; ?>" title="<?= $heading_title; ?>"/>
                </a>
              </li>
            <?php } ?>
          </ul>
        </div>

        <? /* BONUS Pagina Produs */ /* if ((in_array(51, $categories)) || (in_array(372, $categories)) || (in_array(749, $categories)) || (in_array(416, $categories)) || (in_array(1369, $categories)) || (in_array(1329, $categories))) { ?>
          <div class="conatiner_label_bonus" onclick="popup_open_bonus()">
            <?php if ($special2) { ?>
              <span class="bonusuri_label">
                <?php echo number_format(ceil(0.05 * $special2), 0, ",", " "); ?>
                <?php echo $bonusuri_pr; ?>
              </span>
            <?php } else { ?>
              <span class="bonusuri_label">
                <?php echo number_format(ceil(0.05 * $price2), 0, ",", " "); ?>
                <?php echo $bonusuri_pr; ?>
              </span>
            <?php } ?>
          </div>
        <?php } */ /* END BONUS Pagina Produs */ ?>

        <?php if(in_array($sku, $products_14feb_label)) { ?>
          <div class="container_label_14feb">
            <span class="feb_label"><!-- <?php echo $label_14feb; ?> -->Love Season -<?php echo ceil((($price2 - $special2)/$price2)*100); ?>%</span>
          </div>
        <?php } ?>
      </div>
      <script>
        $(function(){
          var opened = false;
          $(document).on('click', '.js-Light-Gallery', function(e) {
              if(opened === false) {
                e.preventDefault();
                opened = true;
                $(".js-Light-Gallery").SmartPhoto({
                  arrows: false,
                  animationSpeed: 500,
                  useOrientationApi: true
                });
                $(this).find('img').click();
              }
          });
        });
      </script>
      <?php if($stock_status_id != '5') { ?>
      <article id="preferinte" class="preferinte_center">
        <aside class="prom_produs">
            <div class="__new_atuu_product">
              <div class="__new_atuu_product_img_container">
                  <img alt="Livrare gratuita Chisinau" class="__new_atuu_product_img" src="/catalog/view/smartv3/img/__new_product_images/ridicare_magazin.png" alt="" title="">
              </div>
              <span class="__new_atuu_product_text"><a class="__new_atuu_bold_text"><?php echo $atuu_ridicare_produs; ?></a>
                <br>
                <?php if(isset($delivery_chisinau)) { ?> 
                
                  <div class="__new_green_text"><?= $delivery_chisinau; ?></div>

                <?php } ?>

              </span>
            </div>
        	  <div class="__new_atuu_product">
            	<div class="__new_atuu_product_img_container">
              		<img alt="Livrare gratuita Chisinau" class="__new_atuu_product_img" src="/catalog/view/smartv3/img/__new_product_images/livrare_chisinau.png" alt="" title="">
            	</div>
            	<span class="__new_atuu_product_text"><a class="__new_atuu_bold_text"><?php echo $livrare_chisinau_atuu; ?></a>
                <br>
                <?php if(isset($delivery_chisinau) && isset($pret_livrare_chisinau)) { ?>
                  
                    <div><?= $pret_livrare_chisinau; ?>, <span class="__new_green_text"><?=$delivery_chisinau; ?></span></div>
                  
                <?php } else if(isset($pret_livrare_chisinau)) { ?>
                    
                  <div><?= $pret_livrare_chisinau; ?></div>
                  
                <?php } else if(isset($delivery_chisinau)) { ?>
                  
                  <div class="__new_green_text"><?= $delivery_chisinau; ?></div>
                  
                <?php } ?>

              </span>
          	</div>
          	<div class="__new_atuu_product">
            	<div class="__new_atuu_product_img_container">
              		<img alt="Livrare gratuita Moldova" class="__new_atuu_product_img" src="/catalog/view/smartv3/img/__new_product_images/livrare_moldova.png" alt="" title="">
            	</div>
            	<span class="__new_atuu_product_text"><a class="__new_atuu_bold_text"><?php echo $livrare_moldova_atuu; ?></a>
                <br>
            

                <?php if(isset($pret_livrare_regiuni_express) && isset($delivery_express)) { ?>

                  <div class="__new_margin_bottom"><?= $pret_livrare_regiuni_express; ?>, <span class="__new_green_text"><?= $delivery_express; ?></span></div>

                <?php } else if(isset($pret_livrare_regiuni_express)) { ?>

                  <div class="__new_margin_bottom"><?= $pret_livrare_regiuni_express; ?></div>

                <?php } else if(isset($delivery_express)) { ?>

                  <div class="__new_green_text"><?= $delivery_express; ?></div>

                <?php } ?>

              </span>
          	</div>

            <!-- <?php if(isset($need_avans_text)) { ?>
              <div class="__new_atuu_product __new_atuu_product_avans_element">
                <span class="__new_atuu_product_text __new_atuu_avans_text"><?= $need_avans_text; ?></span>
              </div>
            <?php } ?> -->

          <?php if ($garantie_atuu) { ?>

            <div class="__new_atuu_product">
              <div class="__new_atuu_product_img_container">
                  <img alt="" class="__new_atuu_product_img" src="/catalog/view/smartv3/img/__new_product_images/ridicare_magazin.png" alt="" title="">
              </div>
              <span class="__new_atuu_product_text"><a class="__new_atuu_bold_text"><?php echo $garantie_atuu; ?></a>
                <br>
              </span>
            </div>

          <?php } ?>

          <?php if ($livrare_rapid) { ?>

            <div class="__new_atuu_product">
              <div class="__new_atuu_product_img_container">
                  <img alt="" class="__new_atuu_product_img" src="/catalog/view/smartv3/img/__new_product_images/warranty.png" alt="" title="">
              </div>
              <span class="__new_atuu_product_text"><a class="__new_atuu_bold_text"><?php echo $livrare_rapid; ?></a>
                <br>
              </span>
            </div>

          <?php } ?>

          <?php if ($livrare_plata) { ?>

            <div class="__new_atuu_product">
              <div class="__new_atuu_product_img_container">
                  <img alt="" class="__new_atuu_product_img" src="/catalog/view/smartv3/img/__new_product_images/ridicare_magazin.png" alt="" title="">
              </div>
              <span class="__new_atuu_product_text"><a class="__new_atuu_bold_text"><?php echo $livrare_plata; ?></a>
                <br>
              </span>
            </div>

          <?php } ?>

           <?php if ($livrare_gratuit) { ?>

            <div class="__new_atuu_product">
              <div class="__new_atuu_product_img_container">
                  <img alt="" class="__new_atuu_product_img" src="/catalog/view/smartv3/img/__new_product_images/ridicare_magazin.png" alt="" title="">
              </div>
              <span class="__new_atuu_product_text"><a class="__new_atuu_bold_text"><?php echo $livrare_gratuit; ?></a>
                <br>
              </span>
            </div>

          <?php } ?>

          <?php if ($consultanta_atuu) { ?>

            <div class="__new_atuu_product">
              <div class="__new_atuu_product_img_container">
                  <img alt="" class="__new_atuu_product_img" src="/catalog/view/smartv3/img/__new_product_images/ridicare_magazin.png" alt="" title="">
              </div>
              <span class="__new_atuu_product_text"><a class="__new_atuu_bold_text"><?php echo $consultanta_atuu; ?></a>
                <br>
              </span>
            </div>

          <?php } ?>

          <?php if ($opinii_atuu) { ?>

            <div class="__new_atuu_product">
              <div class="__new_atuu_product_img_container">
                  <img alt="" class="__new_atuu_product_img" src="/catalog/view/smartv3/img/__new_product_images/ridicare_magazin.png" alt="" title="">
              </div>
              <span class="__new_atuu_product_text"><a class="__new_atuu_bold_text"><?php echo $opinii_atuu; ?></a>
                <br>
              </span>
            </div>

          <?php } ?>

          <?php if ($showroom_atuu) { ?>

            <div class="__new_atuu_product">
              <div class="__new_atuu_product_img_container">
                  <img alt="" class="__new_atuu_product_img" src="/catalog/view/smartv3/img/__new_product_images/ridicare_magazin.png" alt="" title="">
              </div>
              <span class="__new_atuu_product_text"><a class="__new_atuu_bold_text"><?php echo $showroom_atuu; ?></a>
                <br>
              </span>
            </div>

          <?php } ?>
        </aside>
        <div class="variation_container">
        <!--start similar color-->
          <?php if ($show_similar && empty($variations['options'])) { ?>
          <div id="tab-similar" class="tab-content col s6">
            <div id="similar_container" class="similar_container">
              <div class="culoare_produs">
                <?php echo $disponibil_colors; ?>
              </div>
              <div class="similar_list" id="similar_products">
                <?php echo $similar; ?>
              </div>
            </div>
          </div>
          <?php } ?>
        <!-- end similar color-->

        
        <!--start similar memory-->
        <?php if (!empty($product_memory) && empty($variations['options'])) { ?>
          <div id="tab-similarm" class="tab-content col s6">
            <div id="similarm_container" class="similarm_container">
              <div class="memorii_produs">
                <?php echo $memorii; ?>
              </div>
              <div class=" similarm_list" id="similarm_products">
                <div class="row circles">
                  <?php foreach ($product_memory as $resultm) {
                        $pieces = explode(" ", $resultm['text']);
                      ?>
                  <a href="index.php&route=product/product&product_id=<?php echo $resultm['product_id'] ?>" class="memory_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $resultm['image']; ?>' style='width:100px;'>">
                    <div class="col s3 col_aria ">
                      <aside class="cirle mem">
                        <p>
                          <?php echo $pieces[0]; ?>
                        </p>
                      </aside>
                    </div>
                  </a>
                  <?php } ?>
                </div>
              </div>
            </div>
          </div>
        <?php } ?>
        <!-- end similar memory-->

        <!--start variation memory-->
        <?php foreach($variations['options'] as $key => $options ) { ?>
          <?php if ($key !== 'culoare') { ?>
          <div id="tab-<?=$key?>" class="tab-content tab-variations col s6">
            <div class="similarm_container">
              <div class="memorii_produs">
                <?php echo $options['name']; ?>
              </div>
              <div class=" similarm_list" id="var_similarm_products">
                <div class="circles">
                  <?php foreach ($options['products'] as $product) {
                      ?>
                  <a  rel="canonical" href="<?= $product['href']; ?>"
                    class="memory_link " rel="tooltip"
                    data-placement="bottom">
                    <div class="col ">
                      <?php if(isset($product['thumb'])) { ?>
                        <img class="var_img" src="<?= $product['thumb']?>" alt="<?= $product['title']?>">
                      <?php } else if(isset($product['color'])) { ?>
                        <aside class="cirle mem" style="background-color: <?= $product['color'] ?>">
                        <p>
                        </p>
                        </aside>
                      <?php } else {?>
                      <aside class="cirle mem">
                        <p>
                          <?= $product['value'] ?>
                        </p>
                        </aside>
                      <?php } ?>
                    </div>
                  </a>
                  <?php } ?>
                </div>
              </div>
            </div>
          </div>
          <?php } ?>
        <?php } ?>
        <!-- end variation memory-->
        </div>
      </article>

   
      <div class="mobile_dialog __new_product_details_right">
      <div class="dialog product-buy-dialog">
        <?php if($consultant_info) { ?>
          <table class="__logged_user_product_info">
            <tbody>
              <?php if(isset($consultant_info['vendor']) && !empty($consultant_info['vendor'])) { ?>
                <tr>
                  <th>FURNIZOR</th>
                  <td><?= $consultant_info['vendor']; ?></td>
                </tr>
              <?php } ?>
              <?php if(isset($consultant_info['priceaq']) && !empty($consultant_info['priceaq'])) { ?>
                <tr>
                  <th>PRET ACHIZITIE</th>
                  <td><?= $consultant_info['priceaq']; ?></td>
                </tr>
              <?php } ?>
              <?php if(isset($consultant_info['profit_lei']) && !empty($consultant_info['profit_lei']) && isset($consultant_info['profit_percent']) && !empty($consultant_info['profit_percent'])) { ?>
                <tr>
                  <th>PROFIT</th>
                  <td><?= $consultant_info['profit_lei']; ?>; <?= $consultant_info['profit_percent']; ?></td>
                </tr>
              <?php } ?>
              <tr>
                <th>MODEL</th>
                <td><?= $model; ?></td>
              </tr>

              <?php if(isset($consultant_info['url_redirect_vendor']) && !empty($consultant_info['url_redirect_vendor'])) { ?>
                <tr>
                  <td colspan="2"><a target="_blank" href="<?= $consultant_info['url_redirect_vendor']; ?>">URL VENDOR</a></td>
                </tr>
              <?php } ?>

            </tbody>
          </table>
        <?php } ?>


        
        
        <?php if(!$exist_credit || $stock_status_id == '5') { $is_one_block = true;  } else { $is_one_block = false; } ?>
        <div class="fiexed_dialog <?php if($is_one_block) { echo '__new_fiexed_padding'; } ?>">
          <?php if ($quantity == '1000') { ?>
            <div>
              <div class="row">
                <div class="col s12">
                  <?php echo $text_info_precomanda; ?>
                </div>
              </div>
              <div class="row">
                <div class="input-field col s12" style="width: 80%;margin-left: 10%;">
                  <input id="precomanda_nume" type="text" class="validate">
                  <label style="text-align:left;" for="first_name">
                    <?php echo $numeprenume; ?>
                  </label>
                </div>
                <div class="input-field col s12" style="width: 80%;margin-left: 10%;">
                  <input id="precomanda_telefon" type="number" class="validate">
                  <label style="text-align:left;" for="precomanda_telefon">
                    <?php echo $nrtelefon; ?>
                  </label>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="phone_error" style="margin-bottom: 10px;">
              </div>
              <button type="button" onclick="IsEmptys();" class="btn waves-effect waves-light precomanda" style="color: #000;">
                <?php echo $text_buton_precomanda; ?>
              </button>
            </div>
          <?php } else { ?>
        <div class="row_col price_col <?php if($is_one_block) { echo 'without__credit'; } ?>">
              <?php if($stock_status_id != '5') { ?>
          <div class="row col <?php if($is_one_block) { echo 's5 m12 __new_align-left'; } else { echo 's12 m12'; } ?>">
                  <div style="display: none;">
                    <?php echo $special; ?>
                  </div>
                  <?php if (!$special) { ?>
                    <span class="has_not_old_price">
                    </span>
                    <div class="single_price">
                      <span id="new_price">
                        <?php echo $price; ?> 
                        <?php echo $product_currency; ?>
                      </span>
                    </div>
                  <?php } else { ?>
                    <style type="text/css">.fiexed_dialog{
                      padding-top:20px;
                      }
                    </style>
                    <div class="old_price top_pr">
                      <span class="oldprice_new">
                        <span style="text-decoration: line-through;">
                          <?php echo $price." "; echo $product_currency; ?>
                        </span>
                        <span class="procent_minus">(<?php if (ceil((($price2 - $special2)/$price2) * 100) > 0) { echo "-"; } else { echo "+"; } ?>
                          <?php if (ceil((($price2 - $special2)/$price2) * 100) < 0) { echo ceil((($price2 - $special2)/$price2) * 100) * -1; } else { echo ceil((($price2 - $special2)/$price2) * 100); } ?>%)
                        </span>
                      </span>
                      <div id="new_price" class="floating" style="margin-top: 5px;">
                        <span class="new_price_number">
                          <?php echo $special; ?> 
                          <?php echo $product_currency; ?>
                        </span>
                      </div>
                    </div>
                  <?php } ?>
                </div>
              <?php } ?>
          <div class="col row <?php if($is_one_block) { echo 's7 m12 __new_btn_fullwidth'; } else { echo 's12 m12'; } ?> <?php if($stock_status_id == '5') { echo '__new_out_of_stock_btn'; } ?>">
                <?php if($stock_status_id != '5') { ?>
                  <button type="button" id="button-cart_id" class="btn cumpar_btn waves-effect waves-light button-cart">
                    <span class="not_new_mobile_version">
                      <?php echo $button_cart_mobile; ?>
                    </span>
                  </button>
                <?php } else { ?>
                
                <div>
                  <div class="row">
                      <div class="col s12 oos_text">
                          <?php echo $text_product_oos; ?>
                      </div>
                  </div>
                  <div class="row">
                      <div class="input-field col s12" style="width: 80%; margin-left: 10%;">
                          <input id="precomanda_nume" type="text" class="validate" />
                          <label style="text-align: left;" for="first_name">
                              <?php echo $numeprenume; ?>
                          </label>
                      </div>
                      <div class="input-field col s12" style="width: 80%; margin-left: 10%;">
                          <input id="precomanda_telefon" type="number" class="validate" />
                          <label style="text-align: left;" for="precomanda_telefon">
                              <?php echo $nrtelefon; ?>
                          </label>
                      </div>
                        
                       <div class="input-field col s12" style="width: 80%; margin-left: 10%;" >
                        <div class="phone_error" style="margin-bottom: 10px;"></div>
                        
                        <div class="oos_check">
                          <div class="oos_group">
                            <label for="accept_tc" class="accept_tc">
                                <input data-field="notify" type="checkbox" class="dummy_switcher_checkbox" id="accept_tc" name="notification" />
                                <div class="oos dummy_switcher"></div>
                                <small style="display: none;" class="error_oos_form" data-input="notify"></small>
                            </label>
                            <div class="accept_text accept_desk"><?= $text_notify_accept?></div>
                          </div>
                        <button type="button" disabled onclick="IsEmptys('Notificare Stoc');" class="btn waves-effect waves-light oos_button" style="color: #000;">
                            <?php echo $text_button_ok; ?>
                        </button>
                        </div>
                        <div class="accept_text accept_mobile"><?= $text_notify_accept?></div>
                    </div>
                  </div>
                </div>
               
                <?php } ?>
              </div>
            </div>
            
          <?php } ?>
          <input type="hidden" name="product_id" value="<?php echo $product_id; ?>">
          <input type="hidden" name="quantity" value="1">
          <input type="hidden" name="credit" value="<?php echo $credit; ?>" />
        </div>
        <?php if ($end_special) { ?>
         <!-- counter -->
          <div class="new__counter_element row">
            <div class="new__count-descript col s6">
              <div class="new__count-limited"><?= $counter_oferta ?></div>
              <div class="new__count-remain"><?= $counter_remaining ?></div>
            </div>
            <div class="new__count-timer col s6">
              <div class="new__counter_days">
                <div class="new__count"></div>
                <span class="new__count-text"><?= $counter_day ?></span>
              </div>
              <div class="new__count-separator">:</div>
              <div class="new__counter_hours">
                <div class="new__count"></div>
                <span class="new__count-text"><?= $counter_hours ?></span>
              </div>
              <div class="new__count-separator">:</div>
              <div class="new__counter_minutes">
                <div class="new__count"></div>
                <span class="new__count-text"><?= $counter_minutes ?></span>
              </div>
            </div>
          </div>
          <script type="text/javascript">
            $(document).ready(function(){
              makeDiscountTimer("<?php echo $end_special; ?>");
            });
          </script>
               <!-- //counter -->
        <?php } ?>
      <?php if($stock_status_id != '5') { ?>
      <?php if($exist_credit) { ?>
      <div class="credit_desktop_block fiexed_dialog">
        <div class="row_col">
          <div class="row">
         <span id="popcreditzero" class="col s12 m12 credit_btn credit-three btn cumpar_btn waves-effect waves-light open_credit_popup" onclick="open_credit_module()">
          <?php
                      if(isset($pap) && $pap == 100) {
                          echo $threerateorfullcost;
                      } else {
                          echo $threerate_crop;
                      }
                  ?>
           </span>
          </div>
        <div class="row col s12 m12">
            <!-- CREDIT MODULE -->
            <a id="open_credit_popup" onclick="open_credit_module()" class="btn cumpar_btn credit_btn credit_white waves-effect waves-light open_credit_popup">
                      <span class="not_new_mobile_version open_credit_popup">
                        <?php if($has_credit_0) { ?>
                        <?php echo $credit_0_text; ?>
                        <?php } else { ?>
                        <?php echo $credit_de_la; ?>
                        <?php echo $credit_rata_value; ?>
                        <?php echo $leiluna; ?>
                        <?php } ?>
                      </span>
            </a>
            <!-- CREDIT MODULE -->
          </div>
        </div>
      </div>
      <?php } ?>
      <?php }?>
      </div>
    </div>
    

      <article id="preferinte" class="mobile_preferinte">
        <div class="colors_memories">
          <!-- end similar memory-->

          <?php if ($show_similar && empty($variations['options'])) { ?>
          <div class="__new_dropdown_culori">
            <a class="__new_dropbtn_culori"><?php echo $disponibil_colors; ?><svg class="new-svg-icon icon-right __new_icn_color"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg></a>
          </div>
          <?php } ?>

          <?php if (!empty($product_memory) && $variations['count'] < 1 ) { ?>
          <div class="__new_dropdown_memorii">
            <a class="__new_dropbtn_memorii"><?php echo $memorii; ?><svg class="new-svg-icon icon-right __new_icn_memorii"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg></a>
          </div>
          <?php } ?>

          <!--start similar color-->
          <?php if ($show_similar && empty($variations['options'])) { ?>
          <div id="tab-similar" class="tab-similar tab-content col s6">
            <div id="similar_container" class="similar_container">
              <div class="similar_list" id="similar_products">
                <?php echo $similar; ?>
              </div>
            </div>
          </div>
          <?php } ?>
          <!-- end similar color-->

          <!--start variation color-->
          <?php if(!empty($variations['options']['culoare'])) { ?>
          <div id="tab-similar" class="tab-similar tab-content col s6">
            <div id="similar_container2" class="similar_container">
              <div class="similar_list" >
                <div id="additional_colors" class="jcarousel-skin-colors" style="list-style-type: none">
                  <div>
                    <div class="row circles">

                      <?php foreach($variations['options']['culoare']['products'] as $option) { ?>

                      <a href="<?php echo $option['href']; ?>" class="sim_link">
                        <div class="col  ">
                          <?php if(!empty($option['color'])) { ?>
                          <aside class="cirle" style="border:1px solid <?php echo $option['color']; ?>; background:<?php echo $option['color']; ?>"></aside>
                          <?php }

                        else if (!empty($option['thumb'])) { ?>
                          <img class="var_img" style="width: 35px;" src="<?= $option['thumb']?>" alt="<?= $option['title']?>">
                          <?php } ?>
                        </div>
                      </a>

                      <?php } ?>

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <?php } ?>
          <!-- end variation color-->



          <!--start similar memory-->

          <?php if (!empty($product_memory) && $variations['count'] < 1 ) { ?>
          <div id="tab-similarm" class="tab-similarm tab-content col s6">
            <div id="similarm_container" class="similarm_container">
              <div class=" similarm_list" id="similarm_products">
                <div class="row circles">
                  <?php foreach ($product_memory as $resultm) {
                        $pieces = explode(" ", $resultm['text']);
                      ?>
                  <a href="index.php&route=product/product&product_id=<?php echo $resultm['product_id'] ?>" class="memory_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $resultm['image']; ?>' style='width:100px;'>">
                    <div class="col s3 col_aria">
                      <aside class="cirle mem">
                        <p>
                          <?php echo $pieces[0]; ?>
                        </p>
                      </aside>
                    </div>
                  </a>
                  <?php } ?>
                </div>
              </div>
            </div>
          </div>
          <?php } ?>
          <!-- end similar memory-->

          <div class="mobile_variations">
            <!--start variation -->
            <?php foreach($variations['options'] as $key => $options ) { ?>
              <?php if ($key !== 'culoare') { ?>
                <div id="tab-<?=$key?>" class="tab-similarm tab-content tab-variations col s6">
                <div class="similarm_container">
                  <div class="memorii_produs open">
                    <?php echo $options['name']; ?>
                    <svg class="new-svg-icon icon-right __new_icn_color"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg>
                  </div>
                  <div class=" similarm_list" id="similarm_products">
                    <div class="row circles dropdown_vars open">
                      <?php foreach ($options['products'] as $product) {
                        ?>
                      <a href="<?= $product['href']; ?>"
                        class="memory_link" rel="tooltip"
                        data-placement="bottom" >
                        <div class="col">
                          <?php if(isset($product['thumb'])) { ?>
                              <img class="var_img" style="width: 35px;" src="<?= $product['thumb']?>" alt="<?= $product['title']?>">
                            <?php } else if(isset($product['color'])) { ?>
                              <aside class="cirle mem" style="background-color: <?= $product['color'] ?>">
                              <p>
                              </p>
                              </aside>
                            <?php } else { ?>
                              <aside class="cirle mem">
                              <p>
                                <?= $product['value'] ?>
                              </p>
                              </aside>
                            <?php } ?>
                        </div>
                        
                      </a>
                      <?php } ?>
                    </div>
                  </div>
                </div>
              </div>
              <?php } ?>
            <?php } ?>
            <!-- end variation -->
          </div>
        </div>
      </article>
      <?php } ?>
    </div>
    <div class="desktop_dialog __new_product_details_right">
      <div class="dialog product-buy-dialog">
        <?php if($consultant_info) { ?>
          <table class="__logged_user_product_info">
            <tbody>
              <?php if(isset($consultant_info['vendor']) && !empty($consultant_info['vendor'])) { ?>
                <tr>
                  <th>FURNIZOR</th>
                  <td><?= $consultant_info['vendor']; ?></td>
                </tr>
              <?php } ?>
              <?php if(isset($consultant_info['priceaq']) && !empty($consultant_info['priceaq'])) { ?>
                <tr>
                  <th>PRET ACHIZITIE</th>
                  <td><?= $consultant_info['priceaq']; ?></td>
                </tr>
              <?php } ?>
              <?php if(isset($consultant_info['profit_lei']) && !empty($consultant_info['profit_lei']) && isset($consultant_info['profit_percent']) && !empty($consultant_info['profit_percent'])) { ?>
                <tr>
                  <th>PROFIT</th>
                  <td><?= $consultant_info['profit_lei']; ?>; <?= $consultant_info['profit_percent']; ?></td>
                </tr>
              <?php } ?>
              <tr>
                <th>MODEL</th>
                <td><?= $model; ?></td>
              </tr>

              <?php if(isset($consultant_info['url_redirect_vendor']) && !empty($consultant_info['url_redirect_vendor'])) { ?>
                <tr>
                  <td colspan="2"><a target="_blank" href="<?= $consultant_info['url_redirect_vendor']; ?>">URL VENDOR</a></td>
                </tr>
              <?php } ?>

            </tbody>
          </table>
        <?php } ?>


        
        
        <?php if(!$exist_credit || $stock_status_id == '5') { $is_one_block = true;  } else { $is_one_block = false; } ?>
        <div class="fiexed_dialog <?php if($is_one_block) { echo '__new_fiexed_padding'; } ?>">
          <?php if ($quantity == '1000') { ?>
            <div>
              <div class="row">
                <div class="col s12">
                  <?php echo $text_info_precomanda; ?>
                </div>
              </div>
              <div class="row">
                <div class="input-field col s12" style="width: 80%;margin-left: 10%;">
                  <input id="precomanda_nume" type="text" class="validate">
                  <label style="text-align:left;" for="first_name">
                    <?php echo $numeprenume; ?>
                  </label>
                </div>
                <div class="input-field col s12" style="width: 80%;margin-left: 10%;">
                  <input id="precomanda_telefon" type="number" class="validate">
                  <label style="text-align:left;" for="precomanda_telefon">
                    <?php echo $nrtelefon; ?>
                  </label>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="phone_error" style="margin-bottom: 10px;">
              </div>
              <button type="button" onclick="IsEmptys();" class="btn waves-effect waves-light precomanda" style="color: #000;">
                <?php echo $text_buton_precomanda; ?>
              </button>
            </div>
          <?php } else { ?>
        <div class="row_col price_col <?php if($is_one_block) { echo 'without__credit'; } ?>">
              <?php if($stock_status_id != '5') { ?>
          <div class="row col <?php if($is_one_block) { echo 's5 m12 __new_align-left'; } else { echo 's12 m12'; } ?>">
                  <div style="display: none;">
                    <?php echo $special; ?>
                  </div>
                  <?php if (!$special) { ?>
                    <span class="has_not_old_price">
                    </span>
                    <div class="single_price">
                      <span id="new_price">
                        <?php echo $price; ?> 
                        <?php echo $product_currency; ?>
                      </span>
                    </div>
                  <?php } else { ?>
                    <style type="text/css">.fiexed_dialog{
                      padding-top:20px;
                      }
                    </style>
                    <div class="old_price top_pr">
                      <span class="oldprice_new">
                        <span style="text-decoration: line-through;">
                          <?php echo $price." "; echo $product_currency; ?>
                        </span>
                        <span class="procent_minus">(<?php if (ceil((($price2 - $special2)/$price2) * 100) > 0) { echo "-"; } else { echo "+"; } ?>
                          <?php if (ceil((($price2 - $special2)/$price2) * 100) < 0) { echo ceil((($price2 - $special2)/$price2) * 100) * -1; } else { echo ceil((($price2 - $special2)/$price2) * 100); } ?>%)
                        </span>
                      </span>
                      <div id="new_price" class="floating" style="margin-top: 5px;">
                        <span class="new_price_number">
                          <?php echo $special; ?> 
                          <?php echo $product_currency; ?>
                        </span>
                      </div>
                    </div>
                  <?php } ?>
                </div>
              <?php } ?>
          <div class="col row <?php if($is_one_block) { echo 's7 m12 __new_btn_fullwidth'; } else { echo 's12 m12'; } ?> <?php if($stock_status_id == '5') { echo '__new_out_of_stock_btn'; } ?>">
                <?php if($stock_status_id != '5') { ?>
                  <button type="button" id="button-cart_id" class="btn cumpar_btn waves-effect waves-light button-cart">
                    <span class="not_new_mobile_version">
                      <?php echo $button_cart_mobile; ?>
                    </span>
                  </button>
                <?php } else { ?>
                
                <div>
                  <div class="row">
                      <div class="col s12 oos_text">
                          <?php echo $text_product_oos; ?>
                      </div>
                  </div>
                  <div class="row">
                      <div class="input-field col s12" style="width: 80%; margin-left: 10%;">
                          <input id="precomanda_nume" type="text" class="validate" />
                          <label style="text-align: left;" for="first_name">
                              <?php echo $numeprenume; ?>
                          </label>
                      </div>
                      <div class="input-field col s12" style="width: 80%; margin-left: 10%;">
                          <input id="precomanda_telefon" type="number" class="validate" />
                          <label style="text-align: left;" for="precomanda_telefon">
                              <?php echo $nrtelefon; ?>
                          </label>
                      </div>
                        
                       <div class="input-field col s12" style="width: 80%; margin-left: 10%;" >
                        <div class="phone_error" style="margin-bottom: 10px;"></div>
                        
                        <div class="oos_check">
                          <div class="oos_group">
                            <label for="accept_tc" class="accept_tc">
                                <input data-field="notify" type="checkbox" class="dummy_switcher_checkbox" id="accept_tc" name="notification" />
                                <div class="oos dummy_switcher"></div>
                                <small style="display: none;" class="error_oos_form" data-input="notify"></small>
                            </label>
                            <div class="accept_text accept_desk"><?= $text_notify_accept?></div>
                          </div>
                        <button type="button" disabled onclick="IsEmptys('Notificare Stoc');" class="btn waves-effect waves-light oos_button" style="color: #000;">
                            <?php echo $text_button_ok; ?>
                        </button>
                        </div>
                        <div class="accept_text accept_mobile"><?= $text_notify_accept?></div>
                    </div>
                  </div>
                </div>
               
                <?php } ?>
              </div>
            </div>
            
          <?php } ?>
          <input type="hidden" name="product_id" value="<?php echo $product_id; ?>">
          <input type="hidden" name="quantity" value="1">
          <input type="hidden" name="credit" value="<?php echo $credit; ?>" />
        </div>
        <?php if ($end_special) { ?>
         <!-- counter -->
          <div class="new__counter_element row">
            <div class="new__count-descript col s6">
              <div class="new__count-limited"><?= $counter_oferta ?></div>
              <div class="new__count-remain"><?= $counter_remaining ?></div>
            </div>
            <div class="new__count-timer col s6">
              <div class="new__counter_days">
                <div class="new__count"></div>
                <span class="new__count-text"><?= $counter_day ?></span>
              </div>
              <div class="new__count-separator">:</div>
              <div class="new__counter_hours">
                <div class="new__count"></div>
                <span class="new__count-text"><?= $counter_hours ?></span>
              </div>
              <div class="new__count-separator">:</div>
              <div class="new__counter_minutes">
                <div class="new__count"></div>
                <span class="new__count-text"><?= $counter_minutes ?></span>
              </div>
            </div>
          </div>
          <script type="text/javascript">
            $(document).ready(function(){
              makeDiscountTimer("<?php echo $end_special; ?>");
            });
          </script>
               <!-- //counter -->
        <?php } ?>
      <?php if($stock_status_id != '5') { ?>
      <?php if($exist_credit) { ?>
      <div class="credit_desktop_block fiexed_dialog">
        <div class="row_col">
          <div class="row">
         <span id="popcreditzero" class="col s12 m12 credit_btn credit-three btn cumpar_btn waves-effect waves-light open_credit_popup" onclick="open_credit_module()">
          <?php
                      if(isset($pap) && $pap == 100) {
                          echo $threerateorfullcost;
                      } else {
                          echo $threerate_crop;
                      }
                  ?>
           </span>
          </div>
        <div class="row col s12 m12">
            <!-- CREDIT MODULE -->
            <a id="open_credit_popup" onclick="open_credit_module()" class="btn cumpar_btn credit_btn credit_white waves-effect waves-light open_credit_popup">
                      <span class="not_new_mobile_version open_credit_popup">
                        <?php if($has_credit_0) { ?>
                        <?php echo $credit_0_text; ?>
                        <?php } else { ?>
                        <?php echo $credit_de_la; ?>
                        <?php echo $credit_rata_value; ?>
                        <?php echo $leiluna; ?>
                        <?php } ?>
                      </span>
            </a>
            <!-- CREDIT MODULE -->
          </div>
        </div>
      </div>
      <?php } ?>
      <?php }?>
      </div>
    </div>
    <div class="__new_cod_produs mobile_only">
      <span class='sku_text'> <?= $text_sku ?></span>
      <svg class="new-svg-icon roistat_sku" width="18" height="18"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-label"></use></svg><span><?php echo $sku; ?></span>
    </div>
  </div>
</div>

<?php 
  if ($unpacked) {
    echo $unpacked;
  }
?>
<?php 
  if ($unpackedanalog) {
    echo $unpackedanalog;
  }
?>
<?php if($stock_status_id != '5' ) { ?>
  <article id="preferinte" class="mobile_preferinte">
    <aside class="prom_produs">
        <div class="__new_atuu_product">
          <div class="__new_atuu_product_img_container">
            <img alt="Livrare gratuita Chisinau" class="__new_atuu_product_img" src="/catalog/view/smartv3/img/__new_product_images/ridicare_magazin.png" alt="" title="">
          </div>
          <span class="__new_atuu_product_text"><a class="__new_atuu_bold_text"><?php echo $atuu_ridicare_produs; ?></a>
            <br>
            <?php if(isset($delivery_chisinau)) { ?> 
            
              <div class="__new_green_text"><?= $delivery_chisinau; ?></div>

            <?php } ?>

          </span>
        </div>
        <div class="__new_atuu_product">
          <div class="__new_atuu_product_img_container">
            <img alt="Livrare gratuita Chisinau" class="__new_atuu_product_img" src="/catalog/view/smartv3/img/__new_product_images/livrare_chisinau.png" alt="" title="">
          </div>
          <span class="__new_atuu_product_text"><a class="__new_atuu_bold_text"><?php echo $livrare_chisinau_atuu; ?></a>
            <br>
            <?php if(isset($delivery_chisinau) && isset($pret_livrare_chisinau)) { ?>
              
                <div><?= $pret_livrare_chisinau; ?>, <span class="__new_green_text"><?=$delivery_chisinau; ?></span></div>
              
            <?php } else if(isset($pret_livrare_chisinau)) { ?>
                
              <div><?= $pret_livrare_chisinau; ?></div>
              
            <?php } else if(isset($delivery_chisinau)) { ?>
              
              <div class="__new_green_text"><?= $delivery_chisinau; ?></div>
              
            <?php } ?>

          </span>
        </div>
        <div class="__new_atuu_product">
          <div class="__new_atuu_product_img_container">
            <img alt="Livrare gratuita Moldova" class="__new_atuu_product_img" src="/catalog/view/smartv3/img/__new_product_images/livrare_moldova.png" alt="" title="">
          </div>
          <span class="__new_atuu_product_text"><a class="__new_atuu_bold_text"><?php echo $livrare_moldova_atuu; ?></a>
            <br>
          

              <?php if(isset($pret_livrare_regiuni_express) && isset($delivery_express)) { ?>

                <div class="__new_margin_bottom"><?= $pret_livrare_regiuni_express; ?>, <span class="__new_green_text"><?= $delivery_express; ?></span></div>

              <?php } else if(isset($pret_livrare_regiuni_express)) { ?>

                <div class="__new_margin_bottom"><?= $pret_livrare_regiuni_express; ?></div>

              <?php } else if(isset($delivery_express)) { ?>

                <div class="__new_green_text"><?= $delivery_express; ?></div>

              <?php } ?>

          </span>
        </div>

        <!-- <?php if(isset($need_avans_text)) { ?>
          <div class="__new_atuu_product __new_atuu_product_avans_element">
            <div class="__new_atuu_product_img_container"></div>
            <span class="__new_atuu_product_text __new_atuu_avans_text"><?= $need_avans_text; ?></span>
          </div>
        <?php } ?> -->

      <?php if ($garantie_atuu) { ?>

        <div class="__new_atuu_product">
          <div class="__new_atuu_product_img_container">
              <img alt="" class="__new_atuu_product_img" src="/catalog/view/smartv3/img/__new_product_images/ridicare_magazin.png" alt="" title="">
          </div>
          <span class="__new_atuu_product_text"><a class="__new_atuu_bold_text"><?php echo $garantie_atuu; ?></a>
            <br>
          </span>
        </div>

      <?php } ?>

      <?php if ($livrare_rapid) { ?>

        <div class="__new_atuu_product">
          <div class="__new_atuu_product_img_container">
              <img alt="" class="__new_atuu_product_img" src="/catalog/view/smartv3/img/__new_product_images/warranty.png" alt="" title="">
          </div>
          <span class="__new_atuu_product_text"><a class="__new_atuu_bold_text"><?php echo $livrare_rapid; ?></a>
            <br>
          </span>
        </div>

      <?php } ?>

      <?php if ($livrare_plata) { ?>

        <div class="__new_atuu_product">
          <div class="__new_atuu_product_img_container">
              <img alt="" class="__new_atuu_product_img" src="/catalog/view/smartv3/img/__new_product_images/ridicare_magazin.png" alt="" title="">
          </div>
          <span class="__new_atuu_product_text"><a class="__new_atuu_bold_text"><?php echo $livrare_plata; ?></a>
            <br>
          </span>
        </div>

      <?php } ?>

        <?php if ($livrare_gratuit) { ?>

        <div class="__new_atuu_product">
          <div class="__new_atuu_product_img_container">
              <img alt="" class="__new_atuu_product_img" src="/catalog/view/smartv3/img/__new_product_images/ridicare_magazin.png" alt="" title="">
          </div>
          <span class="__new_atuu_product_text"><a class="__new_atuu_bold_text"><?php echo $livrare_gratuit; ?></a>
            <br>
          </span>
        </div>

      <?php } ?>

      <?php if ($consultanta_atuu) { ?>

        <div class="__new_atuu_product">
          <div class="__new_atuu_product_img_container">
              <img alt="" class="__new_atuu_product_img" src="/catalog/view/smartv3/img/__new_product_images/ridicare_magazin.png" alt="" title="">
          </div>
          <span class="__new_atuu_product_text"><a class="__new_atuu_bold_text"><?php echo $consultanta_atuu; ?></a>
            <br>
          </span>
        </div>

      <?php } ?>

      <?php if ($opinii_atuu) { ?>

        <div class="__new_atuu_product">
          <div class="__new_atuu_product_img_container">
              <img alt="" class="__new_atuu_product_img" src="/catalog/view/smartv3/img/__new_product_images/ridicare_magazin.png" alt="" title="">
          </div>
          <span class="__new_atuu_product_text"><a class="__new_atuu_bold_text"><?php echo $opinii_atuu; ?></a>
            <br>
          </span>
        </div>

      <?php } ?>

      <?php if ($showroom_atuu) { ?>

        <div class="__new_atuu_product">
          <div class="__new_atuu_product_img_container">
              <img alt="" class="__new_atuu_product_img" src="/catalog/view/smartv3/img/__new_product_images/ridicare_magazin.png" alt="" title="">
          </div>
          <span class="__new_atuu_product_text"><a class="__new_atuu_bold_text"><?php echo $showroom_atuu; ?></a>
            <br>
          </span>
        </div>

      <?php } ?>

    </aside>
  </article>
<?php } ?>
<div id="__new_descriere" class="__new_descriere">
  <div class="__new_descriere_content">
    <div class="spec_width details animated">
      <h2 class="title_sect">
        <strong id="title_sepcific"><?php echo $tab_attribute; ?> <?php echo $heading_title; ?></strong>
      </h2>
      <form action="#" id="specificatii_form" class="valign-wrapper">
        <p class="cmp_prod">
          <?php if (in_array($product_id, $this->session->data['compare'])) { ?>
            <input type="checkbox" checked="checked" class="filled-in check_label" id="filled-in-box"/>
            <label class="added checklabel" for="filled-in-box" onclick="removeToCompare('<?php echo $product_id; ?>');">
              <a id="remove_comp" class=" remove_txt" onclick="removeToCompare('<?php echo $product_id; ?>');">
                <?php echo $button_compare_after; ?>
              </a>
              <span class="compare_sprite" alt="Comparare">
              </span>
            </label>
            <a class="vezi_txt" href="/index.php?route=product/compare">
              <?php echo $vezi_produsele_comparate; ?>
            </a>
            <input type="checkbox" class="filled-in check_label" id="filled-in-box"/>
            <label class="removed checklabel" style="display: none;" for="filled-in-box" onclick="addToCompare('<?php echo $product_id; ?>');">
              <a id="added_comp" class="" onclick="addToCompare('<?php echo $product_id; ?>');">
                <?php echo $button_compare; ?>
              </a>
              <span class="compare_sprite" alt="Comparare">
              </span>
            </label>
          <?php } else { ?>
            <input type="checkbox" checked="checked" class="filled-in check_label" id="filled-in-box"/>
            <label style="display: none;" class="added checklabel" for="filled-in-box" onclick="removeToCompare('<?php echo $product_id; ?>');">
              <a id="remove_comp" class=" remove_txt" onclick="removeToCompare('<?php echo $product_id; ?>');">
                <?php echo $button_compare_after; ?>
              </a>
              <span class="compare_sprite" alt="Comparare">
              </span>
            </label>
            <a class="vezi_txt" style="display:none;" href="/index.php?route=product/compare">
              <?php echo $vezi_produsele_comparate; ?>
            </a>
            <input type="checkbox" class="filled-in check_label" id="filled-in-box"/>
            <label class="removed checklabel" for="filled-in-box" onclick="addToCompare('<?php echo $product_id; ?>');">
              <a id="added_comp" class="" onclick="addToCompare('<?php echo $product_id; ?>');">
                <?php echo $button_compare; ?>
              </a>
              <span class="compare_sprite" alt="Comparare">
              </span>
            </label>
          <?php } ?>
        </p>
      </form>

      <script>
        $('.checklabel.added_compare').click(function(){
          addToCompare('<?php echo $product_id; ?>');
        });
        $('.checklabel.removed_compare').click(function(){
          removeToCompare('<?php echo $product_id; ?>');
        });
        function addToCompare(product_id) {
          $('.removed').hide();
          $('.added').show();
          $('.vezi_txt').show();
          $.ajax({
            url: 'index.php?route=product/compare/add',
            type: 'post',
            data: 'product_id=' + product_id,
            dataType: 'json',
            success: function(json) {
              if(json['success']){
                $('#compare-total').html(json['total']);
                $('#filled-in-box').prop("checked", true);
              }
              if(json['total']==0){
                $(".count_opt_compare").addClass('hide-count');
              }
              else {
                $(".count_opt_compare").removeClass('hide-count');
              }
            }
          });
        }
        function removeToCompare(product_id) {
          $('.removed').show();
          $('.added').hide();
          $('.vezi_txt').hide();
          $.ajax({
            url: 'index.php?route=product/compare/remove',
            type: 'post',
            data: 'product_id=' + product_id,
            dataType: 'json',
            success: function(json) {
              if(json['success']){
                $('#compare-total').html(json['total']);
                $('#filled-in-box').prop("checked", false);
              }
              if(json['total']==0){
                $(".count_opt_compare").addClass('hide-count');
              }
              else {
                $(".count_opt_compare").removeClass('hide-count');
              }
            }
          });
        }
      </script>
      <div class="sku-specificatii">
        <span>Cod produs: <?php echo $sku; ?></span>
      </div>
      <?php if($ikea_id) { ?>
	      <div class="sku-ikea_id">
	        <span>Cod ikea: <?php echo $ikea_id; ?></span>
	      </div>
	  <?php } ?>
      <div class="container_specificatii">
        <?php foreach ($attribute_groups as $attribute_group) { ?>
          <div class="cont_spec">
            <h3 class="denum_specificatie" 
                <?php if ($attribute_group['name']=='culoare_new') { ?>style="display:none;"<?php } ?>><?php echo $attribute_group['name']; ?>
            </h3>
            <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
              <p class="detalii_specif" 
                 <?php if ($attribute_group['name']=='culoare_new') { ?>style="display:none;"<?php } ?>><?php echo $attribute['text']; ?>
              </p>
            <?php } ?>
          </div>
        <?php  } ?>
        <!-- DESCRIERE EMAG -->
        <?php 
          if(isset($emag_description)) {
            echo $emag_description;
          }
        ?>
        <!-- DESCRIERE EMAG -->
        <?php if(in_array(1054, $categories)) { ?>
          <div class="f-beneficii">
            <h3 class="denum_specificatie">
              Mobila nu este asamblata
            </h3>
          </div>
        <?php } ?>

        <?php if ($description) { ?>
          <h2 class="title_sect">
            <strong id="title_sepcific"><?php echo $descriere_produs; ?></strong>
          </h2>
          <div class="__new_description_product_content" style="float: left; margin: 0">
            <?php echo $description; ?>
          </div>
        <?php } ?>

      </div>
      <div class="extend_spec_parent extend">
        <a class="extend_spec">
          <?php echo $vezi_toate; ?> ▼
        </a>
      </div>
      <div class="extend_spec_parent no_extend">
        <a class="extend_spec">
          <?php echo $text_show_less; ?> ▲
        </a>
      </div>
    </div>

    <!-- Carousel Attributes -->

    <?php $carousel_attr = true; ?>

    <?php if ($carousel_attr) { ?>

      <style type="text/css">
        @media screen and (min-width: 900px) {
          .__new_descriere_content {
            max-height: 500px;
          }
          .spec_width .container_specificatii {
            max-height: 360px;
          }
        }
      </style>

      <div class="__new_image_attr">
        <div class="attributes_carousel" style="max-height: 450px; width: 100%;">
			<a >
			  <img class="img_lazy_load" src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="image/data/results-photos/banners/smart_8mar_<?php echo $lang; ?>.png" alt="" title="">
			</a>
			<!-- <a href="/ikea">
			  <img class="img_lazy_load" src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="catalog/view/smartv3/img/ikea_<?php echo $lang; ?>.jpg" alt="" title="">
			</a> -->
		</div>
      </div>

      <script type="text/javascript">
        $(document).ready(function(){
          $('.attributes_carousel').slick({
            arrows: false,
            autoplay: true,
            autoplaySpeed: 3000
          });
        });
      </script>

    <?php } else { ?>

      <div class="__new_image_attr">
        <?php if (in_array(4486, $categories) || in_array(4494, $categories) || in_array(4091, $categories) || in_array(4585, $categories) || in_array(4485, $categories)) { ?>
          <!-- <img onclick="popup_caller_open()" class="img_lazy_load" src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="catalog/view/smartv3/img/__new_product_images/tradein_new_<?php echo $lang; ?>.jpg?v=1.0"> -->
          <img onclick="popup_caller_open()" class="img_lazy_load" src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="catalog/view/smartv3/img/__new_product_images/trade_in_banner_<?php echo $lang; ?>.jpg" alt="" title="">
        <?php } else { ?>
          <img onclick="window.location='/ikea'" style="cursor:pointer;" class="img_lazy_load" src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="catalog/view/smartv3/img/__new_product_images/ikea_<?php echo $lang; ?>.jpg" alt="" title="">
        <?php } ?>
      </div>

    <?php } ?>

    <!-- Carousel Attributes -->

  </div>
</div>

<!-- Carousel Attributes -->
  
  <?php $carousel_attr = true; ?>

  <?php if ($carousel_attr) { ?>
    <style type="text/css">
      @media screen and (min-width: 900px) {
        .mob_img_tradein {
          display: none !important;
        }
      }
    </style>
      <div class="attributes_carousel_mobile" style="max-height: 450px; width: 100%; float: left;">
		<a class="aplica-tradeIn popup-caller mob_img_tradein" style="cursor:pointer;" >
          <img class="img_lazy_load" src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="image/data/results-photos/banners/smart_8mar_<?php echo $lang; ?>.png" alt="" title="">
        </a>
		<!-- <a class="aplica-tradeIn popup-caller mob_img_tradein" style="cursor:pointer;" href="/ikea">
          <img class="img_lazy_load" src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="catalog/view/smartv3/img/ikea_<?php echo $lang; ?>.jpg" alt="" title="">
        </a> -->
		</div>
		<script type="text/javascript">
        $(document).ready(function(){
          $('.attributes_carousel_mobile').slick({
            arrows: false,
            autoplay: true,
            autoplaySpeed: 3000
          });
        });
    </script>

  <?php } else { ?>

    <?php if (in_array(4486, $categories) || in_array(4494, $categories) || in_array(4091, $categories) || in_array(4585, $categories) || in_array(4485, $categories)) { ?>
      <a onclick="popup_caller_open()" class="aplica-tradeIn popup-caller mob_img_tradein" style="cursor:pointer;">
        <img class="img_lazy_load" src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="catalog/view/smartv3/img/__new_product_images/trade_in_banner_<?php echo $lang; ?>.jpg" alt="" title="">
      </a>
    <?php } else { ?>
      <a href="/ikea" class="aplica-tradeIn popup-caller mob_img_tradein" style="cursor:pointer;">
        <img class="img_lazy_load" src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="catalog/view/smartv3/img/__new_product_images/ikea_<?php echo $lang; ?>.jpg" alt="" title="">
      </a>
    <?php } ?>

  <?php } ?>

<!-- Carousel Attributes -->

<!-- Start Blocks -->
<?php if($similars_count > 0) { ?>
  <div id="similars_products_container" class="__new_products_blocks">
    <h2 class="__new_products_block_title"><?= $similars_bloc; ?></h2>
    <div class="row __similars_products_row __single_product_slider">
      <?php for ($si=0; $si < $similars_count; $si++) { ?>
        <?php include DIR_APPLICATION . '/view/theme/smart/template/product/product_empty_card.tpl'; ?>
      <?php } ?>
    </div>
  </div>
<?php } ?>

<?php if($popular_products) { ?>
  <div class="__new_products_blocks">
    <h2 class="__new_products_block_title"><?= $populare_bloc; ?></h2>
    <div class="row __new_popular_product_row __single_product_slider">
      <?php foreach ($popular_products as $product) { ?>
        <?php include DIR_APPLICATION . '/view/theme/smart/template/product/product_card.tpl' ; ?>
      <?php } ?>
    </div>
  </div>
<?php } ?>

<?php if($recomended_products) { ?>
  <div class="__new_products_blocks">
    <h2 class="__new_products_block_title"><?= $recomandate_bloc; ?></h2>
    <div class="row __new_popular_product_row __single_product_slider">
      <?php foreach ($recomended_products as $product) { ?>
        <?php include DIR_APPLICATION . '/view/theme/smart/template/product/product_card.tpl' ; ?>
      <?php } ?>
    </div>
  </div>
<?php } ?>

<!-- End Blocks -->

<div class="__new_chats_cont">
  <div class="__new_chats_home">
    <div class="__new_chats_container">
      <div class="__new_chats_block1">
        <span class="__new_chats_title">
          <?php echo $nu_ezita; ?>
        </span>
        <img class="img_lazy_load" src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="catalog/view/smartv3/img/__new_chats/Megafon.png" alt="" title="" />
      </div>
      <div class="__new_chats_block2">
        <a href="viber://pa?chatURI=smartclick">
          <img class="img_lazy_load" src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="catalog/view/smartv3/img/__new_chats/Viber.png" alt="" title="" />
        </a>
        <a href="https://m.me/smart.md.moldova">
          <img class="img_lazy_load" src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="catalog/view/smartv3/img/__new_chats/Messenger.png" alt="" title="" />
        </a>
        <a href="https://t.me/Smart_md_Bot">
          <img class="img_lazy_load" src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="catalog/view/smartv3/img/__new_chats/Telegram.png" alt="" title="" />
        </a>
        
      </div>
    </div>
  </div>
</div>

<div class="__new_cont_motif_container">
  <section id="__new_motive" class="__new_mobile_new_version __new_mobile_only">
      <div class="__new_three_motif"><?php echo $three_motif ?></div>
      <div class="__new_container_motif">
          <div class="__new_each_motif"><?php echo $three_motif_1; ?></div>
          <div class="__new_each_motif"><?php echo $three_motif_2; ?></div>
          <div class="__new_each_motif"><?php echo $three_motif_3; ?></div>
      </div>
  </section>
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
</div>

<?php echo $content_bottom; ?>

<?php if ($quantity != '1000' && $price && $stock_status_id != 5) { ?>
  <div class="fixed-mobile__price" style="display: none;">
    <div class="row">
      <div class="col <?php if($exist_credit) { echo 's6 m6'; } else { echo 's12 m12'; } ?>">
        <a class="button-cart" href="javascript:void(0);">
        	<div class="fixed-buy-button">
	          	<div class="fix-button-title"><?= $button_cart_mobile; ?></div>
	          	<div class="fix-button-desc">
	          	  <?php
	          	  	if ($special) { ?>
	          	  		<span><?= $special; ?></span>
	          	  	<?php } else { ?>
	          	  		<span><?= $price; ?></span>
	          	  	<?php }
	          	  ?>
	          	  <span class="currency-fix"><?= $product_currency; ?></span>
	          	</div>
	        </div>
        </a>
      </div>
      <?php if($exist_credit) { ?>
        <div class="col s6 m6">
          <a class="open_credit_popup" onclick="open_credit_module()" href="javascript:void(0);">
          	<div class="fixed-credit-button">
  	          	<div class="fix-button-title">
                  <?php if($has_credit_0) { ?>
                    <?php echo $credit_0_text; ?>
                  <?php } else { ?>
                    <?php echo $alege_credit; ?>
                  <?php } ?>
                </div>
  	          	<div class="fix-button-desc">
  	            	<span><?= $credit_rata_value; ?></span>
  	            	<span class="currency-fix"><?= $leiluna; ?></span>
  	          	</div>
  	        </div>
          </a>
        </div>
      <?php } ?>
    </div>
  </div>
<?php } ?>



<script defer src="catalog/view/javascript/perfect-scrollbar/dist/perfect-scrollbar.js?v=0.0.2"></script>

<script>

  function initSlickSlider(el, centerval = true, inf = true) {
    el.slick({
      lazyLoad: 'ondemand',
      centerMode: centerval,
      centerPadding: "5% 0 0",
      infinite: inf,
      slidesToShow: 4,
      swipeToSlide: true,
      dots: false,
      arrows: true,
      prevArrow: `<?php include DIR_APPLICATION . '/view/theme/smart/template/product/components/prev_arrow_slider.tpl'; ?>`,
      nextArrow: `<?php include DIR_APPLICATION . '/view/theme/smart/template/product/components/next_arrow_slider.tpl'; ?>`,
      autoplaySpeed: 6000,
      responsive: [
        {
          breakpoint: 768,
          settings: {
          slidesToShow: 2,
          centerPadding: "10% 0 0",
          centerMode: centerval
          }
       }
      ]
    });
    window.lazyOnDOMLoaded()
  }

  $(document).ready(function() {
    initSlickSlider($('.__new_popular_product_row'));
    initSlickSlider($('.__oos_similar'),false,false)
  })

  function IsEmptys( methodpay = 'Precomanda' ) {

  	var a=$("#precomanda_nume").val();
  	var b=$("#precomanda_telefon").val();
  	if (a==null || a=="",b==null || b=="") {
  	  $('.phone_error').html('<span style="color:red">Completati campurile</span>');
  	  return false;
  	} else {
      send_preorder_from_product(methodpay);
  	  
  	}
  }



function send_preorder(methodpay = 'Precomanda') {
    $('#confirm-sms-wrapper').hide();

    var m_data = new FormData();
    m_data.append( 'product_id', '<?= $product_id; ?>');
    m_data.append( 'tAP_FirstName', $('#precomanda_nume').val());
    m_data.append( 'tAP_CA_Mobile', $('#precomanda_telefon').val());
    m_data.append( 'methodpay', methodpay);
    m_data.append( 'tAP_CA_Email', '-');
    m_data.append( 'roistat_visit', '<?php echo $_COOKIE['roistat_visit']; ?>');
    m_data.append( 'tip_comanda', 'preorder');
    m_data.append( 'categ-produs', $('#credit-cayeg_prod').val())

    //ORDER 

    $.ajax({
        url: 'index.php?route=module/oneclick/order',
        type: 'POST',
        dataType: 'json',
        data: m_data,
        processData: false,
        contentType: false,
        success: function(jsonData) {
            // setTimeout(function(){
            //     window.location.href = "/index.php?route=checkout/success";
            // }, 500); 
            $('.phone_error').html('<span style="color:green">Datele au fost trimise cu succes</span>');
            // $('#precomanda_nume').val(null)
            // $('#precomanda_telefon').val(null)  
            $(".oos_check").remove();
            $('#precomanda_nume, #precomanda_telefon').prop('disabled', true);
        },
        error: function(jsonData) {
            // setTimeout(function(){
            //     window.location.href = "/index.php?route=checkout/success";
            // }, 500); 
            $('.phone_error').html('<span style="color:green">Datele au fost trimise cu succes</span>');
            $('#precomanda_nume').val(null)
            $('#precomanda_telefon').val(null)
        },
    });

}

function send_preorder_from_product(methodpay){

    const telval = $('#precomanda_telefon').val();

    $.ajax({
      type: 'POST',
      url: 'index.php?route=module/check_phone/check',
      data: {
        phone: telval
      },
      dataType: 'JSON',
      success: function(response) {
        $(".oos_button").prop('disabled', false)
        if(response.success && response.sms_form) {
          var confBox = new ConfirmBox({
            ok: function() {
              var code = $('#confirm-sms-phone').val();
              if(code.length > 0) {
                $.ajax({
                  type: 'POST',
                  url: 'index.php?route=module/check_phone/check/check_code',
                  data: {
                    phone: telval,
                    code: code
                  },
                  dataType: 'JSON',
                  success: function(dataresponse) {
                    if(dataresponse.success) {
                      send_preorder(methodpay);
                      confBox.hide(confBox.instance);
                    } else if(dataresponse.sms_form) {
                      confBox.resetHtml(dataresponse.sms_form);
                    } else if(dataresponse.error) {
                      confBox.addError(dataresponse.error);
                      $('#confirm-sms-phone').val('');
                    }
                  },
                  error: function() {
                    $(".oos_button").prop('disabled', false)
                  }
                });
              }
            },
            /* resend: function() {
              confBox.makeDisabledResend();
              $.ajax({
                type: 'POST',
              url: 'index.php?route=module/check_phone/check/resend',
              data: {
                  phone: telval
              },
                dataType: 'JSON',
                success: function(dataresponse) {
                  if(response.end_date) {
                    confBox.reinitTimer(end_date);
                  }
                }
              });
            },*/
            expired: function() {
              $.ajax({
                type: 'POST',
                url: 'index.php?route=module/check_phone/check',
                data: {
                  phone: telval
                },
                dataType: 'JSON',
                success: function(new_response) {
                  if(new_response.sms_form) {
                    confBox.resetHtml(new_response.sms_form);
                  }
                },
                error: function() {
                  $(".oos_button").prop('disabled', false)
                }
              });
            },
            reCaptchaSuccess: function() {
              send_preorder(methodpay);
              confBox.hide(confBox.instance);
            },
            reCaptchaError: function() {
              confBox.addError("You did not pass the captcha check. Please try again.");
            },
            html: response.sms_form,
            date_end: response.end_date,
            attemps: response.attemps
          });
        } else if(response.success) {
           send_preorder(methodpay);
        } else if(response.error) {
          alert(response.error);
        }
      },
      error: function() {
        $(".oos_button").prop('disabled', false)
      }
    });
}

</script>



<script>
  var sku = <?php echo $sku; ?>;
  $(document).on('click', '.button-cart', function() {
    $.ajax({
      url: 'index.php?route=checkout/cart/add',
      type: 'post',
      data: $('input[type=\'text\'], input[type=\'hidden\'], input[type=\'radio\']:checked, input[type=\'checkbox\']:checked, select, textarea'),
      dataType: 'json',
      success: function(json) {
        $('.success, .warning, .attention, information, .error').remove();

        if (json['error']) {
          if (json['error']['option']) {
            for (i in json['error']['option']) {
              $('.option-' + i).html('<span class="error">' + json['error']['option'][i] + '</span>');
            }
          }
        }
        
        if (json['success']) {
          /* PUT YOUR VARIABLES HERE */
          var W2T_vars = ''
          + '/' + 'product_added'
          + '/' + '{"id":"<?= $product_id; ?>","price":"<?= $omniprice; ?>","added":"1"}'
          ;
          /* END OF VARIABLES STRING */
          var tr_scr = document.createElement("script");
          tr_scr.type = "text/javascript";
          tr_scr.src = "//delivery.clickonometrics.pl/tracker=5863/track/shoppers"+W2T_vars+"/track.js";
          document.getElementById("ccx_tr_2befcd2e1c6e65c43e3a1440eec2ea59").appendChild(tr_scr);
          popup_open_cart_succes();
          $('.__new_buy-btn').removeClass('hide-count');
          $('#__cos_count__').html(json['total']);
          <?php if(!in_array(7025, $categories)) { ?>
            window.location.href = "index.php?route=checkout/simplecheckout";
          <?php } ?>
        }
      }
    });
  });
</script>

<script>
  <?php if ($show_similar) { ?>
    (function(c,q){var m="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///ywAAAAAAQABAAACAUwAOw==";c.fn.imagesLoaded=function(f){function n(){var b=c(j),a=c(h);d&&(h.length?d.reject(e,b,a):d.resolve(e));c.isFunction(f)&&f.call(g,e,b,a)}function p(b){k(b.target,"error"===b.type)}function k(b,a){b.src===m||-1!==c.inArray(b,l)||(l.push(b),a?h.push(b):j.push(b),c.data(b,"imagesLoaded",{isBroken:a,src:b.src}),r&&d.notifyWith(c(b),[a,e,c(j),c(h)]),e.length===l.length&&(setTimeout(n),e.unbind(".imagesLoaded",
    p)))}var g=this,d=c.isFunction(c.Deferred)?c.Deferred():0,r=c.isFunction(d.notify),e=g.find("img").add(g.filter("img")),l=[],j=[],h=[];c.isPlainObject(f)&&c.each(f,function(b,a){if("callback"===b)f=a;else if(d)d[b](a)});e.length?e.bind("load.imagesLoaded error.imagesLoaded",p).each(function(b,a){var d=a.src,e=c.data(a,"imagesLoaded");if(e&&e.src===d)k(a,e.isBroken);else if(a.complete&&a.naturalWidth!==q)k(a,0===a.naturalWidth||0===a.naturalHeight);else if(a.readyState||a.complete)a.src=m,a.src=d}):
    n();return d?d.promise(g):g}})(jQuery);
    <?php if ($lazy_load) { ?>
    $("#similar_products, #similar_products1").load('index.php?route=product/product/similar&product_id=<?php echo $product_id; ?><?php echo $path; ?>');
    <?php } ?>
    function get_similar_products(e){$.ajax({type:"GET",url:e,dataType:"html",beforeSend:function(){$("#similar_overlay").fadeTo(300,.8)},success:function(e,t,n){update_similar(e,false)},error:function(e,t,n){var r=ajax_error_msg+e.status+" "+e.statusText;update_similar(r,true)}})}function update_similar(e,t){var n;$("#similar_products, #similar_products1").clone().attr("id","file_list_clone").css({height:"100%",width:"100%",position:"absolute",top:0,left:0}).removeClass("lower_layer").addClass("upper_layer").appendTo("#similar_container");if(!t){n=$("#similar_products, #similar_products1").html(e).removeClass("warning").removeClass("no_bottom_margin").outerHeight(true)}else{n=$("#similar_products, #similar_products1").html(e).addClass("warning").addClass("no_bottom_margin").outerHeight(true)}$("#similar_products, #similar_products1").fadeOut(0);$("#similar_products, #similar_products1").imagesLoaded(function(e,t,r){n=$("#similar_products, #similar_products1").outerHeight(true);$("#file_list_clone").fadeOut(function(){$(this).remove()});$("#similar_container").animate({height:n+"px"},400,"linear",function(){$("#similar_products, #similar_products1").fadeIn();$("#similar_overlay").fadeOut();$("#file_list_clone").remove()})})}$("#similar_products .pagination a, #similar_products1 .pagination a").bind("click",function(){$("#similar_container").css("height",$("#similar_products, #similar_products1").outerHeight(true)+"px");get_similar_products(this.href);return false})
  <?php } ?>
</script>
<script>
  $(document).on('fbq-init', function() {
    $(document).on('click', '.credit_btn, #button-cart_id', function() {
      fbq('track', 'AddToCart', {
        value: <?php if ($special) { echo str_replace(" ", "", $special); } else { echo str_replace(" ", "", $price); } ?>,
        currency: 'USD',
        content_ids: ["<?php echo $sku; ?>"],
        content_type: 'product',
      });
      fbq('track', 'Lead');
    });
    $("#leave_button, .cta_submit_form, .leave-popup-tradein, .cos_submit_form, .track_number_mobile, #ieftin_button").click(function(){
      fbq('track', 'Lead');
    });
});
</script>

<script type="text/javascript">

  $(document).on('click','#popcreditzero', function() {
      $(".popcreditzero").click()
  })
  $(document).on('click','#open_credit_popup', function() {
      $(".popmin").click()
  })

  //Product Similars
  $(window).load(function(){
    if($("#similars_products_container").length > 0) {
      $.post(
        "index.php?route=product/product/similarProducts",
        {
          product_id: '<?= $product_id; ?>'
        },
        function(data) {
          if(data.length) {
            $('#similars_products_container .__similars_products_row').html(data)
            setTimeout(function() {
              initSlickSlider($('.__similars_products_row'))
            }, 100)
          } else {
            $('#similars_products_container').slideUp();
          }
        },
        "html"
      );
    } 
  })
  //Product Similars


  //Credit calc trigger
   $(document).ready(function() {
    if (window.location.href.indexOf("?creditCalc") > -1) {
      window.open_credit_module();
    }
  });

  //Credit calc trigger
   $(document).ready(function() {

    $(document).on('click', '.__new_image_attr .slick-slide, .mob_img_tradein', function () {
      $("#popcreditzero").click();
    })

    if (window.location.href.indexOf("?ZeroCredit") > -1) {
       $("#popcreditzero").click();
      // window.open_credit_module();
    }
  });
  
</script>

<?php if(isset($useful_links) && !empty($useful_links)) { ?>
  <div class="__new_content_center_align useful_links">
    <div class="useful_link_title col m9"><?=$text_useful?></div>
    <div class="category_labels row col m9 collapsed">
      <?php foreach($useful_links as $key => $link) { ?>
       <a class="labels-a-element" href="<?=$link['href']?>"><div class="text-labels"><?=$link['title']?></div></a>
      <?php } ?>											
    </div>
    <a class="useful-more"><?=$text_useful_more?></a>
  </div>

<?php } ?>


<script>
 $(document).ready(function() {
  $(".useful-more").on('click', function(e) {
    $(".category_labels").removeClass('collapsed');
    $(this).hide();
  })

  $(".mobile_variations .memorii_produs").on('click', function(e) {
    $(this).toggleClass('open');
    $(this).next(".similarm_list").find(".dropdown_vars").toggleClass('open');
  })

  //  OOS

  $(".oos.dummy_switcher").on('click', function(e) {
    $(".oos_button").prop('disabled', (i, v) => !v);
  });

 });





</script>

<?php echo $footer; ?>