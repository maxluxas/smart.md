<?php if (count($products) > 0) { ?>
<section id="prod_viz_rec">
  <div class="container content_in_main prod_viz_sec">
    <h2 class="heading_smart">
      <span class="heading_title_style" style="padding-left: 0px;"><?php echo $heading_title; ?></span>
    </h2>
    <div class="row products_row">
    <?php foreach ($products as $product) { ?>
      <div class="col l3 s6">
        <a href="<?php echo $product['href']; ?>">
        <div class="container_prod_viz">
          <div class="row prod_row_inner">
            <div class="col l4 img_prod_v">
            <?php if ($product['thumb']) { ?>
              <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>">
            <?php } ?>
            </div>
            <div class="col l8 inf_prod_v">
              <h4 style="color: #000;"><?php echo $product['name']; ?></h4>
              <hr class="prod_vR_hr">
              <?php if ($product['quantity']<1000) { ?>
              <p style="color: #000;"><?php if ($product['special']) { echo $product['special']; } else { echo $product['price']; } ?> <?php echo $currency; ?></p>
              <?php } else { ?>
              <p style="color: #000;"></p>
              <?php } ?>
            </div>
          </div>
        </div>
        </a>
      </div>
    <?php } ?>
    </div>
  </div>
</section>
 <?php } ?>