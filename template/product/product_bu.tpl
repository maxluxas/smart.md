<?php echo $header; ?>
<style type="text/css">
@media screen and (max-width: 700px) {
#nudgespotInappContainer {bottom: 16px !important;margin-top: 16px !important;}
.nudgespot-launcher-inner{margin-top:-5px;margin-left: -1px;}
}
@media screen and (min-width: 701px) {
#nudgespotInappContainer{bottom: 0px;}
}
.produs-v3{display: none !important;}
img.emojione{width: 20px !important;height: 20px !important;margin-top: 0 !important;box-shadow: none !important;margin-right: 0 !important;}
</style>


<div itemscope itemtype="//schema.org/Product" id="content">
<div style="position:absolute; top:-9999px;">

<span itemprop="model"><?php echo $heading_title; ?></span>
<div itemprop = "offers" itemscope itemtype = "//schema.org/Offer">
    <meta itemprop="price" content="<?php echo $price; ?>" />
    <meta itemprop="priceCurrency" content="MDL" />
    <link itemprop = "availability" href = "//schema.org/InStock" />
</div>
<div itemprop="aggregaterating" itemscope itemtype="//schema.org/AggregateRating">
<img src="catalog/view/theme/default/image/stars-5.png" alt="Best choice" title="Best choice" />
(<span itemprop="ratingValue">5</span>/5)
<span itemprop="reviewCount"><?php echo $reviews; ?></span>
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
</div>
    <!-- Begin emoji-picker Stylesheets -->
    <link href="catalog/view/smartv3/lib/css/nanoscroller.css" rel="stylesheet">
    <link href="catalog/view/smartv3/lib/css/emoji.css" rel="stylesheet">
    <!-- End emoji-picker Stylesheets -->
   
    <aside id="floating_meniu">
    </aside>

