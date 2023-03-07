<style>

    .sbox_list, .delivery_address, .delivery_success {
        display: none;
    }
    .sbox_list {
        margin-top: 20px;
        // margin-bottom: 20px;
    }
    .zone_list select {
        display: block;
    }

    .free_delivery.hidden {
        display: none;
    }
    .delivery_success {
        font-size: 18px;
    }

    .__new_checkout_container {
        display: flex;
        margin-right: 5%;
    }

    .ship_label {
        display: none;
    }
    .sbox_list.open,
    .delivery_address.open {
        display: grid;
        gap: 10px;
        grid-template-columns: repeat(2,50%);
        padding-right: 10px;
    }

    .delivery_success.open {
        display: flex;
        flex-flow: column;
        gap: 0;
    }

    .sbox_list select {
        display: revert;
    }
 
    .order_delivery {
        color: #37474f;
        margin: 140px 0 20px 0;
        width: 90%;
    }

    @media (min-width: 1366px) {
        .order_delivery {
            padding-right: 30px;

        }
        #sbox {
            width: 100%;
            grid-column: 1 / span 2;
        }
        .delivery_success {
            margin-top: 140px;
        }
    }

    @media (max-width: 1366px) {
        .__new_checkout_container {
            flex-flow: column;
        }
        .order_delivery {
            width: 100%;
        }
        .order_delivery {
            margin-top: 20px;
        }
        .sbox_list.open,
        .delivery_address.open {
            grid-template-columns: auto;
        }
        .delivery_success {
            margin-top: 20px;
        }
    }


    .order_delivery.hidden,
    .delivery_address.hidden,
    .sumtot_checkout.hidden {
        display: none;
    }
    .label {
        display: none;
    }
    .label.has-err {
        color: rgb(232, 43, 43);
        display: inline;
    }
    .simplecheckout-red-border.has-err,
    .sbox.has-err{
        border-color: red;
    }

    .delivery_options {
        display: grid;
        grid-gap: 10px;
        grid-template-columns: repeat(2, 1fr);
    }

    .delivery_options .option label {
        display: flex;
        flex-flow: column;
    }

    .delivery_options .option {
        cursor: pointer;
    }
    .delivery_options .option .option_content {
        display: flex;
        align-items: center;
        justify-content: center;
        flex-flow: column;
        padding: 10px 5px;
        border: 2px solid #8c8c8c;
        border-radius: 10px;
        background: #fff;
        color: #37474f;
        font-size: 12px;
        line-height: 1.2;
    }

    [type="radio"]:disabled ~ .option_content {
        background: #ddd;
        cursor: not-allowed;
    }

    [type="radio"]:checked ~ .option_content {
        background: #fc3;
    }

    .input__group {
        display: flex;
        gap: 40px;
    }

    .delivery_address {
        margin: 20px 0;
    }


    .delivery_address input:focus {
        border-bottom: 1px solid #ffcc33 !important;
        box-shadow: 0 1px 0 0 #ffcc33 !important;
    }
    .button-cart {
        background: rgb(255, 204, 51);
        z-index: 1;
        width: 80%;
        height: 50px;
        display: flex;
        align-items: center;
        justify-content: center;
        float: none;
        margin-left: auto;
        margin-right: auto;
        color: #000;
        font-family: Roboto;
        font-weight: 500;
        padding-left: 20px;
        padding-right: 20px;
        border-radius: 6px;
        box-shadow: 0 0 15px 0px #ffcc33;
    }

</style>

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

