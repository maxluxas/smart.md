<div class="box-product">

<style>

</style>
  <?php foreach ($similar as $product) { ?>
  <div class="similar_product">
    <?php if ($product['thumb']) { ?>
    <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a></div>
    <?php } ?>
    <!--
    <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
	-->

<!--    <div class="cart"><a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button"><span><?php echo $button_cart; ?></span></a></div>-->
  </div>
  <?php } ?>
</div>
<?php if ($show_pagination) { ?>
<div class="pagination no_bottom_margin"><?php echo $pagination; ?></div>
<?php } ?>