<div class="fluid-container">
  <section id="product_show">

    <div class="row main_row present_prod">
      <div class="col m9 s12 firs_cel">
        <script>
            $("#cautare_input").val("<?php echo addslashes(htmlspecialchars_decode($heading_title)); ?>");
            $('#overlayh,.close_search').click(function() {
              $('#cautare_input').val("<?php echo addslashes(htmlspecialchars_decode($heading_title)); ?>");
            });
        </script>
          <div class="show">
            <div id="product_P" class="gallery-product">
              <?php if ($thumb) { ?>
              <?php if ($images) { ?>
              <div class="thumb">
              <?php } else { ?>
              <div class="thumb" style="margin-left:0px !important;">
              <?php } ?>
                <a href="<?php echo $popup; ?>" class="cloud-zoom" id="image" rel="position:'inside', adjustX:0, adjustY:0"><img itemprop="image" src="<?php echo $popup; ?>" /></a>
                <a href="<?php echo $popup; ?>" rel="gallery_product_group"><i class="icon-zoom-in zoom" rel="tooltip" data-placement="top" data-original-title="Zoom"></i></a>
              </div>
              <?php } else { ?>
              <div class="thumb primary-no-thumb">
                  <i class="iicon-camera no-thumb"></i>
              </div>
              <?php } ?>

              <?php if ($thumb) { ?>
              <?php if ($images) { ?>
                <div class="thumbnails_cont">
                <ul>
                  <li>
                    <?php if ($thumb) { ?>
                    <a href="<?php echo $popup; ?>" class="cloud-zoom-gallery" rel="useZoom:'image', smallImage:'<?php echo $popup; ?>'" title="<?php echo $heading_title; ?>">
                    <img class="active_thumb" src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></a>
                    <?php } ?>
                  </li>
                  <?php foreach ($images as $image) { ?>
                  <li>
                    <a href="<?php echo $image['popup']; ?>" class="cloud-zoom-gallery" rel="useZoom:'image', smallImage:'<?php echo $image['popup']; ?>'" title="<?php echo $heading_title; ?>">
                    <img src="<?php echo $image['thumb']; ?>" alt="<?php echo $heading_title; ?>" /></a>
                  </li>
                  <?php } ?>
                </ul>
                </div>
                <div id="carousel-prodimages" class="module-jcarousel global-module" style="display:none;">
                  <!-- 3d -->
                  <?php if(count($threeds)){
                  $colorbox = 1;
                      foreach($threeds as $threed){
                      $code = $threed;
                      }
                          if(!empty($code[0])){
                              if(!$colorbox){//normal display ?>
                              <?php
                              } else{//color box ?>
                            
                           <div class="product-tab tab-3d" id="tab-3d">
                            <a href="<?php echo $code; ?>" class="iframe" rel="gallery_product_group" onclick="popup('popUpDiv')"><img src="image/360.png" style="width: 50px; height:55px;padding: 2px;" /></a>
                           </div>
                              <?php
                              }
                          } else {//normal display ?>

                  
                  <style>
                   .jcarousel-skin-smart .jcarousel-container-vertical { height: 320px !important;}
                   .jcarousel-skin-smart .jcarousel-clip-vertical {height: 310px !important;}
                   .gallery-product .thumb:hover{-moz-box-shadow:none;-webkit-box-shadow: none;box-shadow:none;}
                   .thumbnails_cont ul{list-style-type: none;padding-left: 0;}
                   .gallery-product .images img {width: 100px;height: 100px;}
                   .gallery-product .images a{width: 100px;height: 100px;}
                   .gallery-product .thumb{width: auto;height: auto;}
                   .gallery-product .thumb img{width: auto;height: auto;}
                   .gallery-product{width: auto;}
                    .detalii_specif{font-size: 14px;line-height:20px;}
                  </style>
                  <?php } } ?>
                  <!-- end 3d -->
              </div>
              <?php } ?>
              <?php } ?>
                <!-- end images -->
                <?php if ($thumb) { ?>
                <?php if ($images) { ?>
                <div id="off">
                    <?php if ($images) { ?><?php foreach ($images as $image) { ?><a href="<?php echo $image['popup']; ?>" rel="gallery_product_group"></a><?php } ?><?php } ?>
                </div>
                <?php } ?>
                <script type="text/javascript"><!--
                $(document).ready(function() {
                    $("a[rel=gallery_product_group]").fancybox({
                        'titleFormat'   : function(title, currentArray, currentIndex, currentOpts) {
                            return "<span id='fancybox-title-over'><?php echo $heading_title; ?> " + (currentIndex + 1) + " / " + currentArray.length + "</span>";
                        }
                    });
                });
                 </script>
              <?php } ?>
            </div>






          <div id="Top_produs_slideshow" class="carousel slide" data-ride="carousel">
            <div class="slider top_slider">
                <ul class="slides top_slides">
                    <?php if ($thumb) { ?>
                    <li><a href="<?php echo $popup; ?>" class="cloud-zoom-gallery" rel="useZoom:'image', smallImage:'<?php echo $popup; ?>'" title="<?php echo $heading_title; ?>">
                    <img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></a>
                    </li>
                    <?php } ?>

                  <?php foreach ($images as $image) { ?>
                  <li>
                    <a href="<?php echo $image['popup']; ?>" class="cloud-zoom-gallery" rel="useZoom:'image', smallImage:'<?php echo $image['popup']; ?>'" title="<?php echo $heading_title; ?>">
                    <img src="<?php echo $image['popup']; ?>" alt="<?php echo $heading_title; ?>" /></a>
                  </li>
                  <?php } ?>
                </ul>
              </div>
          </div>







          <!--User part to chose memory,color and other option-->
          <article id="preferinte">
              <!--start similar color-->
                <?php if ($show_similar) { ?>
                  <div id="tab-similar" class="tab-content">
                    <div id="similar_container" class="similar_container">
                      <div class="culoare_produs"><?php echo $disponibil_colors; ?></div>
                      <div class=" similar_list" id="similar_products">
                      <?php echo $similar; ?></div>
                    </div>
                  </div>
                <?php } ?>
              <!-- end similar color-->
              <!--start similar memory-->

                <?php if (!empty($product_memory)) { ?>
                  <div id="tab-similarm" class="tab-content">
                    <div id="similarm_container" class="similarm_container">
                      <div class="culoare_produs"><?php echo $memorii; ?></div>
                      <div class=" similarm_list" id="similarm_products">
                      <div class="row circles">
                        <?php
                          foreach ($product_memory as $resultm) {
                            $pieces = explode(" ", $resultm['text']);
                        ?>
                        <a href="index.php&route=product/product&product_id=<?php echo $resultm['product_id'] ?>" class="memory_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $resultm['image']; ?>' style='width:100px;'>">
                        <div class="col s3 col_aria"><aside class="cirle mem"><p><?php echo $pieces[0]; ?></p></aside></div>
                        </a>
                        <?php } ?>
                      </div>
                      </div>
                    </div>
                  </div>
                <?php } ?>
              <!-- end similar memory-->

            <aside class="prom_produs">
            <?php if ($category_id == 9 || $category_id == 107) { ?>
                  <div class="row r_pref">
                    <div class="col s2 pre_ico"><i class="iicon-ic_airport_shuttle_black_24px ico_prom"></i></div>
                    <div class="col s10">
                    <p class="prom_inf">
                    <?php if ($price2 > 3000) { echo $free_delivery; } elseif ($price2>1000 && $price2<3000) { echo $free_chisinau_delivery; } else { echo $pay_delivery; } ?>
                    </p>
                    </div>
                  </div>
                  <div class="row r_pref">
                    <div class="col s2 pre_ico"><i class="iicon-ic_thumb_up_black_24px ico_prom"></i></div>
                    <div class="col s10"><p class="prom_inf"><?php echo $testimon; ?></p></div>
                  </div>
            <?php } else { ?>
              <?php if ($category_id == 26 || $category_id == 31 || $category_id == 100) { ?>
                  <div class="row r_pref">
                    <div class="col s2 pre_ico"><i class="iicon-ic_restore_black_24px ico_prom"></i></div>
                    <div class="col s10"><p class="prom_inf"><?php echo $retur; ?></p></div>
                  </div>

                  <div class="row r_pref">
                    <div class="col s2 pre_ico"><i class="iicon-ic_airport_shuttle_black_24px ico_prom"></i></div>
                    <div class="col s10"><p class="prom_inf">
                    <?php if ($price2 > 3000) { echo $free_delivery; } elseif ($price2>1000 && $price2<3000) { echo $free_chisinau_delivery; } else { echo $pay_delivery; } ?></div>
                  </div>

                  <div class="row r_pref">
                    <div class="col s2 pre_ico"><i class="iicon-ic_thumb_up_black_24px ico_prom"></i></div>
                    <div class="col s10"><p class="prom_inf"><?php echo $testimon; ?></p></div>
                  </div>
              <?php } else { ?>
                  <div class="row r_pref">
                    <div class="col s2 pre_ico"><i class="iicon-ic_airport_shuttle_black_24px ico_prom"></i></div>
                    <div class="col s10"><p class="prom_inf">
                    <?php if ($price2 > 3000) { echo $free_delivery; } elseif ($price2>1000 && $price2<3000) { echo $free_chisinau_delivery; } else { echo $pay_delivery; } ?></div>
                  </div>

                  <div class="row r_pref">
                    <div class="col s2 pre_ico"><i class="iicon-ic_security_black_24px ico_prom"></i></div>
                    <div class="col s10"><p class="prom_inf"><?php echo $guaranty; ?></p></div>
                  </div>

                  <div class="row r_pref">
                    <div class="col s2 pre_ico"><i class="iicon-ic_restore_black_24px ico_prom"></i></div>
                    <div class="col s10"><p class="prom_inf"><?php echo $retur; ?></p></div>
                  </div>

                  <div class="row r_pref">
                    <div class="col s2 pre_ico"><i class="iicon-ic_thumb_up_black_24px ico_prom"></i></div>
                    <div class="col s10"><p class="prom_inf"><?php echo $testimon; ?></p></div>
                  </div>
                  <div class="row r_pref">
                    <div class="col s2 pre_ico"><i class="iicon-ic_face_black_24px ico_prom"></i></div>
                    <div class="col s10"><p class="prom_inf"><?php echo $consultanta; ?></p></div>
                  </div>

              <?php } ?>
              <?php } ?>
            </aside>

          </article>

           <?php if ($product_id==16617) { ?>
            <aside id="banner">
            <div id="label" style="margin-bottom: 15px !important;" ><img src="image/promo/aug2016/980x85_Banner_Secret_<?php echo $promo_lang; ?>.jpg" /></div>
            </aside>
            <?php } ?>
            <?php if ($label == 6) { ?>
            <aside id="banner">
            <div id="label" style="margin-bottom: 15px !important;" ><img src="image/promo/aug2016/980x85_J5_2016_<?php echo $promo_lang; ?>.jpg" /></div>
            </aside>
            <?php } ?>
            <?php if ($label == 8) { ?>
            <aside id="banner">
            <div id="label" style="margin-bottom: 15px !important;" ><img src="image/promo/aug2016/980x85_samsungj5_2016_<?php echo $promo_lang; ?>.jpg" /></div>
            </aside>
            <?php } ?>
            <?php if ($label == 1) { ?>
            <aside id="banner">
            <div id="label" style="margin-bottom: 15px !important;" ><img src="image/data/promo/page/980x85_zeroprocente_<?php echo $promo_lang; ?>.jpg" /></div>
            </aside>
            <?php } ?>
            <?php if ($label == 2) { ?>
            <aside id="banner">
            <div id="label" style="margin-bottom: 15px !important;" ><img src="image/data/promo/page/980x85_promotoamna_<?php echo $promo_lang; ?>.jpg" /></div>
            </aside>
            <?php } ?>
        </div>
      </div>
      <div class="col m3 dialog">
      <!--Fixed box part of code-->
        <div class="fiexed_dialog">
          <?php if (!$special) { ?>
            <h2 id="new_price" <?php if ($price==0) { ?>style="display:none"<?php } ?>><?php echo $price; ?> <?php echo $product_currency; ?></h2>
            <?php } else { ?>
            <style type="text/css">.fiexed_dialog{padding-top:20px;}</style>
            <del class="old_price top_pr"><?php echo $old_price_txt; ?><?php echo $price; ?> <?php echo $product_currency; ?></del>
            <h2 id="new_price" class="floating" style="margin-top: 5px;"><?php echo $new_price_txt; ?> <?php echo $special; ?> <?php echo $product_currency; ?></h2>
          <?php } ?>
          <?php if ($quantity == 100) { ?>
          <button type="button" class="btn cumpar_btn waves-effect waves-light button-cart"><?php echo $text_buton_precomanda; ?></button>
          <?php } else { ?>
          <button type="button" class="btn cumpar_btn waves-effect waves-light button-cart"><?php echo $button_cart; ?></button>
          <?php } ?>
          <input type="hidden" name="product_id" value="<?php echo $product_id; ?>">
          <input type="hidden" name="quantity" value="1">
          <!-- START CREDIT -->
            <?php if ($credit == 1) { ?>
              <h2 id="new_price"><?php $price_rest = ceil($price2-$price_0_avans); ?>
              <?php $price_lunar = ceil($price_rest/6); ?>
              <?php echo $price_lunar; ?></h2>
              <p class="old_price middle_txt"><?php echo $month_txt_6; ?></p>
              <a onclick="document.forms['popupform'].submit(); return false;" type="button" class="btn cumpar_btn credit_btn waves-effect waves-light">
              <?php echo $button_credit_0; ?></a>
            <!-- Samsung S4 mini -->
            <?php } elseif ($credit == 2) { ?>
              <h2 id="new_price"><?php $price_lunar = ceil($price2/6); ?>
                <?php echo $price_lunar; ?></h2>
              <p class="old_price middle_txt"><?php echo $month_txt_6; ?></p>
              <a onclick="document.forms['popupform'].submit(); return false;" type="button" class="btn cumpar_btn credit_btn waves-effect waves-light"><?php echo $button_credit_0; ?></a>
              
            <!-- .Samsung S4 mini -->
            <!-- Lenovo Smartphone 0 0 4 -->
            <?php } elseif ($credit == 3) { ?>
              <h2 id="new_price"><?php $avans_0_txt; ?></h2>
              <p class="old_price middle_txt"><?php if (!$special) { $price_lunar = ceil($price2/4); } else { $price_lunar = ceil($special2/4); } ?><?php echo $price_lunar; ?> <?php echo $month_txt_4; ?></p>
              <a onclick="document.forms['popupform'].submit(); return false;" type="button" class="btn cumpar_btn credit_btn waves-effect waves-light">
              <?php echo $button_credit_0; ?></a>
            <!-- .Lenovo Smartphone 0 0 4 -->
            <!-- 24 luni -->
            <?php } elseif ($credit == 4) { ?>
              <h2 id="new_price"><?php $avans_0_txt; ?></h2>
              <p class="old_price middle_txt">
              <?php if (!$special) { $price_lunar = ceil((((((($price2*0.0185)+($price2*0.08884879))*12)-$price2)*2)+$price2)/24); } else { $price_lunar = ceil((((((($special2*0.0185)+($special2*0.08884879))*12)-$special2)*2)+$special2)/24); } ?>
                <?php echo $price_lunar; ?> <?php echo $month_txt_24; ?></p>
              
              <a onclick="document.forms['popupform'].submit(); return false;" type="button" class="btn cumpar_btn credit_btn waves-effect waves-light">
              <?php echo $button_credit; ?></a>

            <!-- .24 luni -->
            <?php } if (isset($credit_10)) { ?>
              <h2 id="new_price"> <?php echo $credit_10_price_lunar; ?> <span style="font-size: 16px;"><?php echo $leiluna; ?></span> </h2> 
            <p class="old_price middle_txt"><?php echo $timpde; ?> <?php echo $credit_10_avans; ?> <?php echo $product_currency; ?> <?php echo $avans_0p_txt; ?></p>
              
              <a onclick="document.forms['popupform'].submit(); return false;" type="button" class="btn cumpar_btn credit_btn waves-effect waves-light">
              <?php echo $button_credit; ?></a>
              
              <input type="hidden" name="credit" value="<?php echo $credit; ?>" /></span>
            <?php } ?>
          <!-- END CREDIT -->

              <style type="text/css">#nudgespotInappContainer {position: relative;right: 0;left: 0;margin-top: -6px;}</style>
              <p class="old_price final_text"><?php echo $showroom;?> <br> <b><a href="<?php echo $_SERVER['REQUEST_URI']; ?>#Map_cont_info"><?php echo $contacte ?></a></b></p>
              <div class="row call_port">
                <div class="col m6" >
                  <a class="bingc-action-open-passive-form" data-getcall-title-in-working-hours="Vrei să te sunăm în 30 de secunde?" data-getcall-description="Solicitare de apel">


                  <div class="cerc_social call waves-effect waves-light" style="border:2px solid #fff !important;background: #ffcc33;margin: 0 auto;width: 50px;height: 50px;position: fixed;right: 20px;bottom: 90px;border-radius: 50%;border: 2px solid #fff;box-shadow: 0px 5px 15px 0px rgba(0, 0, 0, .15);cursor: pointer;"><span><i class="iicon-ic_phone_black_24px" style="top:9px;"></i></span></div>
                  <p class="descript_func" style="display:none"><?php echo $apel; ?></p>
                  </a>
                </div>
                <div class="col m6" style="display:none">
                  <div id="nudgespotInappContainer">
                  </div>
                  <p class="descript_func"><?php echo $chat; ?></p>
                </div>
              </div>
            </div>

      </div>
    </div>
  </section>
  <section id="descriere">
    <div class="row descriere_row">
      <div class="col m9  main_use my_imgs">
        <div class="row">
          <div class="col m6 s12 details animated">
            <h1 class="title_sect"><img src="catalog/view/smartv3/img/specificatii_grafiti.png"><?php echo $tab_attribute; ?></h1>

              <form action="#" id="specificatii_form">
               <p class="cmp_prod">
                   
                  <?php if (in_array($product_id, $this->session->data['compare'])) { ?>
                  <input type="checkbox" checked="checked" class="filled-in check_label" id="filled-in-box"/>
                  <label class="checklabel" for="filled-in-box">
                    <a id="remove_comp" class="toggle_text remove_txt" onclick="removeToCompare('<?php echo $product_id; ?>');"><?php echo $button_compare_after; ?></a>
                    <a id="added_comp" class="toggle_text hide" onclick="addToCompare('<?php echo $product_id; ?>');"><?php echo $button_compare; ?></a>
                  </label>
                  <a class="toggle_text vezi_txt" style="margin-top:25px;color: #ffcc33 !important;text-decoration: underline;" href="//www.smart.md/index.php?route=product/compare"><?php echo $vezi_produsele_comparate; ?></a>
                  <?php } else { ?>
                  <input type="checkbox" class="filled-in checked_label" id="filled-in-box"/>
                  <label class="checklabel added_compare" for="filled-in-box">
                    <a class="toggle_text" onclick="addToCompare('<?php echo $product_id; ?>');"><?php echo $button_compare; ?></a>
                    <a class="toggle_text hide remove_txt" onclick="removeToCompare('<?php echo $product_id; ?>');"><?php echo $button_compare_after; ?></a>
                  </label>
                  <a class="toggle_text hide vezi_txt" style="margin-top:25px;color: #ffcc33 !important;text-decoration: underline;" href="//www.smart.md/index.php?route=product/compare"><?php echo $vezi_produsele_comparate; ?></a>
                  <?php } ?>
               </p>
            </form>
            <style type="text/css">[type="checkbox"].filled-in:checked+label:after{border: 2px solid #ffcc33;background-color: #ffcc33;}</style>
            <script>
            $('.checklabel.added_compare').click(function(){
              addToCompare('<?php echo $product_id; ?>');
            });
            $('.checklabel.removed_compare').click(function(){
              removeToCompare('<?php echo $product_id; ?>');
            });
            function addToCompare(product_id) {
                $('.checklabel').addClass('added_compare');
                $('.checklabel').removeClass('removed_compare');
                $('.adaugat').hide();
                $('.eliminat').show();
                $.ajax({
                    url: 'index.php?route=product/compare/add',
                    type: 'post',
                    data: 'product_id=' + product_id,
                    dataType: 'json',
                    success: function(json) {
                      if(json['success']){
                        $('#compare-total').html(json['total']);
                      }
                      if(json['total']==0){
                        $(".count_opt_compare").addClass('hide-count');
                      } else {
                        $(".count_opt_compare").removeClass('hide-count');
                      }
                    }
                });
            }
            function removeToCompare(product_id) {
                $('.checklabel').addClass('removed_compare');
                $('.checklabel').removeClass('added_compare');
                $('.adaugat').show();
                $('.eliminat').hide();
                $.ajax({
                    url: 'index.php?route=product/compare/remove',
                    type: 'post',
                    data: 'product_id=' + product_id,
                    dataType: 'json',
                    success: function(json) {
                      if(json['success']){
                        $('#compare-total').html(json['total']);
                      }
                      if(json['total']==0){
                        $(".count_opt_compare").addClass('hide-count');
                      } else {
                        $(".count_opt_compare").removeClass('hide-count');
                      }
                    }
                });
            }
            </script>
            <?php foreach ($attribute_groups as $attribute_group) { ?>
            <h3 class="denum_specificatie" <?php if ($attribute_group['name']=='culoare_new') { ?>style="display:none;"<?php } ?>><?php echo $attribute_group['name']; ?></h3>
            <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
            <p class="detalii_specif" <?php if ($attribute_group['name']=='culoare_new') { ?>style="display:none;"<?php } ?>><?php echo $attribute['text']; ?></p>
            <?php } } ?>
          </div>
          <div class="col m6 her">
          <?php if(count($attribute_images) < 2 or $product_id == 15320){ ?>
            <style>
            <? if(!$other_background): ?>
              <? if(count($attribute_groups) > 3): ?>
              /* telefoane */
                .phot_cont1{background: url(<?=$url_1_image?>);background-size: cover;background-position: center center;}
                .phot_cont2{background: url(<?=$url_2_image?>);background-size: cover;}
              <? else: ?>
                .phot_cont2{display:none;}
                .phot_cont1{height:100%;background: url(<?=$url_1_image?>);background-size: cover;} .photos_dscr{height:350px;}.her,.my_imgs{height:auto !important;}.my_imgs .row{margin-bottom:0px;}
              <? endif; ?>  
            <? else: ?>
            /* Accesorii */
              .phot_cont2{display:none;}
              .phot_cont1{height:100%;background: url(<?=$url_1_image?>);background-size: cover;} .photos_dscr{height:350px;}.her,.my_imgs{height:auto !important;}.my_imgs .row{margin-bottom:0px;}
            <? endif; ?>
            </style>
            <div class="photos_dscr">
              <div class="phot_cont1 animated"></div>
              <div class="phot_cont2 animated"></div>
            </div>
          <?php } else { ?>
            <script>
                var Carousel = {
                  width: 475,     // Images are forced into a width of this many pixels.
                  numVisible: 2,  // The number of images visible at once.
                  duration: 600,  // Animation duration in milliseconds.
                  padding: 2      // Vertical padding around each image, in pixels.
                };

                function rotateForward() {
                  var carousel = Carousel.carousel,
                      children = carousel.children,
                      firstChild = children[0],
                      lastChild = children[children.length - 1];
                  carousel.insertBefore(lastChild, firstChild);
                }
                function rotateBackward() {
                  var carousel = Carousel.carousel,
                      children = carousel.children,
                      firstChild = children[0],
                      lastChild = children[children.length - 1];
                  carousel.insertBefore(firstChild, lastChild.nextSibling);
                }

                function animate(begin, end, finalTask) {
                  var wrapper = Carousel.wrapper,
                      carousel = Carousel.carousel,
                      change = end - begin,
                      duration = Carousel.duration,
                      startTime = Date.now();
                  carousel.style.top = begin + 'px';
                  var animateInterval = window.setInterval(function () {
                    var t = Date.now() - startTime;
                    if (t >= duration) {
                      window.clearInterval(animateInterval);
                      finalTask();
                      return;
                    }
                    t /= (duration / 2);
                    var top = begin + (t < 1 ? change / 2 * Math.pow(t, 3) :
                                               change / 2 * (Math.pow(t - 2, 3) + 2));
                    carousel.style.top = top + 'px';
                  }, 1000 / 60);
                }
                // console.log('aici1');
                window.onload = function () {
                  // console.log('aici2');
                  document.getElementById('spinner').style.display = 'none';
                  var carousel = Carousel.carousel = document.getElementById('carousel'),
                      images = carousel.getElementsByTagName('img'),
                      numImages = images.length,
                      imageWidth = Carousel.width,
                      aspectRatio = images[0].width / images[0].height,
                      imageHeight = imageWidth / aspectRatio,
                      padding = Carousel.padding,
                      rowHeight = Carousel.rowHeight = imageHeight + 2 * padding;
                  carousel.style.width = imageWidth + 'px';
                  for (var i = 0; i < numImages; ++i) {
                    var image = images[i],
                        frame = document.createElement('div');
                    frame.className = 'pictureFrame';
                    var aspectRatio = image.offsetWidth / image.offsetHeight;
                    image.style.width = frame.style.width = imageWidth + 'px';
                    image.style.height = imageHeight + 'px';
                    image.style.paddingTop = padding + 'px';
                    image.style.paddingBottom = padding + 'px';
                    frame.style.height = rowHeight + 'px';
                    carousel.insertBefore(frame, image);
                    frame.appendChild(image);
                  }
                  Carousel.rowHeight = carousel.getElementsByTagName('div')[0].offsetHeight;
                  carousel.style.height = Carousel.numVisible * Carousel.rowHeight + 'px';
                  carousel.style.visibility = 'visible';
                  var wrapper = Carousel.wrapper = document.createElement('div');
                  wrapper.id = 'carouselWrapper';
                  wrapper.style.width = '100%';
                  wrapper.style.height = carousel.offsetHeight + 'px';
                  carousel.parentNode.insertBefore(wrapper, carousel);
                  wrapper.appendChild(carousel);

                  var prevButton = document.getElementById('prev'),
                      nextButton = document.getElementById('next');

                  prevButton.onclick = function () {
                    prevButton.disabled = nextButton.disabled = true;
                    rotateForward();
                    animate(-Carousel.rowHeight, 0, function () {
                      carousel.style.top = '0';
                      prevButton.disabled = nextButton.disabled = false;
                    });
                  };
                  nextButton.onclick = function () {
                    prevButton.disabled = nextButton.disabled = true;
                    animate(0, -Carousel.rowHeight, function () {
                      rotateBackward();
                      carousel.style.top = '0';
                      prevButton.disabled = nextButton.disabled = false;
                    });
                  };
                };
            </script>
            <style>
                  #carouselWrapper {
                    position: relative;
                    overflow: hidden;
                  }
                  #carousel {
                    position: absolute;
                    visibility: hidden;
                  }
                  .container_slied{
                    width: 600px;
                    height: 100%;
                    background: #090;
                  }
                  .pictureFrame{
                    height: auto !important;
                  }
                  .pictureFrame img{
                    height: 445px !important;
                  }
                  .buttons_specific_img{
                    position: absolute;
                    color: #fff;
                    font-size: 45px;
                    width: 400px;
                  }
                  #prev{
                    position: absolute;
                    top: -789px;
                    left: 53%;
                    opacity: .7;
                    cursor: pointer;
                    -webkit-transition: all .5s  ease;
                    -o-transition: all .5s  ease;
                    transition: all .5s  ease;
                  }
                  #next{
                    opacity: .7;
                    position: absolute;
                    top: 18px;
                    left: 53%;
                    cursor: pointer;
                    -webkit-transition: all .5s  ease;
                    -o-transition: all .5s  ease;
                    transition: all .5s  ease;
                  }
                  #next:hover,#prev:hover{
                    color: #fff; opacity: 1 !important;    
                    text-shadow: 0px 2px 15px rgba(0, 0, 0, 0.3);
                  }
                </style>
                <!-- Loading when imagi isn't done -->
                <div class="photos_dscr">
                  <div id="spinner"></div>
                  <div id="carousel" >
                    <?php foreach($attribute_images as $att_image){ ?>
                      <img src="image/<?php echo $att_image['image']; ?>">
                    <?php } ?>
                  </div>
                </div>
                <?php if(count($attribute_images) > 3){ ?>
                  <div class="buttons_specific_img">
                    <i class="iicon-circ_arrow_up" id="prev"></i>
                    <i class="iicon-circ_arrow_down" id="next"></i>
                  </div>
                <?php } ?>
          <?php } ?>
          </div>
        </div>
      </div>
      
      <div class="col m3 noneuse"></div>
    </div>
  </section>
  <section id="promotion">
    <div class="row descriere_row">
      <div class="col m8  main_use">
        <div class="row letter_det">
          <div class="col m6">
            <div class="row">
              <div class="col m5 anim_col">
                <img id="suricat" src="catalog/view/smartv3/img/suricat/01.png" alt="Animatie">
              </div>
              <div class="col m7 s12 promo_txt">
                <h3 id="news_l_tit"><?php echo $aboneazate; ?></h3>
                <?php echo $aboneazate_subtitle; ?>
              </div>
            </div>
          </div>
          <div class="col m6 right_formular_p">
            <form id="form" method="POST" action="/subscribe.php">
            <input class="form-control email_contrl" id="cname" name="cname" type="text" placeholder="<?php echo $prenumele; ?>">
              <input class="form-control email_contrl" id="cemail" name="cemail" type="text" placeholder="<?php echo $emailu; ?>">
              <input type="hidden" name="campaign" value="clienti_noi_group" />
              <button onclick="add_contact(); return false;" type="button" class="send_btn ui-btn ui-shadow ui-corner-all abonare"><span class="iicon-ic_send_black_24px" style="padding-right: 0px; opacity: 1; transition: all 1s ease;"></span></button>
            </form>
            <div style="display:none;" class="succes-abon">Te-ai abonat cu succes!</div>
          </div>

        </div>
      </div>
      <div class="col m4 noneuse"></div>
    </div>
  </section>
  <!--VIDEO BLOCK TAB-->

  <?php if($youtubes){ $colorbox = 1;
        foreach($youtubes as $youtube){
        $code = explode('=',$youtube);
          if(!empty($code[0])){
            if(!$colorbox){ ?>
            <section id="video_section">
            <div class="row descriere_row">
              <div class="col m8 main_use">
              <iframe title="YouTube video player" class="youtube-player animated" type="text/html" src="https://www.youtube.com/embed/<?php echo $code[1]; ?>" frameborder="0" allowFullScreen></iframe>
              </div>
              <div class="col m4 noneuse"></div>
            </section>
            <?php } else { ?>
            <section id="video_section">
            <div class="row descriere_row">
              <div class="col m8 main_use">
              <iframe title="YouTube video player" class="youtube-player animated" type="text/html" src="https://www.youtube.com/embed/<?php echo $code[1]; ?>" frameborder="0" allowFullScreen></iframe>
              </div>
              <div class="col m4 noneuse"></div>
            </section>
        <?php } } } } ?>
    <script type="text/javascript">
    $(document).ready(function(){
      $(".youtube").colorbox({iframe:true, width:"640", height:"480",transition:"fade"});
    });
    </script>
  <section id="feedback_part">
    <div class="row descriere_row opp_row">
      <div class="col m8  main_use opinii">
      <div class="row">
          <div class="col s12">

            <ul class="tabs">
              <li class="tab col s3"><a class="tab_name active" href="#opinii_produs">
              <img src="catalog/view/smartv3/img/opp_produs.png"><?php echo $opiniiprodus; ?></a></li>
              <li class="tab col s3"><a style="display: none;" class="tab_name" href="#opinii_companie"><?php echo $opiniicompanie; ?></a></li>
            </ul>

          </div>
          <div id="opinii_produs" class="col s12">
            <aside id="none_opinii">
              <h3><?php echo $fiiprimul; ?></h3>
              <p><?php echo $parereata; ?></p>
                <a id="trimite_opin"  class="form-control btn trmit_op_prod waves-effect waves-light btn"><?php echo $lasaopinia; ?></a>
            </aside>
            <?php
                  $box1=($ratingone*100/$reviewnos);
                  $box2=($ratingtwo*100/$reviewnos);
                  $box3=($ratingthree*100/$reviewnos);
                  $box4=($ratingfour*100/$reviewnos);
                  $box5=($ratingfive*100/$reviewnos);
                   ?>

            <style type="text/css">
              <?php if($reviewnos>0) {?>
              .box1Actv {width: <?php echo $box1; ?>% !important;}
              .box2Actv {width: <?php echo $box2; ?>% !important;}
              .box3Actv {width: <?php echo $box3; ?>% !important;}
              .box4Actv {width: <?php echo $box4; ?>% !important;}
              .box5Actv {width: <?php echo $box5; ?>% !important;}
              <?php } else { ?>
              .popinii{display:none;}
              #none_opinii{display:block !important;}
              .box1Actv {width: 1% !important;}
              .box2Actv {width: 1% !important;}
              .box3Actv {width: 1% !important;}
              .box4Actv {width: 1% !important;}
              .box5Actv {width: 1% !important;}
              <?php } ?>
            </style>
            <div class="row popinii">
              <div class="col m6 rating_block">
                <div class="row">
                  <div class="col s6 top_rating">
                    <h3><strong><?php echo $rating; ?></strong>/5 <span class="iicon-ic_grade_black_24px"></span></h3>
                  </div>
                  <div class="col s6 total_rating">
                    <h3><span class="iicon-ic_people_black_24px"></span> <?php echo $reviewnos; ?> <?php echo $opinii; ?></h3>
                  </div>
                </div>
                <div class="row lines_row">
                  <div class="col s2 m1">
                    <p class="no_s"> 5 <i class="iicon-ic_grade_black_24px simb_star"></i></p>
                  </div>
                  <div class="col s10 m11">
                    <span class="box5"><p class="number_survy"><?php echo $ratingfive; ?></p></span>
                  </div>
                </div>
                <div class="row lines_row">
                  <div class="col s2 m1">
                    <p class="no_s"> 4 <i class="iicon-ic_grade_black_24px simb_star"></i></p>
                  </div>
                  <div class="col s10 m11">
                    <span class="box4"><p class="number_survy"><?php echo $ratingfour; ?></p></span>
                  </div>
                </div>
                <div class="row lines_row">
                  <div class="col s2 m1">
                    <p class="no_s"> 3 <i class="iicon-ic_grade_black_24px simb_star"></i></p>
                  </div>
                  <div class="col s10 m11 ">
                    <span class="box3"><p class="number_survy"><?php echo $ratingthree; ?></p></span>
                  </div>
                </div>
                <div class="row lines_row">
                  <div class="col s2 m1">
                    <p class="no_s"> 2 <i class="iicon-ic_grade_black_24px simb_star"></i></p>
                  </div>
                  <div class="col s10 m11">
                    <span class="box2"><p class="number_survy"><?php echo $ratingtwo; ?></p></span>
                  </div>
                </div>
                <div class="row lines_row">
                  <div class="col s2 m1 ">
                    <p class="no_s"> 1 <i class="iicon-ic_grade_black_24px simb_star"></i></p>
                  </div>
                  <div class="col s10 m11">
                    <span class="box1"><p class="number_survy"><?php echo $ratingone; ?></p></span>
                  </div>
                </div>
              </div>
              <div class="col m6 cont_sfat_op">
                <aside id="none_opinii" class="opinii_sfat">
                  <h3 id="produs_Q"><?php echo $detii; ?></h3>
                  <p id="produs_desc"><?php echo $parereata_after; ?></p>
                  <form action="" id="op_produs_but">
                    <a id="trimite_opin"  class="form-control btn trmit_op_prod waves-effect waves-light btn"><?php echo $lasaopinia; ?></a>
                  </form>
                </aside>
              </div>
            </div>
            <!-- opinii-->
            <aside id="lasa_opinia_cont_prod" <?php if (isset($_SESSION['Social'])) { ?>class="opp_open"<?php } ?> >
              <article id="autorizare">
                <h1 class="Task_title"><?php echo $autorizare; ?></h1>
                <hr>
                <p class="log_descript"><?php echo $sub_title_aut; ?></p>
                <div class="row opp_socila_btn">

                  <?php if (isset($_SESSION['Social'])) { ?>
                  <?php } else { ?>
                    <?php if ($this->config->get('hybrid_auth_status')) { ?>
                      <?php foreach ($this->config->get('hybrid_auth') as $config) { ?>
                         <?php
                           if($config['provider']=='Facebook'){
                            $class='facebook';
                          } elseif($config['provider']=='Vkontakte'){
                            $class='vk';}
                           elseif($config['provider']=='Google'){
                            $class='gplus';}
                          elseif($config['provider']=='Mailru'){
                            $class='mailru';}
                         ?>
                  <div class="col m3 s12">
                    <button type="button" <?php echo'class="social_btn  btn waves-effect waves-light btn-'.$class.'"';?> onclick="window.open('<?php echo HTTP_SERVER . 'index.php?route=hybrid/auth&source=product-review&provider=' . $config['provider']; ?>&redirect=<?php echo base64_encode($this->url->link('hybrid/auth/success')); ?>', 'newwindow', 'width=700, height=550,top=100, left=600'); return false;" href="<?php echo HTTP_SERVER . 'index.php?route=hybrid/auth&provider=' . $config['provider']; ?>&redirect=<?php echo base64_encode($this->url->link('hybrid/auth/success')); ?>">
                      <i class="iicon-<?php echo $class ?> left ic_brd"></i> <span><?php echo $config['provider']; ?></span>
                    </button>
                  </div>
                  <?php } } }?>


                </div>

              </article>
              <article id="formular">
                  <form action="" id="formular_lasa_op" method="post" enctype="multipart/form-data">
                      <?php foreach ($infos as $info) { ?>
                      <?php if (isset($_SESSION["Social"]) && $_SESSION["Social"] == $info['uid']) { ?>
                      <article id="finaly_loged__part">
                        <h1 class="Task_title"><?php echo $add_opinia; ?></h1>
                        <hr>
                        <div class="row prof_ed_row">

                        <style>#finaly_loged__part{display: block;}</style>
                          <div class="col m6">
                            <div class="cont_social_profil">
                              <img src="<?php echo $info['image'];?>">
                              <?php if ($info['user_type'] == 'Facebook') { ?>
                              <img src="catalog/view/smartv3/img/fb_ic.png" id="social_logo">
                              <?php } else if ($info['user_type'] == 'Vkontakte') { ?>
                              <img src="//www.smart.md/image/themezee_social_icons/vkontakte.png" id="social_logo">
                              <?php } else if ($info['user_type'] == 'Google') { ?>
                              <img src="image/themezee_social_icons/google.png" id="social_logo">
                              <?php } else if ($info['user_type'] == 'Mailru') { ?>
                              <img src="image/themezee_social_icons/mailru.png" id="social_logo">
                              <?php } ?>

                              
                            </div>
                            <span id="name_social_profil">
                            <input type="hidden" name="name" value="<?php echo $info['name']; ?>">
                            <?php echo $info['name']; ?>
                            </span>
                          </div>
                          <div class="col m6 localitate">
                            <label for="form1" class="localitate_label"><?php echo $localitatea; ?></label>
                                <input type="text" id="form1" value="<?php echo $info['city']; ?>" name="localitate" class="form-control">
                          </div>
                        </div>
                      </article>
                      <?php } } ?>
                      <article id="inputs_opinion_part">
                        <p class="log_descript step2_descrpt"> <?php echo $sub_soc_button; ?> <?php echo $heading_title; ?></p>



                        <!--End fo Rating and begining of form inputs-->
                        <div class="row">
                          <div class="col s12">
                            <fieldset class="rating">
                              <input type="radio" id="star5" name="rating" value="5" />
                              <label class = "full" for="star5" title=""><p id="extr_cal"><?php echo $extaraordinara; ?></p></label>
                              <input type="radio" id="star4" name="rating" value="4" />
                              <label class = "full" for="star4" title=""><p><?php echo $buna; ?></p></label>
                              <input type="radio" id="star3" name="rating" value="3" />
                              <label class = "full" for="star3" title=""><p><?php echo $normala; ?></p></label>
                              <input type="radio" id="star2" name="rating" value="2" />
                              <label class = "full" for="star2" title=""><p><?php echo $rea; ?></p></label>
                              <input type="radio" id="star1" name="rating" value="1" />
                              <label style="padding-left: 0;" class = "full" for="star1" title=""><p><?php echo $oribil; ?></p></label>
                            </fieldset>
                          </div>
                        </div>

                        <div class="row input_opp_row">
                          <div class="col m8 left_inp">
                            <label for="avantaje"><?php echo $review_goods; ?></label>
                            <p class="lead emoji-picker-container">
                              <textarea id="avantaje" name="entry_goods" class="form-control" placeholder="<?php echo $write_adv; ?>" data-emojiable="true"></textarea>
                            </p>
                            <input type="hidden" id="emoji_goods" name="emoji_goods" value="">
                            <label for="dezavantaje"><?php echo $review_bads; ?></label>
                            <p class="lead emoji-picker-container">
                              <textarea id="dezavantaje" name="entry_bads" class="form-control" placeholder="<?php echo $write_disadv; ?>" data-emojiable="true"></textarea>
                            </p>
                            <input type="hidden" id="emoji_bads" name="emoji_bads" value="">
                            <label for="comentariu"><?php echo $review_comentariu; ?></label>
                            <p class="lead emoji-picker-container">
                              <textarea id="comentariu" name="text" class="form-control" placeholder="<?php echo $write_comm; ?>" data-emojiable="true" style="height: 200px !important"></textarea>
                            </p>
                            <input type="hidden" id="emoji_comment" name="emoji_comment" value="">

                            <label>Adaugă Poze</label>
                            <input type="file" id="files" name="files" multiple="multiple"/>
                            <label for="files" class="iicon-plus"></label>
                            <div id="cont">
                                <output id="list"></output>
                            </div>



                            <button type="button" onclick="addreview()" class="form-control btn finish_l_opp waves-effect waves-light"><?php echo $button_add_review; ?></button>

                          </div>
                          <div class="col m4 right_instr">
                            <div id="instruct_box">
                              
                              <p><?php echo $emoj_right_text1;?></p>
                            </div>
                          </div>
                        </div>
                        <div id="lasa_opp_overlay"></div>
                      </article>
                    </form>

                    <article id="last_feedback_opp">
                      <h1 class="Task_title"><?php $opinia_multumim; ?></h1>
                      <hr>
                      <p class="success_msg">
                        <i class="iicon-ic_done_black_24px"></i><?php $opinia_succes; ?>
                      </p>
                      <img src="catalog/view/smartv3/img/suricat_like.png">
                    </article>
            </aside>
            <?php if (isset($_SESSION['Social'])) { ?>
            <script type="text/javascript">
              $('#lasa_opp_overlay').remove();
              $('#autorizare').remove();
            </script>
            <style type="text/css">#inputs_opinion_part{opacity: 1;}</style>
            <?php foreach ($infos as $info) { ?>
            <?php if ($_SESSION["Social"] == $info['uid']) { ?>
            <input type="hidden" name="image_fb" value="<?php echo $info['image']; ?>" style="visibility:hidden" />
            <?php if ($info['user_type'] == 'Facebook') { ?>
            <input type="hidden" name="user_type" value="1" style="visibility:hidden" />
            <?php } else if ($info['user_type'] == 'Vkontakte') { ?>
            <input type="hidden" name="user_type" value="3" style="visibility:hidden" />
            <?php } else if ($info['user_type'] == 'Google') { ?>
            <input type="hidden" name="user_type" value="4" style="visibility:hidden" />
            <?php } else if ($info['user_type'] == 'Mailru') { ?>
            <input type="hidden" name="user_type" value="5" style="visibility:hidden" />
            <?php } else { ?>
            <input type="hidden" name="user_type" value="0" style="visibility:hidden" />
            <?php } ?>
            <input type="hidden" name="email" value="<?php echo $info['email']; ?>"  style="visibility:hidden" />
            <input type="hidden" name="uid" value="<?php echo $info['uid']; ?>" style="visibility:hidden" />
             <?php } } ?>
             <?php } ?>
            <!--end opinii -->


            <div class="tab-reviews" id="tab-review">
            <div class="list_review">
            <?php if($reviewnos>0) {?>
            <h3 id="op_recent"><img src="catalog/view/smartv3/img/opp_recente.png"><?php echo $opiniirecente; ?></h3>
            <?php } ?>
            <div id="review"></div>
            </div>
            </div>
            <script type="text/javascript">
              // $('#review').load('//www.smart.md/index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

               function addreview(){
                var input = $('#avantaje').val();
                var replaced = emojione.toShort(input);
                $('#emoji_goods').val(replaced);
                var input = $('#dezavantaje').val();
                var replaced = emojione.toShort(input);
                $('#emoji_bads').val(replaced);
                var input = $('#comentariu').val();
                var replaced = emojione.toShort(input);
                $('#emoji_comment').val(replaced);
                $.ajax({
                  // url: '//www.smart.md/index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
                  url: '//www.smart.md/index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
                  type: 'post',
                  dataType: 'json',
                  data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&entry_goods=' + encodeURIComponent($('input[name=\'emoji_goods\']').val()) + '&entry_bads=' + encodeURIComponent($('input[name=\'emoji_bads\']').val()) + '&image_fb=' + encodeURIComponent($('input[name=\'image_fb\']').val()) + '&user_type=' + encodeURIComponent($('input[name=\'user_type\']').val()) + '&text=' + encodeURIComponent($('input[name=\'emoji_comment\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&localitate=' + encodeURIComponent($('input[name=\'localitate\']').val()) + '&email=' + encodeURIComponent($('input[name=\'email\']').val()) + '&uid=' + encodeURIComponent($('input[name=\'uid\']').val()) 
                    + '&img_path1=' + encodeURIComponent($('input[name=\'img_path1\']').val() != 'undefined' ? $('input[name=\'img_path1\']').val() : '')
                    + '&img_path2=' + encodeURIComponent($('input[name=\'img_path2\']').val() != 'undefined' ? $('input[name=\'img_path2\']').val() : '')
                    + '&img_path3=' + encodeURIComponent($('input[name=\'img_path3\']').val() != 'undefined' ? $('input[name=\'img_path3\']').val() : '')
                    + '&img_path4=' + encodeURIComponent($('input[name=\'img_path4\']').val() != 'undefined' ? $('input[name=\'img_path4\']').val() : '')
                     + '&img_path5=' + encodeURIComponent($('input[name=\'img_path5\']').val() != 'undefined' ? $('input[name=\'img_path5\']').val() : ''),
                  beforeSend: function() {
                    $('.success, .warning').remove();
                    $('#trimite-opin').attr('disabled', true);
                    $('#trimite-opin').after('<div class="attention"><i class="iicon-exclamation-sign info_icon"></i><span class="wait"><i class="iicon-spinner iicon-spin"></i></span><?php echo $text_wait; ?></div>');
                  },
                  complete: function() {
                    $('#trimite-opin').attr('disabled', false);
                    $('.attention').remove();
                  },
                  success: function(data) {
                    if (data['error']) {
                      $('.finish_l_opp').before('<div class="warning"><i class="iicon-warning-sign info_icon"></i>' + data['error'] + '</div>');
                    }

                    if (data['success']) {
                      $('.emoji-wysiwyg-editor').empty();
                      $('output#list').empty();
                      $('.finish_l_opp').after('<div class="success"><i class="iicon-ok info_icon"></i>' + data['success'] + '</div>');
                      $('input[name=\'localitate\']').val('');
                      $('input[name=\'email\']').val('');
                      $('input[name=\'uid\']').val('');
                      $('input[name=\'name\']').val('');
                      $('textarea[name=\'entry_goods\']').val('');
                      $('textarea[name=\'entry_bads\']').val('');
                      $('input[name=\'image\']').val('');
                      $('input[name=\'user_type\']').val('');
                      $('textarea[name=\'text\']').val('');
                      $('input[name=\'rating\']:checked').attr('checked', '');

                      $.each(files_images, function(index, file) {
                        $.ajax({url: "//www.smart.md/index.php?route=product/product/upload_images",
                              type: 'POST',
                              data: {filename: file.filename, data: file.data},
                              success: function(data, status, xhr) {}
                        });      
                      });
                      files_images = [];

                    }
                  }
                });
              };
              </script>
          </div>
          <div id="opinii_companie" class="col s12" style="display:none;">
            <?php echo $content_top; ?>
          </div>
        </div>
      <div class="col m4 noneuse"></div>
      </article>
      </aside>
      </div>
    </div>
  </section>
  <section id="contacts">
  <div class="row descriere_row">
    <div class="col m8  main_use contact_use">
      <h3 id="op_recent" class="contact_titl"><img style="margin-left:0px;" src="catalog/view/smartv3/img/contacte.png"><?php echo $contacts; ?></h3>
      <!-- Code for Smart Map -->
      <div id="Map_cont_info">
        <div id="smart_show" class="carousel slide" data-ride="carousel">
          <div class="slider">
              <ul class="slides">
                <li>
                  <img src="catalog/view/smartv3/img/map4.jpg"> <!-- random image -->
                </li>
                <li>
                  <img src="catalog/view/smartv3/img/map5.jpg"> <!-- random image -->
                </li>
                <li>
                  <img src="catalog/view/smartv3/img/map3.jpg">  
                </li>
                <li>
                  <img src="catalog/view/smartv3/img/map6.jpg">  
                </li>
                <li>
                  <img src="catalog/view/smartv3/img/map7.jpg">  
                </li>
          <!--       <li>
                  <img src="catalog/view/smartv3/img/map4.jpg"> 
                </li>
                <li>
                  <img src="catalog/view/smartv3/img/map5.jpg"> 
                </li>
                <li>
                  <img src="catalog/view/smartv3/img/map6.jpg">  -->
                </li>
              </ul>
            </div>
        </div>
        <div class="row slide_info_bottom">
          <div class="col s2 ic"><i class="iicon-ic_location_on_black_24px"></i></div>
          <div class="col s10"><?php echo $strada; ?></div>
        </div>
        <div class="row ic_smb">
          <div class="col s2 ic"><i class="iicon-ic_phone_black_24px"></i></div>
          <div class="col s10"><?php echo $telefon; ?></div>
        </div>
        <div class="row ic_smb">
          <div class="col s2 ic"><i class="iicon-ic_access_time_black_24px"></i></div>
          <div class="col s10">
            <div class="row">
              <div class="col s6" style="padding:0 !important;"><?php echo $zilucru; ?></div>
              <div class="col s6"><?php echo $oralucru; ?></div>
            </div>
          </div>
        </div>
      </div>
      <div id="Smart_map" class="animated"></div>
    </div>
    <div class="col m4 noneuse"></div>
  </div>
  </section>

</div>
<div id="overlay"></div>


<!--Importing  Google Map script-->
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBgji6IQo40OR0nUw7AlYQLQrz09EFZ23c&callback=Show_map"></script>
<!-- Begin emoji-picker JavaScript -->
<script src="catalog/view/smartv3/lib/js/nanoscroller.min.js"></script>
<script src="catalog/view/smartv3/lib/js/tether.min.js"></script>
<script src="catalog/view/smartv3/lib/js/config.js"></script>
<script src="catalog/view/smartv3/lib/js/util.js"></script>
<script src="catalog/view/smartv3/lib/js/jquery.emojiarea.js"></script>
<script src="catalog/view/smartv3/lib/js/emoji-picker.js"></script>
<!-- End emoji-picker JavaScript -->
<script>
  $(function() {
    // Initializes and creates emoji set from sprite sheet
    window.emojiPicker = new EmojiPicker({
      emojiable_selector: '[data-emojiable=true]',
      assetsPath: 'lib/img/',
      popupButtonClasses: 'iicon-smile-o'
    });
    // Finds all elements with `emojiable_selector` and converts them to rich emoji input fields
    // You may want to delay this step if you have dynamically created input fields that appear later in the loading process
    // It can be called as many times as necessary; previously converted input fields will not be converted again
    window.emojiPicker.discover();
  });
</script>
<script type="text/javascript"><!--
function add_contact() {
//amo contact
var cname = {
  productname: $("input[name$='produs']").val() + ' (Abonare Newsletter)',
        price:$("input[name$='suma']").val(),
        name: $("#cname").val(),
        email:$("#cemail").val(),
        status_id: '10204830',
        web: 'Abonare Newsletter'
}
$.ajax({
  url: '//www.smart.md/amocrm/handler.php',
  type: 'post',
  dataType: 'json',
  success: function (data) {
  },
  data: cname
});
/* mailchimp */
$.ajax({
  url: '//www.smart.md/amocrm/mailchimp.php',
  type: 'POST',
  data: {
    email: $("#cemail").val(),
    fname: $("#cname").val(),
    lname: $("input[name$='produs']").val()
  },
  success: function(data){
    $('.succes-abon').show();
    if(data.indexOf("Invalid") > -1) {
    $('.succes-abon').html('Adresa de email nu este corecta').css('color', 'red');
    } else if(data.indexOf('este deja abonat') > -1) {
    $('.succes-abon').html('Deja esti abonat.').css('color', '#000');
    } else if(data.indexOf('Got it') > -1) {
    $('.succes-abon').html('Ai fost abonat cu succes!').css('color', '#000'); 
    }
  },
  error: function() {
    $('#subscribe1').html('Sorry, an error occurred.').css('color', 'red');
  }
});
}
//-->
</script>
<script type="text/javascript"><!--
$(document).ready(function(){
  
  $('.content-grid').addClass('show_less');
});
  $('#text_show_more').click(function(){
    var products_list = $('.content-grid');
    var category_list = $('#category_list li');
    if (products_list.hasClass('show_less')) {
      products_list.animate({
        height: "+=300"
        },
        "fast", function() {
          products_list.removeClass('show_less');
          products_list.height('auto');
      });
      $('#text_show_more').hide();
      //$('html, body').animate({ scrollTop: scrollBottom }, 'slow');
    }
  });
  $('.tab_category').click(function(){
    var products_list = $('.content-grid');
    var category_list = $('.tab_category');
    products_list.addClass('show_less');
    products_list.height('600');
    $('#text_show_more').show();
    });

</script>
<script type="text/javascript">
$('#category_list li:first').addClass('activeli');
$('#category_list li a').click(
    function(e) {
        e.preventDefault(); // prevent the default action
        e.stopPropagation(); // stop the click from bubbling
        $(this).closest('#category_list').find('.activeli').removeClass('activeli');
        $(this).parent().addClass('activeli');
    });

<?php foreach ($related_categories as $related_category) { ?>
  $('#tab_category_<?php echo $related_category['category_id']; ?>').bind('click', function() {
  $.ajax({
    url: 'index.php?route=product/product&product_id=<?php echo $product_id; ?>',
    type: 'GET',
    beforeSend: function() {
    },
    success: function(data) {
      related_products = $(data).find('#category_<?php echo $related_category['category_id']; ?>');
      $('.content-grid').html(related_products);
    },
    complete: function() {
      $('#tab_category_<?php echo $related_category['category_id']; ?>').next().remove();

    }
  });
  });
<?php } ?>

$('.button-cart').bind('click', function() {
  $.ajax({
    url: 'index.php?route=checkout/cart/add',
    type: 'post',
    data: $('#product_show input[type=\'text\'], #product_show input[type=\'hidden\'], #product_show input[type=\'radio\']:checked, #product_show input[type=\'checkbox\']:checked, #product_show select, #product_show textarea'),
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
        window.location.href = "index.php?route=checkout/simplecheckout";
      }
    }
  });
});
$('.button-cart-credit').bind('click', function() {
  $.ajax({
    url: 'index.php?route=checkout/cart/add',
    type: 'post',
    data: $('#product_show input[type=\'text\'], #product_show input[type=\'hidden\'], #product_show input[type=\'radio\']:checked, #product_show input[type=\'checkbox\']:checked, #product_show select, #product_show textarea'),
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
        window.location.href = "index.php?route=checkout/credit&credit_type=<?php echo $credit_type; ?>";
      }
    }
  });
});
//-->
</script>

