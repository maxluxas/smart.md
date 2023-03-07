<link rel="stylesheet" type="text/css" href="catalog/view/smartv3/css/smart_delivery_methods.min.css?v=1.00">

<?php if(count($delivery_options)){ ?>

    <div class="order_delivery">
        <div class="heading_checkout"><?= $delivery_title; ?></div>

        <div class="delivery_options">


            <?php foreach($delivery_options as $option) { ?>

            <?php if($option['option_key'] === '_LLU_' && isset($option['local']) && isset($option['region']) ) { ?>
                <input type="hidden" name="local_price" value="<?= $option['local'] . ' ' . $text_currency  ?>">
                <input type="hidden" name="region_price" value="<?=$option['region'] . ' ' . $text_currency ?>">
            <?php } ?>

            <label class="option">

                <input type="radio" name="delivery_option"
                       value="<?=$option['option_key'];?>"
                        <?php if( $option['disabled']) { ?> disabled <?php } ?>
                    >
                <div class="option_content">

                    <span class="name"><?=$option['name'];?></span>

                    <?php if( $option['disabled'] ) { ?>
                        <strong class="price" > <?= $text_not_compatible?> </strong>
                    <?php } 
                    else if( $option['price']) { ?>
                        <strong class="price" ><?=$option['price'];?> <?= $text_currency?></strong>
                    <?php } else { ?>
                    <strong ><?= $text_free; ?></strong>
                    <?php } ?>

                </div>
            </label>

            <?php } ?>

        </div>

        <div class="delivery_address">
            <div>
                    <!--<input type="text"
                    class="simplecheckout-red-border"
                    id="delivery_zone"
                    name="delivery_data[shipping_zone]"
                    value="" placeholder="<?= $entry_zone; ?>">-->

                <div class="zone_list">
                    <select name="delivery_data[shipping_zone]" id="delivery_zone">
                        <?php foreach($geo_zones as $zone) { ?>
                        <option value="<?= $zone['name'] ?>"
                        <?php if( $zone['name'] === 'Chisinau') { ?> selected <?php } ?>
                        ><?= $zone['name'] ?></option>
                        <?php } ?>
                    </select>
                </div>

            </div>
                <div>
                    <input type="text"
                        class="simplecheckout-red-border"
                        id="delivery_city"
                        name="delivery_data[shipping_city]"
                        value="" placeholder="<?= $entry_zone; ?>">
                </div>

                <input type="text"
                   class="simplecheckout-red-border"
                   id="delivery_address"
                   name="delivery_data[shipping_address]"
                   value="" placeholder="<?= $entry_address; ?>">
        </div>


        <div class="sbox_list">


            <select id="city" name="box_city" class="box">
                <option value=""><?= $entry_city; ?></option>
                <?php foreach($box_cities as $option){ ?>
                <option value="<?=$option['city_id']?>"><?= $option['name']?></option>
                <?php } ?>
            </select>

            <select id="city" name="box_zone" class="box hide">
               
            </select>

            <select id="sbox" class="box sbox hide" name="sbox">
            
            </select>



        </div>
        <div id="buttons">
            <button id="submit_form"
                    class="waves-effect waves-light btn cumpara_cosh_btn button-cart"
            >
                <?= $button_submit; ?>
            </button>
        </div>
    </div>
    <div id="delivery_success" class="delivery_success">
        <div class="heading_checkout"><?= $text_success; ?></div>
        <div class="sumtot_checkout">  <div><?= $entry_delivery_price; ?>
                <span id="delivery_price"></span>
                <span id="delivery_free" class="free_delivery"><?= $text_free; ?></span>
            </div>
        </div>
        <div class="sumtot_checkout">  <div><?= $entry_method; ?><span id="delivery_method"> </span></div> </div>
        <div class="sumtot_checkout hidden" id="delivery_method_address_wrap">  <div><?= $entry_method_address; ?> <span id="delivery_address_text"> </span></div> </div>
    </div>
        <input type="hidden" name="selected_address" value="Test">

<?php } ?>

<script defer="" src="catalog/view/smartv3/js/smart_delivery_methods.min.js?v=1.012"></script>