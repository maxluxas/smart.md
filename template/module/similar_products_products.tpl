<div id="additional_colors" class="jcarousel-skin-colors" style="list-style-type: none">
  <div>
    <div class="row circles">
    <?php if (isset($colors)) { foreach ($colors as $product) { ?>

    <a href="<?php echo $product['color_link']; ?>" class="sim_link">
        <div class="col s3 col_aria">
            <aside class="cirle" style="border:1px solid #<?php if (strpos($product['color_text'],'White') !== false) { ?>e0e0e0<?php } else { echo $product['color_cod']; } ?>; background:#<?php echo $product['color_cod']; ?>"></aside>
        </div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
    </a>

    <?php } } ?>
    </div>
  </div>
</div>
<style>
.color_title {display: none;}
.sim_div {width:16px; height:16px; border-radius:10px; display: inline-block; margin-right: 4px;vertical-align: text-bottom;}
</style>