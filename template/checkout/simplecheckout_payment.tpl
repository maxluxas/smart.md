<?php if ($simple_show_errors && $error_warning) { ?>
    <div class="simplecheckout-warning-block"><?php echo $error_warning ?></div>
<?php } ?>

<?php if(!in_array('7025',$allcheckout_categories)) { ?>
    <div class="simplecheckout-block-content row mod_plata_row">

            <?php if($total_amount >= 1) { ?>
                <div class="col l4 m4 s4 code code_credit" onclick="open_credit_module()" style="display: block; float: left;">

                    <input type="radio" class="with-gap" title-pay="Credit" name="payment_method" value="pop_cred" id="pop_cred" />
                    <label for="pop_cred">
                      <div class="payment_select">
                        
                        <p><?php echo $credit; ?></p>
                      </div>
                    </label>

                </div>
            <?php } ?>
            <?php if (!empty($disabled_methods)) { ?>

                    <?php foreach ($disabled_methods as $key => $value) { ?>
                        <div class="col l4 m4 s4 code">
                                <input type="radio" class="with-gap" name="disabled_payment_method" disabled="disabled" value="<?php echo $key; ?>" id="<?php echo $key; ?>" />
                                <label for="<?php echo $key; ?>"><?php echo $value['title']; ?></label>
                        </div>
                        <?php if (!empty($value['description'])) { ?>
                            <div>
                                    <label for="<?php echo $key; ?>"><?php echo $value['description']; ?></label>
                            </div>
                        <?php } ?>
                    <?php } ?>
            <?php } ?>


            <?php if (!empty($payment_methods)) { ?>
                <table class="simplecheckout-methods-table" style="display: none;">
                    <input type="hidden" id="payment_method_name" name="payment_method_name" value=""/>
                    <input type="radio" class="with-gap" name="payment_method" value="option_payment_disabled" id="option_payment_disabled" />
                    <?php foreach ($payment_methods as $payment_method) { ?>
                        <?php if($payment_method['code'] == 'paynet' || $payment_method['code'] == 'paynet_btc' || $payment_method['code'] == 'paynet_qiwi' || $payment_method['code'] == 'paynet_vm' || $payment_method['code'] == 'paynet_vm_eur' || $payment_method['code'] == 'paynet_vm_usd' || $payment_method['code'] == 'paynet_yndx')  { ?>
                                <input type="radio" class="with-gap" title-pay="<?php echo $payment_method['title']; ?>" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" />
                        <?php } else if ($payment_method['code'] != 'bank_transfer') { ?>
                            <div class="col l4 m4 s4 code code_first">

                                    <input type="radio" class="with-gap" title-pay="<?php echo $payment_method['title']; ?>" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" <?php if ($payment_method['code'] == 'cod') { ?>checked="checked"<?php } ?>" />
                                    <label for="<?php echo $payment_method['code']; ?>">
                                      <div class="payment_select">
                                      
                                      <p><?php echo $payment_method['title']; ?></p></div>
                                    </label>

                            </div>
                            <?php if (!empty($payment_method['description'])) { ?>
                                <div>
                                        <label for="<?php echo $payment_method['code']; ?>"><?php echo $payment_method['description']; ?></label>
                                </div>
                            <?php } ?>
                        <?php } ?>
                    <?php } ?>
                </table>
        
                <?php foreach ($payment_methods as $payment_method) { ?>
                    <?php if($payment_method['code'] == 'bank_transfer') { ?>
                        <div class="col l4 m4 s4 code code_bank_transfer" style="display: block; float: left;">

                            <input type="radio" title-pay="<?php echo $payment_method['title']; ?>" class="with-gap" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" <?php if ($payment_method['code'] == 'cod') { ?>checked="checked"<?php } ?>" />
                            <label for="<?php echo $payment_method['code']; ?>">
                              <div class="payment_select">
                                
                                <p><?php echo $payment_method['title']; ?></p>
                              </div>
                            </label>

                        </div>
                    <?php } ?>
                <?php } ?>

                <div class="col l12 m12 s12 codes-dropdown" style="display: none;">
                    <select name="paynet_method">
                        <option class="option_payment_disabled" value="option_payment_disabled" disabled selected><?php echo $alege_online; ?></option>
                        <?php foreach ($payment_methods as $payment_method) { ?>
                            <?php if($payment_method['code'] == 'paynet' || $payment_method['code'] == 'paynet_btc' || $payment_method['code'] == 'paynet_qiwi' || $payment_method['code'] == 'paynet_vm' || $payment_method['code'] == 'paynet_vm_eur' || $payment_method['code'] == 'paynet_vm_usd' || $payment_method['code'] == 'paynet_yndx')  { ?>
                                <option title-pay="<?php echo $payment_method['title']; ?>" value="<?php echo $payment_method['code']; ?>"><?php echo $payment_method['title']; ?></option>
                            <?php } ?>
                        <?php } ?>
                    </select>
                </div>
        <div class="col l12 m12 s12 card-logos">
            <div class="cards">
                <img src="/catalog/view/smartv3/img/logo_cart/mastercard.png" alt="mastercard" title="mastercard">
                <img src="/catalog/view/smartv3/img/logo_cart/visa.png" alt="visa" title="visa">
            </div>
        </div>
        <div class="col l12 m12 s12 agree">
            <input id="agree" type="checkbox" name="agree">
            <label for="agree"><?= $agree_text ?></label>
        </div>
        <input type="hidden" name="payment_method_current" value="<?php echo $code ?>" />
                <input type="hidden" name="payment_method_checked" value="<?php echo $checked_code ?>" />
            <?php } ?>

        <script type="text/javascript">
            $(document).ready(function(){

                $('#payment_method_name').val('Numerar');


                $('select[name="paynet_method"]').material_select();
                $(".code.code_first, .code.code_bank_transfer, .code.code_paynet").on("click", function(){
                    if ( ($(".option_payment_disabled").is(":selected")) && ($("#paynet_method_payment").is(":checked")) ) {
                        $(".cumpara_cosh_btn.button-cart").css({
                            "z-index" : "-1"
                        });
                    }
                });
                $(document).on('change', 'select[name="paynet_method"]', function(){
                    $('input[name="payment_method"][value="'+$(this).val()+'"]').prop("checked", true).trigger('paynet_change');
                    $('.code_paynet').addClass("code_paynet_selected");
                    $(".cumpara_cosh_btn.button-cart").css({
                        "z-index" : "1"
                    });
                });

                $(document).on('change', 'input[name="payment_method"]', function(){
                    $('select[name="paynet_method"]').find('option[disabled]').attr("selected",true);
                    changePaymentMethod(this.value);
                    $('.code_paynet').removeClass("code_paynet_selected");
                    $('#payment_method_name').val($(this).attr('title-pay'));
                    $('select[name="paynet_method"]').material_select();
                });

                $(document).on('paynet_change', 'input[name="payment_method"]', function(){
                    $('#payment_method_name').val($(this).attr('title-pay'));
                });

                $(".code_paynet").click(function(){
                    $(".codes-dropdown").fadeIn(500);
                });

                $(".code_bank_transfer, .code_credit, .code_first").click(function(){
                    $(".codes-dropdown").fadeOut(100);
                });

                function changePaymentMethod(code) {
                    if(code == 'maib') {
                        // jQuery('.card-logos').show();
                        jQuery('.agree').show();
                    } else {
                        // jQuery('.card-logos').hide();
                        jQuery('.agree').hide();
                    }
                }
            });
        </script>


        <script type="text/javascript">
            $(document).ready(function(){
                $(".code.code_credit").on("click", function(){
                    $(".cumpara_cosh_btn.button-cart").css({
                        "background" : "#ccc",
                        "color" : "#fff",
                        "z-index" : "-1",
                        "box-shadow" : "none"
                    });
                });
                $(".code.code_first, .code.code_bank_transfer, .code.code_paynet").on("click", function(){
                    $(".cumpara_cosh_btn.button-cart").css({
                        "background" : "#ffcc33",
                        "color" : "#000",
                        "z-index" : "1",
                        "box-shadow" : "0 0 15px 0px #ffcc33"
                    });
                });
            });
        </script>


        <?php if (!empty($value['description'])) { ?>
            <div style="display: none;">
                    <label for="<?php echo $key; ?>"><?php echo $value['description']; ?></label>
            </div>
        <?php } ?>



        <?php if (empty($payment_methods) && $address_empty && $simple_payment_view_address_empty) { ?>
            <div class="simplecheckout-warning-text"><?php echo $text_payment_address; ?></div>
        <?php } ?>
        <?php if (empty($payment_methods) && !$address_empty) { ?>
            <div class="simplecheckout-warning-text"><?php echo $error_no_payment; ?></div>
        <?php } ?>
    </div>
<?php } else { ?>
    <div class="simplecheckout-block-content row mod_plata_row">
        <div class="col l4 m4 s4 code">
            <input type="radio" class="with-gap" title-pay="Numerar" style="display: none;" name="payment_method" value="cod" id="cod" checked="checked">
            <input type="hidden" name="payment_method_current" style="display: none;" value="cod" />
            <input type="hidden" name="payment_method_checked" style="display: none;" value="cod" />
        </div>
        <div class="__new_payment_accept_only_cod">
            <div>Pentru produsele alimentare puteti achita doar cu numerar la livrare.</div>
            <div class="__new_delivery_only">Livrarea se efectueaza pana la scara blocului.</div>
        </div>
    </div>
<?php } ?>
<?php if ($simple_debug) print_r($address); ?>