<script type="text/javascript">
<?php if ($show_similar) { ?>
(function(c,q){var m="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///ywAAAAAAQABAAACAUwAOw==";c.fn.imagesLoaded=function(f){function n(){var b=c(j),a=c(h);d&&(h.length?d.reject(e,b,a):d.resolve(e));c.isFunction(f)&&f.call(g,e,b,a)}function p(b){k(b.target,"error"===b.type)}function k(b,a){b.src===m||-1!==c.inArray(b,l)||(l.push(b),a?h.push(b):j.push(b),c.data(b,"imagesLoaded",{isBroken:a,src:b.src}),r&&d.notifyWith(c(b),[a,e,c(j),c(h)]),e.length===l.length&&(setTimeout(n),e.unbind(".imagesLoaded",
p)))}var g=this,d=c.isFunction(c.Deferred)?c.Deferred():0,r=c.isFunction(d.notify),e=g.find("img").add(g.filter("img")),l=[],j=[],h=[];c.isPlainObject(f)&&c.each(f,function(b,a){if("callback"===b)f=a;else if(d)d[b](a)});e.length?e.bind("load.imagesLoaded error.imagesLoaded",p).each(function(b,a){var d=a.src,e=c.data(a,"imagesLoaded");if(e&&e.src===d)k(a,e.isBroken);else if(a.complete&&a.naturalWidth!==q)k(a,0===a.naturalWidth||0===a.naturalHeight);else if(a.readyState||a.complete)a.src=m,a.src=d}):
n();return d?d.promise(g):g}})(jQuery);
<?php if ($lazy_load) { ?>
$("#similar_products").load('index.php?route=product/product/similar&product_id=<?php echo $product_id; ?><?php echo $path; ?>');
<?php } ?>
function get_similar_products(e){$.ajax({type:"GET",url:e,dataType:"html",beforeSend:function(){$("#similar_overlay").fadeTo(300,.8)},success:function(e,t,n){update_similar(e,false)},error:function(e,t,n){var r=ajax_error_msg+e.status+" "+e.statusText;update_similar(r,true)}})}function update_similar(e,t){var n;$("#similar_products").clone().attr("id","file_list_clone").css({height:"100%",width:"100%",position:"absolute",top:0,left:0}).removeClass("lower_layer").addClass("upper_layer").appendTo("#similar_container");if(!t){n=$("#similar_products").html(e).removeClass("warning").removeClass("no_bottom_margin").outerHeight(true)}else{n=$("#similar_products").html(e).addClass("warning").addClass("no_bottom_margin").outerHeight(true)}$("#similar_products").fadeOut(0);$("#similar_products").imagesLoaded(function(e,t,r){n=$("#similar_products").outerHeight(true);$("#file_list_clone").fadeOut(function(){$(this).remove()});$("#similar_container").animate({height:n+"px"},400,"linear",function(){$("#similar_products").fadeIn();$("#similar_overlay").fadeOut();$("#file_list_clone").remove()})})}$("#similar_products .pagination a").bind("click",function(){$("#similar_container").css("height",$("#similar_products").outerHeight(true)+"px");get_similar_products(this.href);return false})
<?php } ?>

