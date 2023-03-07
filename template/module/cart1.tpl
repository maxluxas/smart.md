<div id="cart" <?php if($text_items>0) { ?>class="not_empty"<?php } ?>>
    <div class="heading">
        <a href="index.php?route=checkout/simplecheckout"><i class="<?php if($this->config->get('tranda_icon_cart') != '') { ?><?php echo $this->config->get('tranda_icon_cart'); ?><?php } else { ?>icon-shopping-cart<?php } ?> icon_shop-cart"></i>
        <p>
           
            <span id="cart-total">(<?php echo $text_items; ?>)</span>
        </p></a>
    </div>
    <div class="content">
        <?php if ($products || $vouchers) { ?>
        <div class="mini-cart-info">
            <table>
                <tbody>
                    <?php foreach ($products as $product) { ?>
                    <tr>
                        <td class="menu">
                            <span class="quantity"><?php echo $product['quantity']; ?>x</span>
                            <a onclick="(getURLVar('route') == 'checkout/simplecheckout' || getURLVar('route') == 'checkout/simplecheckout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $product['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $product['key']; ?>' + ' #cart > *');" class="remove" title="<?php echo $button_remove; ?>"><i class="<?php if($this->config->get('tranda_icon_remove') != '') { ?><?php echo $this->config->get('tranda_icon_remove'); ?><?php } else { ?>icon-trash<?php } ?>"></i></a>
                        </td>
                        <td class="product">
                            <?php if ($product['thumb']) { ?>
                            <a class="image" href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" /></a>
                            <?php } else { ?>
                            <a class="no-image" href="<?php echo $product['href']; ?>"><i class="icon-camera"></i></a>
                            <?php } ?>
                            <p>
                                <b><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></b>
                                <?php foreach ($product['option'] as $option) { ?>
                                <span class="option">- <?php echo $option['name']; ?> <?php echo $option['value']; ?></span>
                                <?php } ?>
                            </p>
                            <span class="total"><?php echo $product['total']; ?> <?php echo $currency; ?></span>
                        </td>
                    </tr>
                    <tr class="space"><td> </td><td> </td></tr>
                    <?php } ?>
                    <?php foreach ($vouchers as $voucher) { ?>
                    <tr class="voucher">
                        <td class="menu">
                            <span class="quantity">1x</span>
                            <a onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $voucher['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $voucher['key']; ?>' + ' #cart > *');" class="remove" title="<?php echo $button_remove; ?>"><i class="<?php if($this->config->get('tranda_icon_remove') != '') { ?><?php echo $this->config->get('tranda_icon_remove'); ?><?php } else { ?>icon-trash<?php } ?>"></i></a>
                        </td>
                        <td class="product">
                            <i class="icon-gift voucher_gift"></i>
                            <p><b><?php echo $voucher['description']; ?></b></p>
                            <span class="total"><?php echo $voucher['amount']; ?></span>
                        </td>
                    </tr>
                    <tr class="space"><td> </td><td> </td></tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
        <div class="bottom-panel">
            <div class="left">
                <a href="<?php echo $checkout; ?>" class="button but_green button_checkout"><i class="<?php if($this->config->get('tranda_icon_checkout') != '') { ?><?php echo $this->config->get('tranda_icon_checkout'); ?><?php } else { ?>icon-credit-card<?php } ?>"></i><?php echo $text_checkout; ?></a>
            </div>
            <div class="right">
                <div class="mini-cart-total">
                  
                      <p><? echo $totals[0]['title']?> <? echo $totals[0]['text']?> <?php echo $currency; ?></p>
                    
                   
                  
                </div>
            </div>
        </div>
        <?php } else { ?>
        <p class="empty"><?php echo $text_empty; ?></p>
        <div class="bottom-panel">
            <div class="left">
                <a class="button but_green button_checkout but_inavtive"><i class="<?php if($this->config->get('tranda_icon_checkout') != '') { ?><?php echo $this->config->get('tranda_icon_checkout'); ?><?php } else { ?>icon-credit-card<?php } ?>"></i><?php echo $text_checkout; ?></a>
            </div>
            <div class="right">
                <div class="mini-cart-total inavtive-cart-total">
                  
                      <p><? echo $totals[0]['title']?> <? echo $totals[0]['text']?> <?php echo $currency; ?></p>
                   
                </div>
            </div>
        </div>
        <?php } ?>
    </div>
</div>