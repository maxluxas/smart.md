<!-- start item -->
   <div class="col m3 s6 pre_bloc_prod_cont row_special" style="position:relative">
      <div class="Block_cont_produsC row_special" id="id_prod_1">
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
         <div class="row grid_bottom_side">
            <?php if($product['stock_status_id'] != 5) { ?>
            <div class="col m6 s6 price_container pr">
               <div style="display: none;"><?php echo $product['price2']; ?></div>
               <?php if ($product['price']=='1') { ?>
               <span class="price_prod single_price">
               <span><?php echo $text_buton_precomanda; ?></span>
               </span>
               <?php } else { ?>
               <?php if (!$product['special']) { ?>
               <span class="price_prod">
               <span><?php echo $product['price']; ?><small><?= $product_currency; ?></small>
               </span>
               </span>
               <?php } else { ?>
               <span class="price_prod">
               <del class="old_price"><?php echo $product['price']; ?><small><?= $product_currency; ?></small>
               </del>
               <span><?php echo $product['special']; ?><small><?= $product_currency; ?></small>
               </span>
               </span>
               <?php } ?>
               <?php } ?>
            </div>
            <?php } ?>
            <div class="col m6 s6 price_container cred">
               <?php if ($product['credit_rata_value']) { ?>
               <div class="monthly_rate">
                  <small class="rate_label" style="color: #A6A6A6;"><?= $per_month; ?></small>
                  <strong class="rate_price" style="color: #bf0000;"><?= $product['credit_rata_value']; ?>
                     <span class="rate_currency"><?= $product_currency;?></span>
                  </strong>
               </div>
            <?php } ?>
            </div>
         </div>
      </div>
   </div>