// $('#review .pagination a').bind('click', function() {
//   $('#review').fadeOut('slow');
//   $('#review').load(this.href);
//   $('#review').fadeIn('slow');
//   return false;
// });


//-->
</script>
<script type="text/javascript">
  $(document).ready(function(){
    // $('#review').load('//www.smart.md/index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');
    $('#review').load('//www.smart.md/index.php?route=product/product/review&product_id=<?php echo $product_id; ?>',function(){
      $.getScript("https://feimosi.github.io/baguetteBox.js/js/baguetteBox.js");
    });

    $('#review').delegate('.pagination a', 'click', function(){
      $('#review').fadeOut('slow');
      $('#review').load(this.href);
      $('#review').fadeIn('slow');
      return false;
    });

  });
</script>

<script>
     function closePrevew(el){
         $(el).parent().remove();
         var count = $('#list').children().length;
     }

    files_images = [];
     
    $("input[type=file]").change(function(event) {
      $.each(event.target.files, function(index, file) {
        var reader = new FileReader();
        reader.onload = function(event) {  
          object = {};

          var div = document.createElement('div');
          var date = new Date();
          var name_img = 
                      date.getFullYear() + '_' + (date.getMonth()+1) + '_' + 
                      date.getDate() + '_' + date.getHours() + '_' + 
                      date.getMinutes() + '_' + date.getSeconds() + '_' + date.getMilliseconds();
          type = 'png';
          var name_img = name_img + '.' + type;
          var count = $('#list').children().length;
          
          if(count < 5){
            div.innerHTML =
            [
              '<img style="height: 75px; border: 1px solid #000; margin: 5px" src="',
              event.target.result,
              '" title="', escape(name_img),
              '"/>',
              '<div id="item" onclick="closePrevew(this)"><i class="iicon-close"></i></div>',
              '<input type="hidden" name="img_path', (count + 1),'" value="', escape(name_img),'">'
            ].join('');
            
            document.getElementById('list').insertBefore(div, null);

            object.filename = name_img;
            // object.filename = file.name;
            object.data = event.target.result;
            
          } else {
            // console.log($('#list').children().length); 
            // document.getElementById('error_cont').style.display = 'block';  
          }
          files_images.push(object);
        };
            
        reader.readAsDataURL(file);
      });
    });
