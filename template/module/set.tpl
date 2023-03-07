
<?php if ($sets) { ?>
	<div class="box set">
		<div class="box-heading">
			<?php echo $heading_title; ?>
		</div>
		<div class="box-content">
            <div id="carousel_set<?php echo $module; ?>" style="border:2px solid #ffcc33; height:275px;">
              <ul class="jcarousel-skin-opencart">
                <?php foreach ($sets as $set) { ?>
                <li>
                    <h3><?php echo $set['name']; ?></h3>
                    <div class="description"> <?php echo $set['description']; ?> </div>
                    <div class="box-product-set">
                        <?php $i=1; foreach($set['products'] as $product){ ?>
                            <?php if($i!=1){?>
                                <div class="plus">+</div>
                            <?php }?>                             
                            <div>
                                <?php if ($product['thumb']) { ?>
                                    <div class="image" style="text-align: center;">
                                        <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
                                    </div>
                                <?php } ?>
                                <div class="name" style="width:220px;"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>                                
                                <div class="price">
                                  <span class="price-old"><?php echo $product['price']; ?></span>
                                </div>
                                <div class="quantity"><?php echo $product['quantity']; ?><b><?php echo $product['price_in_set']; ?></b></div>    
                            </div>
                        <?php $i++; } ?>
                    </div>
                    <div class="cart">
                        <div><b><?php echo $text_total; ?></b> <?php echo $set['price']; ?></div>
                        <div><b><?php echo $text_save; ?></b> <?php echo $set['save']; ?></div>
                        <a class="button" onclick="addToCart('<?php echo $set['set_id']; ?>');"><?php echo $button_cart; ?></a>
                    </div>
                    
                </li>
                <?php } ?>
              </ul>
            </div>
		</div>
	</div>
<?php } ?>

<script type="text/javascript"><!--
    $('#carousel_set<?php echo $module; ?> ul').jcarousel({
        vertical: false,
       	visible: 1,
       	scroll: 1
    });
//--></script> 