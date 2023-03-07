<link rel="stylesheet" href="catalog/view/smartv3/css/credit/credit_widget.css?v=1.0.6771" />
<link rel="stylesheet" href="catalog/view/smartv3/css/credit/credit_loader.css?v=1.0.0" />
<link href="catalog/view/smartv3/css/tooltipster.main.min.css" rel="stylesheet" />

    <style>



    .extra_services .service_header::before {
         content: "<?= $text_servicii_before; ?>";
    }
    .extra_services .service_header::after {
         content: "<?= $text_servicii_after; ?>";
         white-space: nowrap;
    }


    </style>


<?php if($checkout_page != true) { ?>
  <script src="https://www.google.com/recaptcha/api.js?hl=<?= $language_code; ?>" async defer></script>
<?php } ?>

<div class="credit_modal">
  <div class="credit_modal_overlay"></div>
  <div class="credit_modal_content">
    <div class="credit_modal_success">
      <p class="success_heading">Thank you</p>
      <p class="success_paragraph">We will contact you just in time</p>
      <button class="success_button">Continue</button>
    </div>
    <div class="credit_modal_close">&#10005;</div>

    <div class="left">
      <div class="product_card">
        <?php if($product_image && $product_name) { ?>
          
          <img class="product_image" src="<?= $product_image; ?>"/>
          <div class="product_text">
            <?= $product_name; ?>
          </div>
          <div class="product_price">
            <?= number_format($product_price, 0, '.', ' '); ?><span class="currency"><?= $product_currency; ?></span>
          </div>
          
        <?php } else if($credit_products_name) 
         {  ?>
          <div class="product_items">
  
         <?php

          foreach ($row_products as $product) { ?>
            <div class="product_item">
              <div class="product_text">
                <?= $product['product_name']; ?>
              </div>
              <div class="product_price">
                <?= number_format($product['product_price'], 0, '.', ' '); ?>
                <span class="currency"><?= $product_currency; ?></span>
              </div>
            </div>
          <?php } ?>

          </div>
          <?php } ?>
      </div>

      <div class="credit_selector">
        <div class="credit_types">
          <?php foreach ($credites as $key => $cred_it) { ?>
            <button data-id="<?= $cred_it['credit_id']; ?>"
             data-name="<?php echo $cred_it['name']; ?>" data-slug="<?= $cred_it['slug']; ?>" class="credit_type modal_credit_tab_item <?php if(in_array($cred_it['slug'], ['credit0', 'credito'])) { ?> popcreditzero <?php }?>  <?php if($credit_id_min === $cred_it['credit_id']) { ?> active_selected_credit popmin<?php } ?>">
              <?php echo $cred_it['name']; ?>
            </button>
          <?php } ?>
        </div>
      </div>

      <div class="credit_section">
        <div class="credit_offers">
          <div class="scroll_section">
          </div>
        </div>

        <div class="credit_avans">
          <div class="pill avans_label"><?= $avans; ?></div>
          <div class="pill avans_setter">
            <div class="minus">−</div>
            <div class="avans_input_group">
              <input type="text" id="quantity" value="0" />
              <div class="currency"><?= $product_currency; ?></div>
            </div>
            <div class="plus">+</div>
          </div>
        </div>
      </div>

      <div class="extra_services empty_service_block">
      </div>
    </div>
    <style></style>
    <div class="right position-relative">
      
      <div class="loading-credit-data" style="display: none;">
        <div class="loader-credit-text">
          <div class="loader"></div>
          <div class="express_request_title"><?= $depunere_express; ?></div>
          <div class="express_request_description"><?= $depunere_express_text; ?></div>
        </div>
      </div>

      <form id="credit_client_data" method="POST" onsubmit="return false;">

        <!-- //------ -->
        <?php if($checkout_page == true) { ?>
          <input disabled type="hidden" name="cart_total" id="credit_cart-total" value="<?php echo $cos_total; ?>">
          <input disabled type="hidden" name="products_name" value="<?php echo $products_name; ?>">
          <input disabled class="sku_total_credit" type="hidden" id="sku_total_credit" name="sku_total_credit">
          <input disabled type="text" id="credit_checkout_products_data" name="checkout_products_data" style="display: none">
          <input disabled class="comanda_cos_credit" type="hidden" id="comanda_cos_credit" name="comanda_cos_credit" value="Solicitare Credit din Cos">
          <input disabled type="hidden" name="new_responsible_by_route" value="1">
          <input disabled type="text" name="tip_comanda" style="display: none" value="Credit din coş">
          <input disabled type="hidden" name="payment_method_name" value="Credit din coş">
        <?php } else { ?>
          <input disabled type="hidden" name="cart_total" id="credit_cart-total" value="<?php echo $product_price; ?>">
          <input disabled type="hidden" name="product_name" value="<?php echo $product_name; ?>">
          <input disabled type="hidden" id="credit-product_id" name="product_id" value="<?php echo $product_id; ?>">
          <input disabled type="hidden" id="credit-product_price" name="product_price"  value="<?php echo $product_price; ?>">
          <input disabled type="hidden" name="new_responsible_by_route" value="1">
          <input disabled type="text" name="sku_produs" style="display: none" value="<?php echo $sku; ?>">
          <input disabled type="text" name="checkout_products_data" style="display: none" value='<?php echo $product_json; ?>'>
          <input disabled type="text" name="tip_comanda" style="display: none" value="Credit din pagina de produs">
          <input disabled type="hidden" name="payment_method_name" value="Credit din pagina de produs">
          <input disabled type="hidden" id="credit_product_id" value="<?= $product_id; ?>">
        <?php } ?>

        <input disabled type="hidden" id="rata_value" name="rata_value"  value="">
        <input disabled type="hidden" id="credit_rata_value" value="<?= $credit_rata_value; ?>">
        <input disabled type="hidden" name="roistat_visit" id="credit_roistat_visit" value="<?php echo $_COOKIE['roistat_visit']; ?>">
        <input disabled type="hidden" id="credit-cayeg_prod" name="categ-produs" value="<?php echo $categ_produs; ?>">
        <input disabled type="hidden" id="credit-name_prod" name="credit-denumire" value="<?php echo $credit_name; ?>">
        <input disabled type="hidden" id="credit-type_prod" name="credit-perioada" value="<?php echo $perioada; ?>">
        <input disabled type="hidden" id="credit-product_avans" name="credit_avans" value="<?php echo $slid_avans; ?>">
        <!-- //------ -->


        <div class="credit_input_group">
          <input name="tAP_FirstName" id="credit_tAP_FirstName" data-field="name" type="text" autocomplete="off" placeholder="<?= $credit_nume_prenume; ?>" />
          <small class="error_credit_form" data-input="name"></small>
        </div>
        <div class="credit_input_group">
          <input name="tAP_LastName" id="credit_tAP_LastName" data-field="lastname" type="text" autocomplete="off" placeholder="<?= $credit_last_name; ?>" />
          <small class="error_credit_form" data-input="lastname"></small>
        </div>
        <div class="credit_input_group">
          <input name="tAP_CA_Mobile" id="credit_tAP_CA_Mobile" introdu-telefon data-field="phone" type="text" autocomplete="off" placeholder="<?= $credit_phone; ?>" />
          <small class="error_credit_form" data-input="phone"></small>
        </div>
        <div class="credit_input_group">
          <input name="tAP_IDNO" id="credit_tAP_IDNO" class="credit_required_fields" data-field="idno" type="number" autocomplete="off" placeholder="<?= $credit_idno; ?>" />
          <small class="error_credit_form" data-input="idno"></small>
        </div>
        <div class="credit_input_group">
          <input name="tAP_BirthDay" id="credit_tAP_Birthday" class="credit_required_fields" data-field="birthday" onfocus="(this.type='date')" type="text" autocomplete="off" placeholder="<?= $credit_dob; ?>" />
          <small class="error_credit_form" data-input="birthday"></small>
        </div>
        <div class="credit_input_group">
          <input name="tAP_CA_Email" id="credit_tAP_CA_Email" data-field="email" type="text" autocomplete="off" placeholder="<?= $credit_email; ?>" />
          <small class="error_credit_form" data-input="email"></small>
        </div>

        <div class="credit_input_group accept_tc_block credit_api hidden_credit_block">
          <label for="accept_tc" class="accept_tc">
            <input data-field="terms" type="checkbox" class="dummy_switcher_checkbox" id="accept_tc" name="conditions" />
            <div class="dummy_switcher"></div>
            <small style="display: none;" class="error_credit_form" data-input="terms"></small>
          </label>
          <div class="accept_text"></div>
        </div>

        <button type="submit" id="ask_credit"><?= $credit_aplica; ?></button>
      </form>

      <div>
        <p class="terms light"><?= $credit_oferta_text; ?></p>
        <p class="terms semibold"><?= $credit_oferta_bold; ?></p>
      </div>
    </div>
  </div>
</div>


<script src="catalog/view/smartv3/js/credit/credit_modal.min.js?v=1.0.1"></script>
<script src="catalog/view/smartv3/js/credit/credit_drag.min.js?v=1.0.4"></script>
<script src="catalog/view/smartv3/js/credit/credit_widget.min.js?v=1.0.3592"></script>
<script src="catalog/view/smartv3/js/tooltipster.bundle.min.js"></script>

<script>
  $(document).ready(function() {
     $(document).on('click', '.modal_credit_tab_item, .credit_offer', function(){

      if ($(window).width() > 960) {
          $('.tool-button').tooltipster({
            trigger: 'hover',
            position: 'bottom'
          });
      } else {
          $('.tool-button').tooltipster({
            trigger: 'click',
            position: 'bottom'
          });
      }
     })
  });
</script>