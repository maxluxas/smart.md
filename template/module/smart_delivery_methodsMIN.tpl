<style>
.delivery_address,.delivery_address.hidden,.delivery_success,.free_delivery.hidden,.label,.order_delivery.hidden,.sbox_list,.ship_label,.sumtot_checkout.hidden{display:none}.sbox_list{margin-top:20px}.zone_list select{display:block}.delivery_success{font-size:18px}.__new_checkout_container{display:flex;margin-right:5%}.delivery_address.open,.sbox_list.open{display:grid;gap:10px;grid-template-columns:repeat(2,50%);padding-right:10px}.delivery_success.open{display:flex;flex-flow:column;gap:0}.sbox_list select{display:revert}.order_delivery{color:#37474f;margin:140px 0 20px;width:90%}@media (min-width:1366px){.order_delivery{padding-right:30px}#sbox{width:100%;grid-column:1/span 2}.delivery_success{margin-top:140px}}@media (max-width:1366px){.delivery_success,.order_delivery{margin-top:20px}.__new_checkout_container{flex-flow:column}.order_delivery{width:100%}.delivery_address.open,.sbox_list.open{grid-template-columns:auto}}.label.has-err{color:#e82b2b;display:inline}.sbox.has-err,.simplecheckout-red-border.has-err{border-color:red}.delivery_options{display:grid;grid-gap:10px;grid-template-columns:repeat(2,1fr)}.delivery_options .option label{display:flex;flex-flow:column}.delivery_options .option{cursor:pointer}.delivery_options .option .option_content{display:flex;align-items:center;justify-content:center;flex-flow:column;padding:10px 5px;border:2px solid #8c8c8c;border-radius:10px;background:#fff;color:#37474f;font-size:12px;line-height:1.2}[type=radio]:disabled~.option_content{background:#ddd;cursor:not-allowed}.button-cart,[type=radio]:checked~.option_content{background:#fc3}.input__group{display:flex;gap:40px}.delivery_address{margin:20px 0}.delivery_address input:focus{border-bottom:1px solid #fc3!important;box-shadow:0 1px 0 0 #fc3!important}.button-cart{z-index:1;width:80%;height:50px;display:flex;align-items:center;justify-content:center;float:none;margin-left:auto;margin-right:auto;color:#000;font-family:Roboto;font-weight:500;padding-left:20px;padding-right:20px;border-radius:6px;box-shadow:0 0 15px 0 #fc3}
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
$(document).ready(function(){function e(){let e=$("[name='delivery_data[shipping_zone]']").find("option:selected"),i=$("[name='local_price']").val(),a=$("[name='region_price']").val();"Chisinau"==e.val()?$("#delivery_price").text(i):$("#delivery_price").text(a)}function i(e){let i=$("input[value="+e+"]").next(".option_content"),a=i.find(".name").text(),d=i.find(".price").text();$("#delivery_price").text(d),$("#delivery_method").text(a)}function a(){$(".sbox_list").addClass("open"),$(".sbox_list").click()}function d(){$(".sbox_list").removeClass("open")}function n(){$(".delivery_address").removeClass("open")}$('[name="delivery_option"]:not(:disabled):first').prop("checked",!0),$("#submit_form").on("click",function(){let e=$("[name='delivery_option']:checked").val(),i=$("[name='sbox']").val(),a={shipping_address:$("[name='delivery_data[shipping_address]']").val(),shipping_zone:$("[name='delivery_data[shipping_zone]']").val(),shipping_city:$("[name='delivery_data[shipping_city]']").val()};(function e(i=null,a=null,s=null){$.ajax({url:"index.php?route=checkout/success/add_delivery",type:"post",data:{delivery_option:i,sbox:a,delivery_data:s},dataType:"json",success:function(e){$("#delivery_address").removeClass("has-err"),$("#delivery_zone").removeClass("has-err"),$("#delivery_city").removeClass("has-err"),$("#sbox").removeClass("has-err"),e.data?e.data.success?($(".order_delivery").addClass("hidden"),$(".order_delivery").remove(),d(),n(),$(".delivery_success").addClass("open")):console.log("Errors"):(console.log("Failed to send the delivery method"),e.error&&(e.error.shipping_address&&$("#delivery_address").addClass("has-err"),e.error.shipping_zone&&$("#delivery_zone").addClass("has-err"),e.error.shipping_city&&$("#delivery_city").addClass("has-err"),e.error.sbox&&$("#sbox").addClass("has-err")))}})})(e,i,a)}),i("_RDD_"),$("[name='delivery_option']").change(function(s){var t=$(this).val();"_SBOX_"===t?a():d(),"_LLU_"===t?($(".delivery_address").addClass("open"),e()):n(),"_RDD_"===t||"_RDS_"===t?($("#delivery_method_address_wrap").addClass("hidden"),$("#delivery_free").removeClass("hidden")):($("#delivery_method_address_wrap").removeClass("hidden"),$("#delivery_free").addClass("hidden")),i(t),"_LLU_"===t&&e()}),$("[name='delivery_data[shipping_zone]']").change(function(i){e()}),$("[name='sbox']").change(function(e){let i=$(this).find("option:selected"),a=null;a=""!==i.val()?i.text():"",$("#delivery_address_text").text(a)}),$("[name='box_city']").change(function(e){(function e(i=0){$.ajax({url:"index.php?route=module/smart_delivery_methods/getZones",type:"post",data:{city_id:i},dataType:"json",success:function(e){let i=$("[name='box_zone']");i.children().remove(),i.removeClass("hide");let d='<option value=""><?= $entry_zone; ?></option>';e.success?(a(),e.data.forEach(function(e){d+='<option value="',d+=e.zone_id,d+='">'+e.name+"</option>"}),i.append(d)):(console.log("Failed to send the delivery method"),e.error)}})})($(this).find("option:selected").val())}),$("[name='box_zone']").change(function(e){(function e(i=0){$.ajax({url:"index.php?route=module/smart_delivery_methods/getPickups",type:"post",data:{zone_id:i},dataType:"json",success:function(e){let i=$("[name='sbox']");i.children().remove(),i.removeClass("hide");let a='<option value=""><?= $entry_pickup; ?></option>';e.success?(e.data.forEach(function(e){a+='<option value="',a+=e.pickup_id,a+='">'+e.city+", "+e.zone+", "+e.name+"</option>"}),i.append(a)):(console.log("Failed to send the delivery method"),e.error)}})})($(this).find("option:selected").val())}),$("[name='delivery_data[shipping_address]'], [name='delivery_data[shipping_zone]'],  [name='delivery_data[shipping_city]']").change(function(e){let i=$("[name='delivery_data[shipping_address]']").val(),a=$("[name='delivery_data[shipping_zone]']").val(),d=$("[name='delivery_data[shipping_city]']").val();$("#delivery_address_text").text(i+", "+a+", "+d)})});
</script>