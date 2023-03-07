<div class="test_bet">
  <a class="slidePrev">
    <i class="icon-left iicon-arrow-point-to-right"></i>
  </a>
  <a class="slideNext">
    <i class="icon-right iicon-arrow-point-to-right"></i>
  </a>
</div>
<section id="prod_viz_rec">
  <script type="text/javascript" src="catalog/view/smart_root/carousel_slider/lightslider.js"></script>
  <script defer="defer" type="text/javascript" src="catalog/view/smartv3/js/jquery-ui.min.js"></script>

  <div class="container content_in_main prod_viz_sec" style="margin-left: 0;">
    <h2 class="heading_smart">
      <span class="heading_title_style" style="padding-left: 0px;"><?php echo $heading_title; ?></span>
    </h2>
  </div>

  <div class="container product_tabs" style="width: 100%;">
  <div class="col l12 m12 s12" style="width: 100%; margin: 0 auto; margin-bottom: 20px;">
      <ul class="tabs">
        <li class="tab col s15"><a class="active" href="#test1"><?php echo $telefoane ?></a></li>
        <li class="tab col s15"><a href="#test4"><?php echo $tv ?></a></li>
        <li class="tab col s15"><a href="#test2"><?php echo $laptopuri ?></a></li>
      </ul>
  </div>
  <div class="row cont-pr-new" id="cont-pr-new1">
    <div id="test1" class="col m12 l12 s12 hp-slider">
        <ul class="row car_main" id="lightSlider">
          <?php foreach ($products as $product) { ?>
          <?php
            $category = $this->model_catalog_product->getCategories($product['product_id']);
            if ($category){
              $x = count($category);
                for ($a = 0; $a < $x; $a++) {
                  $b =  $category[$a]["category_id"];
                  if ($b == 5) { ?>
                  <li class="col l3 m4 s6">
                    <div class="col s12">
                      <a href="<?php echo $product['href']; ?>">
                        <div class="container_prod_viz">
                          <div class="row prod_row_inner" style="margin: 0;">
                            <div class="col l12 m12 s12" style="padding: 0;">
                            <?php if ($product['thumb']) { ?>
                              <img style="width: 100%;" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>">
                            <?php } ?>
                            </div>
                            <div class="col l12 m12 s12 inf_prod_v" style="padding: 0 15px 0 15px;">
                              <h4><?php echo $product['name']."..."; ?></h4>
                            </div>
                            <hr class="prod_vR_hr col m12 l12 s12" style="border-bottom: 1px solid #e0e0e0;">

                            <div class="col l12 m12 s12 inf_prod_v row">
                            <?php if ($product['price']=='1') { ?>
                              <div class="col l12 m12 s12 inf_prod_v row" style="padding: 0 !important;">
                                <span class="price_pr_noi">
                                    <span><?php echo $Precomanda ?></span>
                                </span>
                              </div>
                            <?php } else { ?>
                              <?php if ($product['quantity']<'1000') { ?>
                               <!--  <p class="col m12 l12 s12 price_pr_noi"><?php if ($product['special']) { echo $product['special']; } else { echo $product['price']; } ?> <?php echo $currency; ?></p>
                                <?php } else { ?>
                                <p style="color: #000;"></p>
                                <?php } ?> -->
                                  <?php if (!$product['special']) { ?>
                                    <span class="col m5 l5 s5 price_pr_noi"><span><?php echo $product['price']; ?><small> <?php echo $currency; ?></small></span></span>
                                  <?php } else { ?>
                                      <span class="col m5 l5 s5 price_pr_noi">
                                        <del class="old_price" style="font-size: 14px; line-height: 1 !important;"><?php echo $product['price']; ?><small> <?php echo $currency; ?></small></del></br>
                                        <span><?php echo $product['special']; ?><small><?php echo $currency; ?></small></span>
                                      </span>
                                  <?php } ?>


                                  <div class="col s7 m7 l7" style="padding: 0 !important; position: relative;">
                                  <?php if ($product['credit'] == 1) { ?>
                                    <div id="new_price"><?php $price_rest = ceil($product['price']-$price_0_avans); ?>
                                    <?php $price_lunar = ceil($price_rest/6); ?>
                                    <span><?php echo $price_lunar; ?></span></div>
                                    <div class="old_price middle_txt"><small><?php echo $month_txt_6; ?></small></div>
                                  <?php } elseif ($product['credit'] == 2) { ?>
                                  <!-- Samsung S4 mini -->
                                    <div id="new_price" ><?php $price_lunar = ceil($product['price2']/6); ?>
                                      <span><?php echo $price_lunar; ?></span></div>
                                    <div class="old_price middle_txt"><small><?php echo $month_txt_6; ?></small></div>
                                  <?php } elseif ($product['credit'] == 3) { ?>
                                  <!-- Lenovo Smartphone 0 0 4 -->
                                    <div id="new_price"><small><?php $avans_0_txt; ?></small></div>
                                    <div class="old_price middle_txt"><?php if (!$product['special']) { $price_lunar = ceil($product['price2']/4); } else { $price_lunar = ceil($product['special2']/4); } ?><small><?php echo $month_t_4; ?></small><br><span><?php echo $price_lunar; ?></span><small><?php echo $leiluna; ?></small></div>
                                  <?php } elseif ($product['credit'] == 4) { ?>
                                  <!-- 24 luni -->
                                    <div id="new_price"><small><?php $avans_0_txt; ?></small></div>
                                    <div class="old_price middle_txt">
                                    <?php if (!$product['special']) { $price_lunar = ceil((($product['price2']*0.625)+$product['price2'])/36); } else { $price_lunar = ceil((($product['special2']*0.625)+$product['special2'])/36); } ?><small><?php echo $month_t_4; ?></small><br><span><?php echo $price_lunar; ?></span><small><?php echo $leiluna; ?></small></div>
                                  <?php } elseif (isset($credit_10)) { ?>
                                  <?php } ?>
                                </div>
                              <?php } ?>

                              <?php if ($product['product_id'] == $this->model_catalog_product->getProductCounter($product['product_id'])['product_id']) { ?>
                                <div class="progress_time_bar">
                                  <div id="progress1" class="progress1">
                                    <div class="percent"></div>
                                    <div class="pbar"></div>
                                    <div class="elapsed"></div>
                                  </div>
                                </div>
                              <?php } ?>

                              <div class="btn_product">
                                <a class="link_product" href="<?php echo $product['href']; ?>"><?php echo $Detalii; ?></a>
                              </div>
                            </div>
                          </div>
                        </div>
                      </a>
                    </div>
                  </li>
            <?php } } } ?>
          <?php } ?>
        </ul>
    </div>
  </div>



  <div class="row cont-pr-new" id="cont-pr-new2">
    <div id="test2" class="col m12 l12 s12 hp-slider">
        <ul class="row car_main" id="lightSlider">
          <?php foreach ($products as $product) { ?>
            <?php
              $category = $this->model_catalog_product->getCategories($product['product_id']);
              if ($category){
                $x = count($category);
                  for ($a = 0; $a < $x; $a++) {
                    $b =  $category[$a]["category_id"];
                    if ($b == 373) { ?>
                    <li class="col l3 m4 s6">
                      <div class="col s12">
                        <a href="<?php echo $product['href']; ?>">
                          <div class="container_prod_viz">
                            <div class="row prod_row_inner" style="margin: 0;">
                              <div class="col l12 m12 s12" style="padding: 0;">
                              <?php if ($product['thumb']) { ?>
                                <img style="width: 100%;" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>">
                              <?php } ?>
                              </div>
                              <div class="col l12 m12 s12 inf_prod_v" style="padding: 0 15px 0 15px;">
                                <h4><?php echo $product['name']."..."; ?></h4>
                              </div>
                              <hr class="prod_vR_hr col m12 l12 s12" style="border-bottom: 1px solid #e0e0e0;">

                              <div class="col l12 m12 s12 inf_prod_v row">
                              <?php if ($product['price']=='1') { ?>
                                <div class="col l12 m12 s12 inf_prod_v row" style="padding: 0 !important;">
                                  <span class="price_pr_noi">
                                      <span><?php echo $Precomanda ?></span>
                                  </span>
                                </div>
                              <?php } else { ?>
                                <?php if ($product['quantity']<'1000') { ?>
                                 <!--  <p class="col m12 l12 s12 price_pr_noi"><?php if ($product['special']) { echo $product['special']; } else { echo $product['price']; } ?> <?php echo $currency; ?></p>
                                  <?php } else { ?>
                                  <p style="color: #000;"></p>
                                  <?php } ?> -->
                                    <?php if (!$product['special']) { ?>
                                      <span class="col m5 l5 s5 price_pr_noi"><span><?php echo $product['price']; ?><small> <?php echo $currency; ?></small></span></span>
                                      <?php } else { ?>
                                        <span class="col m5 l5 s12 price_pr_noi">
                                          <del class="old_price" style="font-size: 14px; line-height: 1 !important;"><?php echo $product['price']; ?><small> <?php echo $currency; ?></small></del></br>
                                          <span><?php echo $product['special']; ?><small><?php echo $currency; ?></small></span>
                                        </span>
                                    <?php } ?>


                                    <div class="col s7 m7 l7" style="padding: 0 !important; position: relative;">
                                    <?php if ($product['credit'] == 1) { ?>
                                      <div id="new_price"><?php $price_rest = ceil($product['price']-$price_0_avans); ?>
                                      <?php $price_lunar = ceil($price_rest/6); ?>
                                      <span><?php echo $price_lunar; ?></span></div>
                                      <div class="old_price middle_txt"><small><?php echo $month_txt_6; ?></small></div>
                                    <?php } elseif ($product['credit'] == 2) { ?>
                                    <!-- Samsung S4 mini -->
                                      <div id="new_price" ><?php $price_lunar = ceil($product['price2']/6); ?>
                                        <span><?php echo $price_lunar; ?></span></div>
                                      <div class="old_price middle_txt"><small><?php echo $month_txt_6; ?></small></div>
                                    <?php } elseif ($product['credit'] == 3) { ?>
                                    <!-- Lenovo Smartphone 0 0 4 -->
                                      <div id="new_price"><small><?php $avans_0_txt; ?></small></div>
                                      <div class="old_price middle_txt"><?php if (!$product['special']) { $price_lunar = ceil($product['price2']/4); } else { $price_lunar = ceil($product['special2']/4); } ?><small><?php echo $month_t_4; ?></small><br><span><?php echo $price_lunar; ?></span><small><?php echo $leiluna; ?></small></div>
                                    <?php } elseif ($product['credit'] == 4) { ?>
                                    <!-- 24 luni -->
                                      <div id="new_price"><small><?php $avans_0_txt; ?></small></div>
                                      <div class="old_price middle_txt">
                                      <?php if (!$product['special']) { $price_lunar = ceil((($product['price2']*0.625)+$product['price2'])/36); } else { $price_lunar = ceil((($product['special2']*0.625)+$product['special2'])/36); } ?><small><?php echo $month_t_4; ?></small><br><span><?php echo $price_lunar; ?></span><small><?php echo $leiluna; ?></small></div>
                                    <?php } elseif (isset($credit_10)) { ?>
                                    <?php } ?>
                                  </div>
                                <?php } ?>

                                <?php if ($product['product_id'] == $this->model_catalog_product->getProductCounter($product['product_id'])['product_id']) { ?>
                                <div class="progress_time_bar">
                                  <div id="progress1" class="progress1">
                                    <div class="percent"></div>
                                    <div class="pbar"></div>
                                    <div class="elapsed"></div>
                                  </div>
                                </div>
                                <?php } ?>

                                <div class="btn_product">
                                  <a class="link_product" href="<?php echo $product['href']; ?>"><?php echo $Detalii; ?></a>
                                </div>
                              </div>
                            </div>
                          </div>
                        </a>
                      </div>
                    </li>
            <?php } } } ?>
          <?php } ?>
        </ul>
    </div>
  </div>

  <div class="row cont-pr-new" id="cont-pr-new4">
    <div id="test4" class="col m12 l12 s12 hp-slider">
        <ul class="row car_main" id="lightSlider">
          <?php foreach ($products as $product) { ?>
            <?php
              $category = $this->model_catalog_product->getCategories($product['product_id']);
              if ($category){
                $x = count($category);
                  for ($a = 0; $a < $x; $a++) {
                    $b =  $category[$a]["category_id"];
                    if ($b == 416) { ?>
                    <li class="col l3 m4 s6">
                      <div class="col s12">
                        <a href="<?php echo $product['href']; ?>">
                          <div class="container_prod_viz">
                            <div class="row prod_row_inner" style="margin: 0;">
                              <div class="col l12 m12 s12" style="padding: 0;">
                              <?php if ($product['thumb']) { ?>
                                <img style="width: 100%;" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>">
                              <?php } ?>
                              </div>
                              <div class="col l12 m12 s12 inf_prod_v" style="padding: 0 15px 0 15px;">
                                <h4><?php echo $product['name']."..."; ?></h4>
                              </div>
                              <hr class="prod_vR_hr col m12 l12 s12" style="border-bottom: 1px solid #e0e0e0;">

                              <div class="col l12 m12 s12 inf_prod_v row">
                              <?php if ($product['price']=='1') { ?>
                                <div class="col l12 m12 s12 inf_prod_v row" style="padding: 0 !important;">
                                  <span class="price_pr_noi">
                                      <span><?php echo $Precomanda ?></span>
                                  </span>
                                </div>
                              <?php } else { ?>
                                <?php if ($product['quantity']<'1000') { ?>
                                 <!--  <p class="col m12 l12 s12 price_pr_noi"><?php if ($product['special']) { echo $product['special']; } else { echo $product['price']; } ?> <?php echo $currency; ?></p>
                                  <?php } else { ?>
                                  <p style="color: #000;"></p>
                                  <?php } ?> -->
                                    <?php if (!$product['special']) { ?>
                                      <span class="col m5 l5 s5 price_pr_noi"><span><?php echo $product['price']; ?><small> <?php echo $currency; ?></small></span></span>
                                      <?php } else { ?>
                                        <span class="col m5 l5 s12 price_pr_noi">
                                          <del class="old_price" style="font-size: 14px; line-height: 1 !important;"><?php echo $product['price']; ?><small> <?php echo $currency; ?></small></del></br>
                                          <span><?php echo $product['special']; ?><small><?php echo $currency; ?></small></span>
                                        </span>
                                    <?php } ?>


                                    <div class="col s7 m7 l7" style="padding: 0 !important; position: relative;">
                                    <?php if ($product['credit'] == 1) { ?>
                                      <div id="new_price"><?php $price_rest = ceil($product['price']-$price_0_avans); ?>
                                      <?php $price_lunar = ceil($price_rest/6); ?>
                                      <span><?php echo $price_lunar; ?></span></div>
                                      <div class="old_price middle_txt"><small><?php echo $month_txt_6; ?></small></div>
                                    <?php } elseif ($product['credit'] == 2) { ?>
                                    <!-- Samsung S4 mini -->
                                      <div id="new_price" ><?php $price_lunar = ceil($product['price2']/6); ?>
                                        <span><?php echo $price_lunar; ?></span></div>
                                      <div class="old_price middle_txt"><small><?php echo $month_txt_6; ?></small></div>
                                    <?php } elseif ($product['credit'] == 3) { ?>
                                    <!-- Lenovo Smartphone 0 0 4 -->
                                      <div id="new_price"><small><?php $avans_0_txt; ?></small></div>
                                      <div class="old_price middle_txt"><?php if (!$product['special']) { $price_lunar = ceil($product['price2']/4); } else { $price_lunar = ceil($product['special2']/4); } ?><small><?php echo $month_t_4; ?></small><br><span><?php echo $price_lunar; ?></span><small><?php echo $leiluna; ?></small></div>
                                    <?php } elseif ($product['credit'] == 4) { ?>
                                    <!-- 24 luni -->
                                      <div id="new_price"><small><?php $avans_0_txt; ?></small></div>
                                      <div class="old_price middle_txt">
                                      <?php if (!$product['special']) { $price_lunar = ceil((($product['price2']*0.625)+$product['price2'])/36); } else { $price_lunar = ceil((($product['special2']*0.625)+$product['special2'])/36); } ?><small><?php echo $month_t_4; ?></small><br><span><?php echo $price_lunar; ?></span><small><?php echo $leiluna; ?></small></div>
                                    <?php } elseif (isset($credit_10)) { ?>
                                      
                                    <?php } ?>
                                  </div>
                                <?php } ?>

                                <?php if ($product['product_id'] == $this->model_catalog_product->getProductCounter($product['product_id'])['product_id']) { ?>
                                <div class="progress_time_bar">
                                  <div id="progress1" class="progress1">
                                    <div class="percent"></div>
                                    <div class="pbar"></div>
                                    <div class="elapsed"></div>
                                  </div>
                                </div>
                                <?php } ?>

                                <div class="btn_product">
                                  <a class="link_product" href="<?php echo $product['href']; ?>"><?php echo $Detalii; ?></a>
                                </div>
                              </div>
                            </div>
                          </div>
                        </a>
                      </div>
                    </li>
            <?php } } } ?>
          <?php } ?>
        </ul>
    </div>
  </div>
</section>