<script>
    $(document).ready(function(){
        $('[name="delivery_option"]:not(:disabled):first' ).prop('checked', true);

        $("#submit_form").on('click', function () {

            const delivery_option = $("[name='delivery_option']:checked").val();
            const sbox = $("[name='sbox']").val();
            const delivery = {
                'shipping_address'  : $("[name='delivery_data[shipping_address]']").val(),
                'shipping_zone'     : $("[name='delivery_data[shipping_zone]']").val(),
                'shipping_city'     : $("[name='delivery_data[shipping_city]']").val(),
            };

            submit(delivery_option,sbox,delivery);
        });
        setSuccess('_RDD_');
        $("[name='delivery_option']").change(function(e){
            var value = $(this).val();

            if (value === '_SBOX_') {
                openSbox();
            } else {
                hideSbox();
            }

            if (value === '_LLU_') {
                openAddress();
                setRegionPrice();
            } else {
                hideAddress();
            }

            if (value === '_RDD_' || value === '_RDS_') {
                $("#delivery_method_address_wrap").addClass('hidden')
                $("#delivery_free").removeClass('hidden');
            } else {
                $("#delivery_method_address_wrap").removeClass('hidden')
                $("#delivery_free").addClass('hidden');
            }

            setSuccess(value);
            if (value === '_LLU_') {
                setRegionPrice();
            }
        });

        $("[name='delivery_data[shipping_zone]']").change(function(e){
            setRegionPrice();
        });


        $("[name='sbox']").change(function(e){
            let el = $(this).find('option:selected');
            let selected = null;
            if (el.val() !== '') {
                selected = el.text();
            } else {
                selected = '';
            }
            $("#delivery_address_text").text(selected);
        });


        $("[name='box_city']").change(function(e){
            let el = $(this).find('option:selected');
            get_zones(el.val());
        });

         $("[name='box_zone']").change(function(e){
            let el = $(this).find('option:selected');
            get_pickups(el.val());
        });
        
        $("[name='delivery_data[shipping_address]'], [name='delivery_data[shipping_zone]'],  [name='delivery_data[shipping_city]']").change(function(e){

            let sel_add     = $("[name='delivery_data[shipping_address]']").val();
            let sel_zone    = $("[name='delivery_data[shipping_zone]']").val();
            let sel_city    = $("[name='delivery_data[shipping_city]']").val();

            $("#delivery_address_text").text(sel_add + ', ' + sel_zone + ', ' + sel_city);
        });

        function setRegionPrice() {
            let el = $("[name='delivery_data[shipping_zone]']").find('option:selected');

            let local_price     = $("[name='local_price']").val();
            let region_price    = $("[name='region_price']").val();
            // console.log('chec')
            // console.log(el.val())
            // console.log(el.val() == 'Chisinau')
            if (el.val() == 'Chisinau') {
                $("#delivery_price").text(local_price);
            } else {
                $("#delivery_price").text(region_price);
            }
        }
        function setSuccess(value) {
            let selector = $("input[value=" + value + "]").next('.option_content');
            let method = selector.find('.name').text();
            let price = selector.find('.price').text();

            $("#delivery_price").text(price);
            $("#delivery_method").text(method);

        }
        function openSbox() {
            $(".sbox_list").addClass('open');
            $(".sbox_list").click();
        }

        function hideDelivery() {
            $(".order_delivery").addClass('hidden');
            $(".order_delivery").remove();
            hideSbox();
            hideAddress();
            showSuccess();
        }

        function showSuccess() {
            $(".delivery_success").addClass('open');
        }

        function hideSbox() {
            $(".sbox_list").removeClass('open');
        }

        function openAddress() {
            $(".delivery_address").addClass('open');
        }

        function hideAddress() {
            $(".delivery_address").removeClass('open');
        }

        function submit(delivery_option = null, sbox = null, delivery = null ) {

            $.ajax({
                url: 'index.php?route=checkout/success/add_delivery',
                type: 'post',
                data: {
                    delivery_option: delivery_option,
                    sbox: sbox,
                    delivery_data: delivery
                },
                dataType: 'json',



                success: function(json) {

                    $('#delivery_address').removeClass('has-err');
                    $('#delivery_zone').removeClass('has-err');
                    $('#delivery_city').removeClass('has-err');
                    $('#sbox').removeClass('has-err');

                    if (json['data']) {
                        if (json['data']['success']) {
                            // console.log(json)
                            hideDelivery();

                        } else {
                            console.log('Errors')
                        }
                    }
                    else {
                        console.log('Failed to send the delivery method')
                        if (json['error']) {

                            if (json['error']['shipping_address']) {
                                $('#delivery_address').addClass('has-err');
                            }
                            if (json['error']['shipping_zone']) {
                                $('#delivery_zone').addClass('has-err');
                            }
                            if (json['error']['shipping_city']) {
                                $('#delivery_city').addClass('has-err');
                            }
                            if (json['error']['sbox']) {
                                $('#sbox').addClass('has-err');
                            }

                        }
                    }
                }
            });
        }


        function get_zones(city_id = 0 ) {

            $.ajax({
                url: 'index.php?route=module/smart_delivery_methods/getZones',
                type: 'post',
                data: {
                    city_id: city_id,
                },
                dataType: 'json',

                success: function(json) {
                    const boxzone = $("[name='box_zone']");
                    boxzone.children().remove();
                    boxzone.removeClass('hide');

                    let html = '<option value=""><?= $entry_zone; ?></option>';

                    if (json['success']) {
                        openSbox();
                        // console.log(json)
                        json.data.forEach( function(e) {
                            html += '<option value="';
                            html += e.zone_id;
                            html += '">' + e.name + '</option>';
                        })
                        boxzone.append(html);
                    }

                    
                    else {
                        console.log('Failed to send the delivery method')
                        if (json['error']) {


                        }
                    }
                }
            });
        }

        function get_pickups(zone_id = 0 ) {

            $.ajax({
                url: 'index.php?route=module/smart_delivery_methods/getPickups',
                type: 'post',
                data: {
                    zone_id: zone_id,
                },
                dataType: 'json',

                success: function(json) {
                    const sbox = $("[name='sbox']");
                    sbox.children().remove();
                    sbox.removeClass('hide');

                    let html = '<option value=""><?= $entry_pickup; ?></option>';

                    if (json['success']) {
                        // console.log(json)
                        json.data.forEach( function(e) {
                            html += '<option value="';
                            html += e.pickup_id;
                            html += '">'+ e.city + ', ' + e.zone + ', ' + e.name + '</option>';
                        })
                        sbox.append(html);
                    }

                    
                    else {
                        console.log('Failed to send the delivery method')
                        if (json['error']) {


                        }
                    }
                }
            });
        }


    });


</script>