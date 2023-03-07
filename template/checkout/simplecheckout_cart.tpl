<?php if ($attention) { ?>
    <div class="simplecheckout-warning-block"><?php echo $attention; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
    <div class="simplecheckout-warning-block"><?php echo $error_warning; ?></div>
<?php } ?>
<?php $google_cid=explode(".",$_COOKIE['_ga']); ?>
<input type="text" style="position:absolute;top:-9999px;left:-9999px;" name="ga" id="ga" value="<?php echo $google_cid[2]; ?>.<?php echo $google_cid[3]; ?>">
<link rel="stylesheet" href="catalog/view/smartv3/css/cart.css?v=1.4.35">
<style type="text/css">
    #total_shipping {display: none;}
</style>

            <?php $sku_total = array(); ?>
            <?php $names_total = array(); ?>

            <span class="heading_title_cos"><?php echo $heading_title; ?></span>

            <div id="box_prod_cont_cosh">
                <?php $increment_prod = ''; ?>
                <?php $products_basedata = array(); ?>
                <input type="hidden" name="products_name" value="<?php echo $products_name; ?>">
                <?php foreach ($products as $product) { ?>

                <script type="text/javascript">
                    $(document).ready(function(){
                        $("#checkout_form1").prepend("<input style='display: none;' type='text' name='produse_cos' class='produse_cos' value='<?php echo $product['name']; ?>'>");
                        $("#form_credit2").prepend("<input style='display: none;' type='text' name='produse_cos' class='produse_cos' value='<?php echo $product['name']; ?>'>");
                        $("#checkout_form1").prepend("<input style='display: none;' type='text' name='price1' class='price1' value='<?php echo $product['price']; ?>'>");
                        $("#form_credit2").prepend("<input style='display: none;' type='text' name='price1' class='price1' value='<?php echo $product['price']; ?>'>");
                    });
                </script>

                <input value="<?php echo $product['name']; ?>" id="lead_product_name" style="position:absolute;top:-9999px;left:-9999px;">
                <input value="<?php echo $product['total']; ?>" id="lead_product_price" style="position:absolute;top:-9999px;left:-9999px;">
                <input value="<?php echo $product['product_id']; ?>" id="product_id" style="position:absolute;top:-9999px;left:-9999px;">
                <!-- ########### Produs generated Block ########## -->
                <?php
                    $this->load->model('catalog/product');
                    $product_info = $this->model_catalog_product->getProduct($product['product_id']);

                    array_push($sku_total, $product_info['sku']);
                    array_push($names_total, $product_info['name']);
                    $products_basedata[] = array(
                        'name'       => $product_info['name'],
                        'sku'       => $product_info['sku'],
                        'price'     => $product['price2'],
                        'quantity'  => $product['quantity']
                    );

                ?>

                <?php $increment_prod++; ?>

                <div class="row" style="margin-bottom:10px;">
                  <div class="prod_delete">
                    <p>
                      <a onclick="jQuery('#simplecheckout_remove').val('<?php echo $product['key']; ?>');simplecheckout_reload('product_removed');">X</a>
                    </p>
                  </div>
                    <div class="col s4 img_cont_cosh">
                        <?php if ($product['thumb']) { ?>
                            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                        <?php } ?>
                        <input value="<?php echo $product['name']; ?>" id="lead_product_name" style="position:absolute;top:-9999px;left:-9999px;" />
                        <input value="<?php echo $product['price']; ?>" id="lead_product_price" style="position:absolute;top:-9999px;left:-9999px;" />
                    </div>
                    <div class="col s8 info_prod_cell_cosh">
                        <p class="delete_prod_mob"><a onclick="jQuery('#simplecheckout_remove').val('<?php echo $product['key']; ?>');simplecheckout_reload('product_removed');">
                            <svg class="new-svg-icon close_modal close_modal_cos" width="16" height="16" style="font-size: 14px;float: right;border: 1px solid #000;border-radius: 50%;padding: 2px;color: #000;"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-close"></use></svg></a>
                        <h4 class="name_l_h"><?php echo $product['name']; ?></h4>
                         <?php if (!$product['stock'] && ($config_stock_warning || !$config_stock_checkout)) { ?>
                            <div class="product-warning">***</div>
                        <?php } ?>
                        <ul class="price_list inline_list">
                            <li class="pret_sur_txt">Pret</li>
                            <li class="price_cifre_cosh">
                                <!-- <?php if ($product['special']) { ?>
                                    <span class="total_vechi"><?php echo $product['price_vechi']; ?> <small><?php echo $currency; ?></small></span>
                                <?php } else { ?>
                                    <span class="total_vechi" style="color: transparent;">-</span>
                                <?php } ?> -->
                                <span class="total_nou"><?php echo $product['total']; ?> <small><?php echo $currency; ?></small></span>
                            </li>
                            <!-- <li class="price_bonus_credit">
                                <span class="total_bonus">
                                    <? if ((in_array(51, $product['categories'])) || (in_array(372, $product['categories'])) || (in_array(749, $product['categories'])) || (in_array(416, $product['categories'])) || (in_array(1369, $product['categories'])) || (in_array(1329, $product['categories']))) { ?>
                                       +<?php echo number_format(ceil(0.05 * intval(preg_replace('/[^0-9]/', '', $product['total']))), 0, ",", " "); ?><small><?php echo $bonusuri_pr; ?></small>
                                    <?php } else { ?>
                                        &nbsp;
                                    <?php } ?>
                                </span>
                                <span class="total_credit"><?php echo floor(((intval(preg_replace('/[^0-9]/', '', $product['total']))*0.6250)+intval(preg_replace('/[^0-9]/', '', $product['total'])))/36); ?><small><?php echo $leiluna; ?></small></span>
                            </li> -->
                        </ul>
                        <ul class="cont_list_cantit inline_list">
                            <li class="cantitatea_block">Cantitatea </li>


                            <li class="input_part_cosh_add">
                            <span class="Cont_add_rm" <?php if ($quantity > 1) { ?>onclick="jQuery(this).next().val(~~jQuery(this).next().val()-1);simplecheckout_reload('cart_value_decreased');"<?php } ?>>-</span>

                                <input class="count_prod_cosh" name="quantity[<?php echo $product['key']; ?>]" type="number" value="<?php echo $product['quantity']; ?>" onchange="simplecheckout_reload('cart_value_changed')">

                            <span class="Cont_add_rm" onclick="jQuery(this).prev().val(~~jQuery(this).prev().val()+1);simplecheckout_reload('cart_value_increased');">+</span>
                            </li>
                        </ul>
                        <input type="text" name="cod_user_cos" id="cod_user_cos" style="display: none;" value="<?php array_key_exists('roistat_visit', $_COOKIE) ? $_COOKIE['roistat_visit'] : '' ?>">
                        <input type="text" name="roistat_visit" value="<?php echo $_COOKIE['roistat_visit']; ?>" style="display: none;">
                        <input type="text" name="sku_user_cos" id="sku_user_cos" style="display: none;" value="">



                    </div>
                </div>
                <?php } ?>

                <?php foreach ($totals as $total) { ?>
                    <div class="row bottom_prod_block" id="total_<?php echo $total['code']; ?>">
                        <div class="col s12">
                            <ul class="list_elem_btt_cosh right_bott_cont_cosh_prod">
                                <li><?php echo $total['title']; ?></li>
                                <?php if ($total['code'] == 'shipping' && $total['text'] == '0') {  ?>
                                <li class="gratis_txt">Gratuit</li>
                                <?php } elseif ($total['code'] == 'shipping' && $total['text'] > '0') { ?>
                                <li><?php echo $total['text']; ?> <small><?php echo $currency; ?></small></li>
                                <?php } else { ?>
                                <li><?php echo $total['text']; ?> <small><?php echo $currency; ?></small></li>
                                <?php } ?>
                            </ul>
                        </div>
                    </div>

                <?php } ?> 

                <?php if(in_array(749, $categories)) { ?>
                    <span class="nr_contact_cos moveOnMobile"><?php echo sprintf($nr_contact,'roistatphone-electrocasnice','+37376011978','37376011978','roistatphone-electrocasnice','+37376011978'); ?></span>
                <?php } else if(in_array(1054, $categories)) { ?>
                    <span class="nr_contact_cos moveOnMobile"><?php echo sprintf($nr_contact,'roistatphone-mobila','+37376011929','37376011929','roistatphone-mobila','+37376011929'); ?></span>
                <?php } else if(in_array(7025, $categories)) { ?>
                    <span class="nr_contact_cos moveOnMobile"><?php echo sprintf($nr_contact,'static-phone-alimentare','076011914','076011914','static-phone-alimentare','076011914'); ?></span>
                <?php } else { ?>
                    <span class="nr_contact_cos moveOnMobile"><?php echo sprintf($nr_contact,'roistatphone-electronice','+37376011985','37376011985','roistatphone-electronice','+37376011985'); ?></span>
                <?php } ?>
                
            </div>
            <?php if ($total_amount > 999) { ?>
                <span class="nr_contact_cos moveOnMobile MobileVersion"><?php echo $pay_delivery; ?></span>
            <?php } else { ?>
                <span class="nr_contact_cos moveOnMobile MobileVersion"><?php echo $pay_delivery_1000; ?></span>
            <?php } ?>

