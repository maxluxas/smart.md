<?php if ($attention) { ?>
    <div class="simplecheckout-warning-block"><?php echo $attention; ?></div>
<?php } ?>    
<?php if ($error_warning) { ?>
    <div class="simplecheckout-warning-block"><?php echo $error_warning; ?></div>
<?php } ?>
    
    <style type="text/css">#checkout_customer_main_email{display: block;}.content-top .page_title{display: none;}
    @media screen and (min-width:551px) {.card-panel{float: right;}.simplecheckout-customer-block{position: absolute; top: 0px; width: 26%;}
    .simplecheckout-customer-two-column-left{float: none;}.simplecheckout-methods-table{position: absolute; top: 230px; width: 18%;}
    .simplecheckout-button-block{top: 400px;position:absolute;float: left;margin-left: 27px;}.simplecheckout-methods-table .title label {font-size:12px;}
    [type="radio"]+label:before, [type="radio"]+label:after {width: 14px;height: 14px;}
    .simplecheckout-methods-table .title .simplecheckout-methods-table .title [type="radio"]+label:after {width: 14px;height: 14px;}
    .image{float:left;}.name{float: right;margin-top: 80px;}
    .simplecheckout-customer-two-column-left{width: 100%;}.simplecheckout-customer-two-column-right{width: 100%;}
    .product_case{width:50%;float:right;}.total,.name{text-align:right;}.simplecheckout-customer-right input[type=text], .simplecheckout-customer-right input[type=password], .simplecheckout-customer-right textarea, .simplecheckout-customer-right select{width:100% !important;}
    #simplecheckout_button_confirm{line-height: 1px;}.why_email{font-size:12px;color:#a5a5a5;font-weight:300;float: right;margin-top: -11px;}
    .simplecheckout-customer-two-column-right tr td.simplecheckout-customer-left{padding-left:17px;}
    .simplecheckout-customer-two-column-right tr.test td.simplecheckout-customer-left{padding-left:5px;}
}
        @media screen and (max-width:550px) {.card-panel{float: left;width: 100%;box-sizing: border-box;}.simplecheckout-customer-block{position: inherit; margin-top: 0px; width: auto;}.simplecheckout-button-block .simplecheckout-button-left{ float:none;text-align: right; }.simplecheckout-customer-two-column-right,.simplecheckout-customer-two-column-left{width:100% !important;}.why_email{font-size:12px;color:#a5a5a5;font-weight:300;}
    }
    </style>
<?php $google_cid=explode(".",$_COOKIE['_ga']); ?>
<input type="text" style="position:absolute;top:-9999px;left:-9999px;" name="ga" id="ga" value="<?php echo $google_cid[2]; ?>.<?php echo $google_cid[3]; ?>">

<div class="credit-button2" style="display:none;">test</div>
    <div class="row">
<?php foreach ($products as $product) { ?>
<input value="<?php echo $product['name']; ?>" id="lead_product_name" style="position:absolute;top:-9999px;left:-9999px;">
<input value="<?php echo $product['total']; ?>" id="lead_product_price" style="position:absolute;top:-9999px;left:-9999px;">
<input value="<?php echo $product['product_id']; ?>" id="product_id" style="position:absolute;top:-9999px;left:-9999px;">
      <div class="col s12">
        <div class="card-panel product_case" style="">

            <div class="col l7 s12">
            <style type="text/css">.shop-cart-mobile{display:none !important;}</style>
            
            <script type="text/javascript">
            var activity_name = "Cosul de cumparaturi";
            var activity_properties = {"product_name": "<?php echo $product['name']; ?>", "price":"<?php echo $product['price']; ?>"};
            nudgespot.track(activity_name, activity_properties);
            </script>
            <div class="remove" style="position: absolute;border: 1px solid;border-radius: 23px;padding: 0px 6px;margin: -31px 0 0 -42px;background: #fff;">
            <i class="icon-remove" style="cursor:pointer; font-size:12px; color:#999;" onclick="jQuery('#simplecheckout_remove').val('<?php echo $product['key']; ?>');simplecheckout_reload('product_removed');"></i>
            <style>.icon-trash:hover {color:#ffcc33 !important;}.icon-plus:hover {color:#ffcc33 !important;}.icon-minus:hover {color:#ffcc33 !important;}</style>
            </div>
            <div class="image" style="">
                <?php if ($product['thumb']) { ?>
                    <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                <?php } ?>
                <input value="<?php echo $product['name']; ?>" id="lead_product_name" style="position:absolute;top:-9999px;left:-9999px;" />
                <input value="<?php echo $product['price']; ?>" id="lead_product_price" style="position:absolute;top:-9999px;left:-9999px;" />
            </div>
            </div>
            <div class="col l5 s12">
            <div class="name">
                <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                <?php if (!$product['stock'] && ($config_stock_warning || !$config_stock_checkout)) { ?>
                    <span class="product-warning">***</span>
                <?php } ?>
                <div class="options">
                <?php foreach ($product['option'] as $option) { ?>
                &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small><br />
                <?php } ?>
                </div>
                <?php if ($product['reward']) { ?>
                <small><?php echo $product['reward']; ?></small>
                <?php } ?>
            </div>
            <div class="total"><nobr style="color: #000;font-size: 36px;text-align: center;"><?php echo $product['total']; ?> <?php echo $currency; ?></nobr></div>
            </div>
        </div>



            <div class="col l7 s12" style="display: none;">
            <div class="atuuri" style="margin:0 !important;border-left: 2px solid #ededed;padding-left: 25px;">
              <div style="margin: 20px 0;"><i class="icon-ok-circle"></i> <?php echo $guaranty; ?></div>       
              <div style="margin: 20px 0;"><i class="icon-refresh"></i> <?php echo $retur; ?></div>
              <div style="font-size: 36px;color: #999;margin-bottom: 8px;line-height: 26px;margin: 20px 0;" class="delivery_ch display_block">
              <div style="line-height: 11px;"><i class="icon-truck"></i> <?php if ($cart_total > 1000) { echo $free_delivery; } else { echo $pay_delivery; } ?></div>
              </div>
              <div style="font-size: 36px;color: #999;margin-bottom: 8px;line-height: 26px;margin: 20px 0;" class="delivery_reg display_none">
              <div style="line-height: 11px;"><i class="icon-truck"></i> <?php if ($cart_total > 3000) { echo $free_delivery_reg; } else { echo $pay_delivery_reg; } ?></div>
              </div>

              <div style="margin: 20px 0;"><i class="icon-group"></i>
              <div style="margin-top: -42px;margin-left: 50px;line-height: 11px;">
              <span style="font-size:14px;font-weight:bold;">98% din clientii smart.md</span><br>
              <span style="font-size:12px;">se declara multumiti</span>
              </div>
              </div>
            </div>
            </div>
      </div>
<?php } ?>
    </div>
    <table class="simplecheckout-cart desktop-view" style="margin-bottom: 0px !important;display: none;">
        <colgroup>
            <col class="image" />
            <col class="name" />
            <col class="model" />
            <col class="quantity" />
            <col class="price" />
            <col class="total" />
            <col class="remove" />
        </colgroup>
        <thead>
            <tr>
                <th class="image"></th>
                <th class="name"><!--<?php echo $column_name; ?>--></th>
                <th class="quantity"><!--<?php echo $column_quantity; ?>--></th>
                <th class="price"><!--<?php echo $column_price; ?>--></th>
                <th class="total"><!--<?php echo $column_total; ?>--></th>
                <th class="remove"></th>        
            </tr>
        </thead>
    <tbody>
    <?php foreach ($products as $product) { ?>
        <tr>
            <td class="image">
                <?php if ($product['thumb']) { ?>
                    <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                <?php } ?>
                <input value="<?php echo $product['name']; ?>" id="lead_product_name" style="position:absolute;top:-9999px;left:-9999px;" />
<input value="<?php echo $product['price']; ?>" id="lead_product_price" style="position:absolute;top:-9999px;left:-9999px;" />
            </td> 
            <td class="name">
                <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                <?php if (!$product['stock'] && ($config_stock_warning || !$config_stock_checkout)) { ?>
                    <span class="product-warning">***</span>
                <?php } ?>
                <div class="options">
                <?php foreach ($product['option'] as $option) { ?>
                &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small><br />
                <?php } ?>
                </div>
                <?php if ($product['reward']) { ?>
                <small><?php echo $product['reward']; ?></small>
                <?php } ?>
            </td>
            <td class="price"><nobr><?php echo $product['price']; ?> <?php echo $currency; ?></nobr></td>
            <!--<?php echo $product['model']; ?>-->
            <td class="quantity">
            <i class="icon-minus" style="cursor:pointer; font-size:24px; color:#999;" <?php if ($quantity > 1) { ?>onclick="jQuery(this).next().val(~~jQuery(this).next().val()-1);simplecheckout_reload('cart_value_decreased');"<?php } ?>></i>
            
                 
                <input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" onchange="simplecheckout_reload('cart_value_changed')" />
                <i class="icon-plus" style="cursor:pointer; font-size:24px; color:#999;"  onclick="jQuery(this).prev().val(~~jQuery(this).prev().val()+1);simplecheckout_reload('cart_value_increased');"></i>

            </td>
            
            <td class="total"><nobr style="color: #000;font-size: 36px;text-align: center;"><?php echo $product['total']; ?> <?php echo $currency; ?></nobr></td>
            <td class="remove">
            <i class="icon-trash" style="cursor:pointer; font-size:24px; color:#999;" onclick="jQuery('#simplecheckout_remove').val('<?php echo $product['key']; ?>');simplecheckout_reload('product_removed');"></i>
            <style>.icon-trash:hover {color:#ffcc33 !important;}.icon-plus:hover {color:#ffcc33 !important;}.icon-minus:hover {color:#ffcc33 !important;}</style>
            </td>        
            </tr>
            <?php } ?>

    </tbody>
</table>


  <!-- end atuuri -->
<div style="display: none;" class="total_div mobile-view">
<?php foreach ($totals as $total) { ?>

    <div class="simplecheckout-cart-total" style="font-size: 16px;text-align: left;padding: 10px;border-top: 1px solid #ccc;margin-top: 10px;" id="total_<?php echo $total['code']; ?>">
        <span><b><?php echo $total['title']; ?></b></span>
        
        <?php if ($total['code'] == 'coupon' || $cart_total < 1000) { ?>
        
        <?php $total_delivery=($total['text']) ?>
        <nobr><?php echo $total_delivery; ?> <?php echo $currency; ?></nobr>
        
        <?php }  else { ?>
        <nobr><?php echo $total['text']; ?> <?php echo $currency; ?></nobr><?php } ?></span>        
        
        <span class="simplecheckout-cart-total-remove">
            <?php if ($total['code'] == 'coupon') { ?>
            
            <img src="<?php echo $simple->tpl_joomla_path() ?>catalog/view/image/close.png" onclick="jQuery('input[name=coupon]').val('');simplecheckout_reload('coupon_removed');" />
           
            <?php } ?>
            <?php if ($total['code'] == 'voucher') { ?>
            <img src="<?php echo $simple->tpl_joomla_path() ?>catalog/view/image/close.png" onclick="jQuery('input[name=voucher]').val('');simplecheckout_reload('voucher_removed');" />
            <?php } ?>
            <?php if ($total['code'] == 'reward') { ?>
            <img src="<?php echo $simple->tpl_joomla_path() ?>catalog/view/image/close.png" onclick="jQuery('input[name=reward]').val('');simplecheckout_reload('reward_removed');" />
            <?php } ?>
        </span>
    </div>
<?php } ?>
</div>  
<div style="display: none;" class="desktop-view">   
<style>
#total_total {width: 354px;margin-top: 10px;border-top: 1px solid #ccc;padding-top: 10px;padding-bottom: 10px;}#total_total nobr {font-size: 36px;}
.display_block {display:block;}
.display_none {display:none;}
label {cursor: pointer !important;}
</style>

<?php if ($cart_total < 200) { ?>
<?php } ?>
<?php foreach ($totals as $total) { ?>

    <div class="simplecheckout-cart-total" style="font-size: 22px;text-align: right;" id="total_<?php echo $total['code']; ?>">
        <span><b><?php echo $total['title']; ?></b></span>
        
		<?php if ($total['code'] == 'coupon' || $cart_total < 1000) { ?>
        
        <?php $total_delivery=($total['text']) ?>
        <nobr><?php echo $total_delivery; ?> <?php echo $currency; ?></nobr>
        
        <?php }  else { ?>
        <nobr><?php echo $total['text']; ?> <?php echo $currency; ?></nobr><?php } ?></span>        
        
        <span class="simplecheckout-cart-total-remove">
            <?php if ($total['code'] == 'coupon') { ?>
            
            <img src="<?php echo $simple->tpl_joomla_path() ?>catalog/view/image/close.png" onclick="jQuery('input[name=coupon]').val('');simplecheckout_reload('coupon_removed');" />
           
            <?php } ?>
            <?php if ($total['code'] == 'voucher') { ?>
            <img src="<?php echo $simple->tpl_joomla_path() ?>catalog/view/image/close.png" onclick="jQuery('input[name=voucher]').val('');simplecheckout_reload('voucher_removed');" />
            <?php } ?>
            <?php if ($total['code'] == 'reward') { ?>
            <img src="<?php echo $simple->tpl_joomla_path() ?>catalog/view/image/close.png" onclick="jQuery('input[name=reward]').val('');simplecheckout_reload('reward_removed');" />
            <?php } ?>
        </span>
    </div>
<?php } ?>

</div>
<!--
<?php if (isset($modules['reward']) && $points > 0) { ?>
    <div class="simplecheckout-cart-total">
        <span class="inputs"><?php echo $entry_reward; ?>&nbsp;<input type="text" name="reward" value="<?php echo $reward; ?>" onchange="simplecheckout_reload('reward_changed')"  /></span>
    </div>
<?php } ?>

<?php if (isset($modules['voucher'])) { ?>
    <div class="simplecheckout-cart-total">
        <span class="inputs"><?php echo $entry_voucher; ?>&nbsp;<input type="text" name="voucher" value="<?php echo $voucher; ?>" onchange="simplecheckout_reload('voucher_changed')"  /></span>
    </div>
<?php } ?>
<?php if (isset($modules['coupon']) || isset($modules['reward']) || isset($modules['voucher'])) { ?>
    <div class="simplecheckout-cart-total simplecheckout-cart-buttons">
        <span class="inputs buttons"><a id="simplecheckout_button_cart" onclick="simplecheckout_reload('cart_changed');" class="button btn"><span><?php echo $button_update; ?></span></a></span>
    </div>
<?php } ?>
-->


<input type="hidden" name="remove" value="" id="simplecheckout_remove" />
<div style="display:none;" id="simplecheckout_cart_total"><?php echo $cart_total ?></div>
<script type="text/javascript">
    jQuery(function(){
        jQuery('#cart_total').html('<?php echo $cart_total ?>');
        jQuery('#cart-total').html('<?php echo $cart_total ?>');
        jQuery('#cart_menu .s_grand_total').html('<?php echo $cart_total ?>');
        <?php if ($simple_show_weight) { ?>
        jQuery('#weight').text('<?php echo $weight ?>');
        <?php } ?>
        <?php if ($template == 'shoppica2') { ?>
        jQuery('#cart_menu div.s_cart_holder').html('');
        $.getJSON('index.php?<?php echo $simple->tpl_joomla_route() ?>route=tb/cartCallback', function(json) {
            if (json['html']) {
                jQuery('#cart_menu span.s_grand_total').html(json['total_sum']);
                jQuery('#cart_menu div.s_cart_holder').html(json['html']);
            }
        });
        <?php } ?>
        <?php if ($template == 'shoppica') { ?>
            jQuery('#cart_menu div.s_cart_holder').html('');
            jQuery.getJSON('index.php?<?php echo $simple->tpl_joomla_route() ?>route=module/shoppica/cartCallback', function(json) {
                if (json['output']) {
                    jQuery('#cart_menu span.s_grand_total').html(json['total_sum']);
                    jQuery('#cart_menu div.s_cart_holder').html(json['output']);
                }
            });
        <?php } ?>
    });
</script>

<?php if ($simple->get_simple_steps() && $simple->get_simple_steps_summary()) { ?>
<div id="simple_summary" style="display: none;margin-bottom:15px;">
    <table class="simplecheckout-cart">
        <colgroup>
            <col class="image" />
            <col class="name" />
            <col class="model" />
            <col class="quantity" />
            <col class="price" />
            <col class="total" />
        </colgroup>
        <thead>
            <tr>
                <th class="image"><?php echo $column_image; ?></th>
                <th class="name"><?php echo $column_name; ?></th>
                <th class="model"><?php echo $column_model; ?></th>
                <th class="quantity"><?php echo $column_quantity; ?></th>
                <th class="price"><?php echo $column_price; ?></th>
                <th class="total"><?php echo $column_total; ?></th>
            </tr>
        </thead>
    <tbody>
    <?php foreach ($products as $product) { ?>
        <tr>
            <td class="image">
                <?php if ($product['thumb']) { ?>
                    <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                <?php } ?>
            </td> 
            <td class="name">
                <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                <?php if (!$product['stock'] && ($config_stock_warning || !$config_stock_checkout)) { ?>
                    <span class="product-warning">***</span>
                <?php } ?>
                <div class="options">
                <?php foreach ($product['option'] as $option) { ?>
                &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small><br />
                <?php } ?>
                </div>
                <?php if ($product['reward']) { ?>
                <small><?php echo $product['reward']; ?></small>
                <?php } ?>
            </td>
            <td class="model"><?php echo $product['model']; ?></td>
            <td class="quantity"><?php echo $product['quantity']; ?></td>
            <td class="price"><nobr><?php echo $product['price']; ?></nobr></td>
            <td class="total"><nobr><?php echo $product['total']; ?></nobr></td>
            </tr>
            <?php } ?>
          <!--  <?php foreach ($vouchers as $voucher_info) { ?>
                <tr>
                    <td class="image"></td>  
                    <td class="name"><?php echo $voucher_info['description']; ?></td>
                    <td class="model"></td>
                    <td class="quantity">1</td>
                    <td class="price"><nobr><?php echo $voucher_info['amount']; ?></nobr></td>
                    <td class="total"><nobr><?php echo $voucher_info['amount']; ?></nobr></td>
                </tr>
            <?php } ?> -->
        </tbody>
    </table>



    <?php foreach ($totals as $total) { ?>
        <div class="simplecheckout-cart-total" id="total_<?php echo $total['code']; ?>">
            <span><b><?php echo $total['title']; ?></b></span>
            <span class="simplecheckout-cart-total-value"><nobr><?php echo $total['text']; ?></nobr></span>
        </div>
    <?php } ?>
</div>
<?php } ?>