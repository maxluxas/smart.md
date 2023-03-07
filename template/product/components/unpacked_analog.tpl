<?php if($existunpackedanalog) { ?>
    <?php foreach($unpackedanalog as $pack) { ?>
        <div class="__new_resigilat_block">
          <div class="__new_resigilat_block_content">
            <div class="__new_resigilat_details">
              <img src="<?php echo $pack['thumb']; ?>" class="__new_resigilat_image">
              <div class="__new_pr_resigilat">
                <span class="__new_resigilat_denumire"><?php echo $pack['name']; ?></span>
                <span class="__new_resigilat_label"><?php echo $nou; ?></span>
              </div>
            </div>
            <div class="__new_resigilat_atuu">
              <div class="__new_resigilat_atuu_1">
                <svg class="new-svg-icon icon_dialog" width="20" height="20"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-checked"></use></svg>
                <span class="__new_atuu_text"><?php echo sprintf($mai_scump, $pack['econom'].$product_currency); ?></span>
              </div>
              <div class="__new_resigilat_atuu_2">
                <svg class="new-svg-icon icon_dialog" width="20" height="20"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-checked"></use></svg>
                <span class="__new_atuu_text"><?php echo $months_waranty; ?></span>
              </div>
            </div>
            <div class="__new_resigilat_price">
              <!-- <span class="__new_resigilat_vechi"><?php echo $pack['parentprice']; ?> <?php echo $product_currency; ?></span> -->
              <span class="__new_resigilat_nou"><?php echo $pack['price']; ?> <?php echo $product_currency; ?></span>
            </div>
            <div class="__new_resigilat_button">
              <a href="<?php echo $pack['href']; ?>" id="__new_add_to_cart_resigilat" class="__new_add_to_cart_resigilat"><?php echo $detalii_unpack; ?></a>
            </div>
          </div>
        </div>

        <div class="__new_resigilat_block_mobile">
          <span class="__new_resigilat_utilizat"><?php echo $nou; ?></span>
          <span class="__new_resigilat_de_la"> <?php echo $resigilate_de_la; ?> <?php echo $pack['price']; ?></span>
          <span class="__new_resigilat_de_la"> <?php echo $resigilate_lei; ?></span>
          <a href="<?php echo $pack['href']; ?>" id="__new_add_to_cart_resigilat" class="__new_add_to_cart_resigilat"><?php echo $detalii_unpack; ?></a>
        </div>
    <?php } ?>
<?php } ?>