<?php $comma_separated_sku = implode(",", $sku_total); ?>
<?php $comma_separated_sku1 = implode("', '", $sku_total); ?>
<?php $comma_separated_names = implode("', '", $names_total); ?>

<input type="text" name="sku_total" id="sku_total" style="display: none;" value="<?php echo $comma_separated_sku; ?>">
<input type="hidden" name="categ-produs" value="<?php echo $categ_produs; ?>">
<input type="text" style="display: none;" id="checkout_products_data" name="checkout_products_data" value='<?php echo json_encode($products_basedata); ?>'>
<input type="hidden" name="cart_total" value="<?= $total_amount; ?>">

<?php
    setcookie('products_cos_names', $comma_separated_names, time() + (86400 * 30), '/');
    setcookie('products_cos_sku', $comma_separated_sku1, time() + (86400 * 30), '/');
?>

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

<script>
    var ids = [<?php echo "'" . $comma_separated_sku1 . "'"; ?>];
    <?php $increment = 1; ?>
    gtag('event','add_to_cart', {
        'value': <?php echo number_format(str_replace(" ", "", $total['text']), 0, ".", "") ?>,
        'items': [
            <?php foreach ($sku_total as $sku_gtag) { ?>
            <?php if ($increment != 1) { echo ","; } ?>{
            'id': <?php echo $sku_gtag; ?>, 
            'google_business_vertical': 'retail'
            }
            <?php $increment++; ?>
            <?php } ?>
        ]
    });
</script> 

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
        </tbody>
    </table>

    <?php foreach ($totals as $total) { ?>
        <div class="simplecheckout-cart-total" id="total_<?php echo $total['code']; ?>">
            <span><b><?php echo $total['title']; ?></b></span>
            <span class="simplecheckout-cart-total-value"><nobr><?php echo $total['text']; ?></nobr></span>
        </div>
    <?php } ?>
    <style type="text/css">#total_total{display: none;}</style>
</div>
<?php } ?>