</script>
<FORM method="post" action="index.php?route=checkout/credit&credit_type=<?php echo $credit_type; ?>&produs=<?php echo $heading_title; ?>&product_id=<?php echo $product_id; ?>&suma=<?php echo $price2; ?>" onSubmit= "popupform(this, 'join')" name="popupform">
<input type="hidden" value="<?php echo $heading_title; ?>" name="produs" id="lead_product_name" />
<input type="hidden" value="<?php echo $price2; ?>" id="form_suma" name="suma" />
<input type="hidden" value="<?php echo $product_id; ?>" id="product_id" name="product_id" />
<?php if (!$special) { ?>
<input type="hidden" value="<?php echo $price; ?>" id="form_prett" name="prett" />
<input type="hidden" value="<?php echo $price2; ?>" id="form_pret" name="pret" />
<?php } else { ?>
<input type="hidden" value="<?php echo $special2; ?>" id="form_pret_special" name="pret" />
<?php } ?>

<input type="hidden" value="<?php echo $price_lunar; ?>" id="form_pret_lunar" name="pret_lunar" />
<input type="hidden" value="<?php echo $thumb; ?>" id="form_imagine" name="imagine" />
<input type="hidden" name="credit_zero" value="<?php echo $credit; ?>" />
<?php if ($credit == 1) { ?>
  <input type="hidden" name="gift" value="1" />
<?php } ?>
</FORM>

    <?php echo $footer; ?></div>