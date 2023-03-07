<?php if($total_price >= 1) { ?>
  <link media="none" onload="if(media!='all')media='all'" rel="stylesheet" href="catalog/view/smartv3/css/credit-mod.css?v=0.0.5">
  <script src="catalog/view/smartv3/js/nouislider.js?v=1.0.2"></script>
  <script src="catalog/view/smartv3/js/wNumb.js?v=1.0.2"></script>

  <div class="credit_popup" id="credit_popup" style="display: none;">
    <div class="credit_popup_overlay" onclick="close_credit_module()"></div>
    <div class="credit_popup_container">
      <svg id="close_credit_popup" class="new-svg-icon" onclick="close_credit_module()" width="25" height="25"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-close"></use></svg>
      <div class="col l12 m12 s12 tabs_container">
        <ul id="credit_tabs" class="tabs">
        	<?php 
        		$ty_pe = 0;
        		$slid_avans = 0;
        		$slid_avans_max = 0;
        		$credit_name = '';
        		$perioada = 0;
        	?>
          <?php foreach ($credites as $key => $cred_it) { ?>
            <li class="tab col s15 <?php if($cred_it['slug'] == 'credit0') { ?> credit_tab_active <?php } ?>" credit-denumire="<?php echo $cred_it['name']; ?>">
              <a <?php if($cred_it['slug'] == 'credit0') { ?> class="active" <?php } ?>  href="#credit-<?php echo $cred_it['slug']; ?>"><?php echo $cred_it['name']; ?></a>
            </li>
          <?php } ?>
        </ul>
      </div>
      <?php foreach ($credites as $key => $cred_it) { ?>
        <div class="cred_cont" id="credit-<?php echo $cred_it['slug']; ?>">
          <svg class="new-svg-icon icon-left credit-arrows"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg>
          <div class="row cards_credit_row">

            <?php foreach ($cred_it['tips'] as $key1 => $type_credit) { ?>
            	<?php if($ty_pe == 0) {
            		$slid_avans = $type_credit['avans_value'];
            		$slid_avans_max = $type_credit['avans_max'];
            		$credit_name = $cred_it['name'];
            		$perioada = $type_credit['months'];
            		$ty_pe++;
            	} ?>
              <div class="col s4 grid_cred" type_id="<?php echo $type_credit['type_id']; ?>" perioada="<?php echo $type_credit['months']; ?>" min-avans="<?php echo $type_credit['avans_value']; ?>" max-avans="<?php echo $type_credit['avans_max'] ?>">
                <div class="container_credit_box left_cerd_box  active_credit">
                  <div class="top_part_credit">
                    <div class="block_section_card top_blk_sction">
                      <span class="text_cred"><span class="type_rata-value"><?php echo number_format($type_credit['rata_value'], 0, ",", " "); ?></span><br><span class="small_cred"><?php echo $leiluna; ?></span></span>
                    </div>
                    
                      <div class="block_section_card middle_section" style="display:none;">
                        <span class="text_cred"><span class="type_avans-value"><?php echo number_format($type_credit['avans_value'], 0, ",", " "); ?></span><span class="small_cred"><?php echo $product_currency; ?><br><?php echo $avans; ?></span></span>
                      </div>

                  </div>
                  <div class="bottom_part_credit block_section_card middle_section">
                    <span class="cred_month"><?php echo $type_credit['months']; ?> <small class="months-text"><?php echo $credit8_txt; ?></small></span>
                  </div>
                </div>
              </div>

            <?php } ?>
          </div>
          <svg class="new-svg-icon icon-right credit-arrows"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg>
        </div>
      <?php } ?>

      <div class="cred_cont_slider">
      	<span class="avans_span"><?php echo ucfirst($avans); ?> <span id="avans_for_slider"><?php echo $slid_avans; ?></span><?php echo $product_currency; ?></span>
      	<div id="avans-slider"></div>
      </div>

      <aside class="creditsubmit-form" method="POST" onsubmit="return false;">
        <div class="credit-data_errors">
          <div class="left-box_credit">
            <div class="cr-name_error credit-error">Nume incorect</div>
          </div>
          <div class="right-box_credit">
            <div class="cr-phone_error credit-error">Numar incorect</div>
          </div>
        </div>

        <?php if($checkout_page == true) { ?>
          <input type="hidden" name="products_name" value="<?php echo $products_name; ?>">
          <input type="hidden" name="cart_total" id="credit_cart-total" value="<?php echo $cos_total; ?>">
          <input class="sku_total_credit" type="hidden" id="sku_total_credit" name="sku_total_credit">
          <input type="text" id="credit_checkout_products_data" name="checkout_products_data" style="display: none">
          <input class="comanda_cos_credit" type="hidden" id="comanda_cos_credit" name="comanda_cos_credit" value="Solicitare Credit din Cos">
          <input type="hidden" name="roistat_visit" value="<?php echo $_COOKIE['roistat_visit']; ?>">
          <input type="hidden" name="new_responsible_by_route" value="1">
          <input type="text" name="tip_comanda" style="display: none" value="Credit din coş">
          <input type="hidden" name="payment_method_name" value="Credit din coş">
        <?php } else { ?>
          <input type="hidden" name="cart_total" id="credit_cart-total" value="<?php echo $product_price; ?>">
          <input type="hidden" name="product_name" value="<?php echo $product_name; ?>">
          <input type="hidden" id="credit-product_id" name="product_id" value="<?php echo $product_id; ?>">
          <input type="hidden" id="credit-product_price" name="product_price"  value="<?php echo $product_price; ?>">
          <input type="hidden" name="roistat_visit" value="<?php echo $_COOKIE['roistat_visit']; ?>">
          <input type="hidden" name="new_responsible_by_route" value="1">
          <input type="text" name="sku_produs" style="display: none" value="<?php echo $sku; ?>">
          <input type="text" name="checkout_products_data" style="display: none" value='<?php echo $product_json; ?>'>
          <input type="text" name="tip_comanda" style="display: none" value="Credit din pagina de produs">
          <input type="hidden" name="payment_method_name" value="Credit din pagina de produs">
        <?php } ?>

      	<input type="hidden" id="credit-cayeg_prod" name="categ-produs" value="<?php echo $categ_produs; ?>">
      	<input type="hidden" id="credit-name_prod" name="credit-denumire" value="<?php echo $credit_name; ?>">
      	<input type="hidden" id="credit-type_prod" name="credit-perioada" value="<?php echo $perioada; ?>">
      	<input type="hidden" id="credit-product_avans" name="credit_avans" value="<?php echo $slid_avans; ?>">
      	<input type="text" name="tAP_FirstName" class="credit_nume" placeholder="<?php echo $credit_nume_prenume; ?>">
      	<input type="number" introdu-telefon name="tAP_CA_Mobile" class="credit_tel" placeholder="<?php echo $credit_phone; ?>">
        <div class="nota-informare"><span><?php echo $popup_notaclient; ?></span></div>
      	<button id="submit_credit_button" class="btn submit-credit"><?php echo $credit_aplica; ?></button>
        
      </aside>
    </div>
  </div>


  <div id="mobile-credit">
    <div class="credit_popup_overlay" onclick="close_mobile_credit_module()"></div>
    <div class="mobile-credit-container">
      <div class="arrow__to-close">
        <svg class="new-svg-icon close__down-arrow icon-right" onclick="close_mobile_credit_module()"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg>
      </div>
      <div class="credit-selector-name">
        <div id="credit-selector-name">
          <span id="mobile-credit-rate">0</span><span> <?php echo $leiluna; ?></span>
        </div>
        <div id="period-selector-name"><?php echo $credit8_txt; ?></div>
        <div id="avans-selector-name"><?php echo $avans; ?></div>
      </div>
      <div class="credit-selector">
        <div id="credit-selector"></div>
        <div id="period-selector"></div>
        <div id="avans-selector"></div>
      </div>
      <div class="credit-actions">
        <aside class="creditsubmit-form-mobile" method="POST" onsubmit="return false;">
          <?php if($checkout_page == true) { ?>
            <input type="hidden" name="products_name" value="<?php echo $products_name; ?>">
            <input type="hidden" name="cart_total" id="credit_cart-total-mobile" value="<?php echo $cos_total; ?>">
            <input class="sku_total_credit" type="hidden" id="sku_total_credit-mobile" name="sku_total_credit">
            <input type="text" id="credit_checkout_products_data_mobile" name="checkout_products_data" style="display: none">
            <input class="comanda_cos_credit" type="hidden" id="comanda_cos_credit-mobile" name="comanda_cos_credit" value="Solicitare Credit din Cos">
            <input type="hidden" name="roistat_visit" value="<?php echo $_COOKIE['roistat_visit']; ?>">
            <input type="hidden" name="new_responsible_by_route" value="1">
            <input type="text" name="tip_comanda" style="display: none" value="Credit din coş">
            <input type="hidden" name="payment_method_name" value="Credit din coş">
          <?php } else { ?>
            <input type="hidden" name="product_name" value="<?php echo $product_name; ?>">
            <input type="hidden" id="credit-product_id-mobile" name="product_id" value="<?php echo $product_id; ?>">
            <input type="hidden" id="credit-product_price-mobile" name="product_price"  value="<?php echo $product_price; ?>">
            <input type="hidden" name="roistat_visit" value="<?php echo $_COOKIE['roistat_visit']; ?>">
            <input type="hidden" name="new_responsible_by_route" value="1">
            <input type="text" name="sku_produs" style="display: none" value="<?php echo $sku; ?>">
            <input type="text" name="checkout_products_data" style="display: none" value='<?php echo $product_json; ?>'>
            <input type="text" name="tip_comanda" style="display: none" value="Credit din pagina de produs">
            <input type="hidden" name="payment_method_name" value="Credit din pagina de produs">
          <?php } ?>
          <input type="hidden" id="credit-cayeg_prod-mobile" name="categ-produs" value="<?php echo $categ_produs; ?>">
          <input type="hidden" id="credit-name_prod-mobile" name="credit-denumire" value="<?php echo $credit_name; ?>">
          <input type="hidden" id="credit-type_prod-mobile" name="credit-perioada" value="<?php echo $perioada; ?>">
          <input type="hidden" id="credit-product_avans-mobile" name="credit_avans" value="<?php echo $slid_avans; ?>">
          <input type="hidden" name="tAP_FirstName" class="credit_nume" value="Mobile">
          <input type="number" introdu-telefon name="tAP_CA_Mobile" class="credit_tel" placeholder="<?= $credit_write_phone; ?>">
          <button id="submit__credit-mobile" class="btn submit-credit"><?php echo $credit_aplica; ?></button>
        </aside>
      </div>
    </div>
  </div>


  <script type="text/javascript">
  	$(document).ready(function(){

      $('.creditsubmit-form input').focusin(function(e) {
        var container = $('#credit_popup'),
        scrollTo = $(e.target);

        container.animate({
            scrollTop: scrollTo.offset().top
        }, 300);    
      });

  	  	window.avans_slider = document.getElementById('avans-slider');
  	    noUiSlider.create(window.avans_slider, {
  		    start: <?php echo $slid_avans; ?>,
  		    connect: [true,false],
  		    step: 1,
  		    orientation: 'horizontal',
  		    range: {
  		      'min': parseInt(<?php echo $slid_avans; ?>),
  		      'max': parseInt(<?php echo $slid_avans_max; ?>)
  		    },
  		    format: wNumb({
  		      decimals: 0
  		    })
  	  	});

  	  	window.avans_slider.noUiSlider.on('update', function(values, handle){
          var sliderValue = window.avans_slider.noUiSlider.options;
  	  		var value = values[handle];
          var percent = (value/sliderValue.range.max)*100;

          var slider_width = $('#avans-slider').width()-10;
          var elementwidth = $('span.avans_span').width()+15;
          var jumelem = elementwidth/2;
          var jumpercent = (jumelem/slider_width)*100;
          
          if((percent > jumpercent) && (jumpercent > 0)) {
            if(percent > (100-jumpercent)) {
              var spanpadding = 100-(jumpercent*2);
            } else {
              var spanpadding = percent-jumpercent;
            }

            $('span.avans_span').css("padding-left",spanpadding+"%");

          } else {
            $('span.avans_span').css("padding-left","0");
          }

          var active_type = $('div[type_id="'+$('#credit-type_prod').val()+'"]');
          var active_avans = parseInt(active_type.attr('min-avans'));
          if(active_avans != 0) {
            $('span.avans_span').css("padding-left","0");
          }

  	  		$('#credit-product_avans').val(value);
  	  		$('#avans_for_slider').html(value);
  	  	});

  	  	window.avans_slider.noUiSlider.on('change', function(values, handle){

  	  		var value = values[handle];

          <?php if($checkout_page == true) { ?>

            var price = $('#credit_cart-total').val();

            $.ajax({
              url: 'index.php?route=module/CreditModule/getCosNewRates',
              type: 'POST',
              dataType: 'json',
              data: {
                price: price,
                avans: value
              },
                success: function(jsonData) {
                  var active_type = $('div[perioada="'+$('#credit-type_prod').val()+'"]:visible');
                  var active_avans = parseInt(active_type.attr('min-avans'));
                  if(active_avans == 0) {
                    $.each(jsonData, function(key,val){
                      var elem = $('div[type_id="'+val.type_id+'"]');
                      if(val.avans == 0) {
                        elem.find('.type_rata-value').html(val.new_rata);
                        elem.find('.type_avans-value').html(val.new_avans);
                      }
                    });
                  } else {
                    $('span.avans_span').css("padding-left","0");
                  }
              },
            });

          <?php } else { ?>
    	  		var product_id = $('#credit-product_id').val();
    	  		var product_price = $('#credit-product_price').val();

    	  		$.ajax({
    		    	url: 'index.php?route=module/CreditModule/getNewRates',
    		    	type: 'POST',
    		    	dataType: 'json',
    		    	data: {
    		    		product_id: product_id, 
    		    		price: product_price,
    		    		avans: value
    		    	},
    		      	success: function(jsonData) {
    		        	var active_type = $('div[perioada="'+$('#credit-type_prod').val()+'"]:visible');
                  var active_avans = parseInt(active_type.attr('min-avans'));
                  if(active_avans == 0) {
                    $.each(jsonData, function(key,val){
                      var elem = $('div[type_id="'+val.type_id+'"]');
                      if(val.avans == 0) {
                        elem.find('.type_rata-value').html(val.new_rata);
                        elem.find('.type_avans-value').html(val.new_avans);
                      }
                    });
                  } else {
                    $('span.avans_span').css("padding-left","0");
                  }
    		    	},
    		    });

          <?php } ?>

  	  	});

  	});


    $(document).ready(function(){
      $(".grid_cred:first-of-type").addClass("grid_cred_active");
      $(".cred_cont").each(function(){
        var cred = $(this);
        cred.find(".grid_cred").click(function(){
          cred.find(".grid_cred").removeClass("grid_cred_active");
          $(this).addClass("grid_cred_active");

          var perioada = $(this).attr('perioada');
          $('#credit-type_prod').val(perioada);

          window.avans_slider.noUiSlider.updateOptions({
              range: {
                  'min': parseInt($(this).attr('min-avans')),
                  'max': parseInt($(this).attr('max-avans'))
              }
            });
          var avans_val = $(this).find('.type_avans-value').text().trim();
          window.avans_slider.noUiSlider.set(parseInt(avans_val));

          if(parseInt($(this).attr('min-avans')) == 0) {
            $('#avans-slider').show();
            
          } else {
            $('#avans-slider').hide();
            $('span.avans_span').css("padding-left","0");

          }

        });
      });
      $('#credit_tabs').tabs({ onShow: function(tab) {
        $('.cards_credit_row').slick('setPosition');
        tab.find('.grid_cred_active.slick-active').click();
      } });

      if($('.credit_tab_active').length == 0) {
        $("#credit_tabs .tab:first-of-type").addClass('credit_tab_active');
      }
      $("#credit_tabs .tab").on('click', function(){
      	$('.credit_tab_active').removeClass('credit_tab_active');
      	$(this).addClass('credit_tab_active');

      	var credit_name = $(this).attr('credit-denumire');
      	
      	$('#credit-name_prod').val(credit_name);
        $('.cards_credit_row').slick('setPosition');

      });


      <?php if($checkout_page == true) { ?>

        $(document).on('click', '#submit_credit_button, #submit__credit-mobile', function() {
          var $form = $(this).parents('aside');
          $form.find('.phone_error').hide();
          $form.find('.cr-name_error').hide();

          if (($form.find('input[name="tAP_CA_Mobile"]').val() !== "") && ($form.find('input[name="tAP_FirstName"]').val() !== "")) {
            var proceed = true;
            if ($form.find('input[name="tAP_CA_Mobile"]').val().length < 9 || $form.find('input[name="tAP_CA_Mobile"]').val().length > 9) {
              /*$('.cr-phone_error').html('Numarul de telefon trebuie sa contina minim 6 simboluri')
              $('.cr-phone_error').show();*/
              $form.find('input[name="tAP_CA_Mobile"]').addClass('credit__input-error');
              proceed = false;
            } else if($form.find('input[name="tAP_CA_Mobile"]').val().length == 9 || ($form.find('input[name="tAP_CA_Mobile"]').val().length == 11 && $form.find('input[name="tAP_CA_Mobile"]').val().indexOf('373') == 0)) {
                 $form.find('input[name="tAP_CA_Mobile"]').removeClass('credit__input-error');
                if(proceed) {

                   var cart_products = [];
                    var quantity_product = {};
                    $('input#product_id').each(function(){
                      var thisid = $(this).val();
                      cart_products.push(thisid);
                      quantity_product[thisid] = $('input[name="quantity['+thisid+']"]').val();
                    });
                    cart_products = JSON.stringify(cart_products);
                    quantity_product = JSON.stringify(quantity_product);

                    var methodpay = 'Credit ('+$form.find('input[name="credit-denumire"]').val()+', '+$form.find('input[name="credit-perioada"]').val()+'luni, avans '+$form.find('input[name="credit_avans"]').val()+' lei)';
                    var telval = $form.find('input[name="tAP_CA_Mobile"]').val();
                    var form_data = document.createElement('form');
                    form_data.innerHTML = $form[0].innerHTML; 
                    var m_data = new FormData(form_data);
                    m_data.append( 'tAP_CA_Mobile', telval);
                    m_data.append( 'tAP_FirstName', $form.find('input[name="tAP_FirstName"]').val());
                    m_data.append( 'tAP_CA_cod_user', $("#cod_user_cos").val());
                    m_data.append( 'produs', $("#sku_total_credit").val());
                    m_data.append( 'pret', $('#credit_cart-total').val());
                    m_data.append( 'cart_products', cart_products);
                    m_data.append( 'quantity_product', quantity_product);
                    m_data.append( 'methodpay', methodpay);
                    m_data.append( 'roistat_visit', "<?php echo $_COOKIE['roistat_visit']; ?>");

                    //create order

                    $.ajax({
                      type: 'POST',
                      url: 'index.php?route=module/check_phone/check',
                      data: {
                        phone: telval
                      },
                      dataType: 'JSON',
                      success: function(response){
                        if(response.success && response.sms_form) {
                          var confBox = new ConfirmBox({
                            ok: function() {
                              var code = $('#confirm-sms-phone').val();
                              if(code.length > 0) {
                                $.ajax({
                                  type: 'POST',
                                  url: 'index.php?route=module/check_phone/check/check_code',
                                  data: {
                                      phone: telval,
                                      code: code
                                  },
                                  dataType: 'JSON',
                                  success: function(dataresponse) {
                                    if(dataresponse.success) {
                                      send_credit_order_checkout(m_data);
                                      confBox.hide(confBox.instance);
                                    } else if(dataresponse.sms_form) {
                                      confBox.resetHtml(dataresponse.sms_form);
                                    } else if(dataresponse.error) {
                                      confBox.addError(dataresponse.error);
                                      $('#confirm-sms-phone').val('');
                                    }
                                  }
                                });
                              }
                            },
                            expired: function() {
                              $.ajax({
                                type: 'POST',
                                url: 'index.php?route=module/check_phone/check',
                                data: {
                                  phone: telval
                                },
                                dataType: 'JSON',
                                success: function(new_response){
                                  if(new_response.sms_form) {
                                    confBox.resetHtml(new_response.sms_form);
                                  }
                                }
                              });
                            },
                            html: response.sms_form,
                            date_end: response.end_date,
                            attemps: response.attemps
                          
                          });
                        } else if(response.success) {
                          send_credit_order_checkout(m_data);
                        } else if(response.error) {
                          alert(response.error);
                        }
                      }
                    });

                    //create order

                    function send_credit_order_checkout(m_data) {
                      $.ajax({
                        url: 'index.php?route=module/oneclick/order',
                        data: m_data,
                        processData: false,
                        contentType: false,
                        type: 'POST',
                        dataType:'json',
                        success: function(response){
                           //load json data from server and output message

                          if(response.type == 'error'){ //load json data from server and output message
                              output = '<div class="error">'+response.text+'</div>';
                          }else{
                            setTimeout(function(){
                               window.location.href = "/index.php?route=checkout/successcredit";
                            }, 500);                                                       
                          }

                        }
                      });
                      setTimeout(function(){
                        window.location.href = "/index.php?route=checkout/successcredit";
                      }, 500);
                    }
                }
            }
          } else if(($form.find('input[name="tAP_CA_Mobile"]').val() == "") && ($form.find('input[name="tAP_FirstName"]').val() == "")) {

            $form.find('.cr-phone_error').html('Scrie Numărul Tău')
            $form.find('.cr-phone_error').show();
            $form.find('.cr-name_error').html('Scrie Numele Tău')
            $form.find('.cr-name_error').show();
            $form.find('input[name="tAP_CA_Mobile"]').addClass('credit__input-error');

          } else if($form.find('input[name="tAP_CA_Mobile"]').val() == "") {

            $form.find('.cr-phone_error').html('Scrie Numărul Tău')
            $form.find('.cr-phone_error').show();
            $form.find('input[name="tAP_CA_Mobile"]').addClass('credit__input-error');

          } else if($form.find('input[name="tAP_FirstName"]').val() == "") {

            $form.find('.cr-name_error').html('Scrie Numele Tău')
            $form.find('.cr-name_error').show();
                            
          }
      });

      <?php } else { ?>

        $(document).on('click', '#submit_credit_button, #submit__credit-mobile', function() {
          var $form = $(this).parents('aside');
          $form.find('.phone_error').hide();
          $form.find('.cr-name_error').hide();

          if (($form.find('input[name="tAP_CA_Mobile"]').val() !== "") && ($form.find('input[name="tAP_FirstName"]').val() !== "")) {
            var proceed = true;
            if ($form.find('input[name="tAP_CA_Mobile"]').val().length < 9 || $form.find('input[name="tAP_CA_Mobile"]').val().length > 9) {
              /*$('.cr-phone_error').html('Numarul de telefon trebuie sa contina minim 6 simboluri')
              $('.cr-phone_error').show();*/
              $form.find('input[name="tAP_CA_Mobile"]').addClass('credit__input-error');
              proceed = false; 
            } else if($form.find('input[name="tAP_CA_Mobile"]').val().length == 9 || ($form.find('input[name="tAP_CA_Mobile"]').val().length == 11 && $form.find('input[name="tAP_CA_Mobile"]').val().indexOf('373') == 0)) {
                $form.find('input[name="tAP_CA_Mobile"]').removeClass('credit__input-error');

                if(proceed) {

              	var product_id = $('#credit-product_id').val();
              	var tAP_FirstName = $form.find('input[name="tAP_FirstName"]').val();
                var tAP_CA_Mobile = $form.find('input[name="tAP_CA_Mobile"]').val();
                var methodpay = 'Credit ('+$form.find('input[name="credit-denumire"]').val()+', '+$form.find('input[name="credit-perioada"]').val()+'luni, avans '+$form.find('input[name="credit_avans"]').val()+' lei)';
                var roistat_visit = "<?php echo $_COOKIE['roistat_visit']; ?>";
                var telval = tAP_CA_Mobile;
                
                var form_data = document.createElement('form');
                form_data.innerHTML = $form[0].innerHTML;

                var m_data = new FormData(form_data);
                    m_data.append( 'product_id', product_id);
                    m_data.append( 'tAP_FirstName', tAP_FirstName);
                    m_data.append( 'tAP_CA_Mobile', tAP_CA_Mobile);
                    m_data.append( 'methodpay', methodpay);
                    m_data.append( 'roistat_visit', roistat_visit);

                    //create order

                    $.ajax({
                      type: 'POST',
                      url: 'index.php?route=module/check_phone/check',
                      data: {
                        phone: telval
                      },
                      dataType: 'JSON',
                      success: function(response){
                        if(response.success && response.sms_form) {
                          var confBox = new ConfirmBox({
                            ok: function() {
                              var code = $('#confirm-sms-phone').val();
                              if(code.length > 0) {
                                $.ajax({
                                  type: 'POST',
                                  url: 'index.php?route=module/check_phone/check/check_code',
                                  data: {
                                      phone: telval,
                                      code: code
                                  },
                                  dataType: 'JSON',
                                  success: function(dataresponse) {
                                    if(dataresponse.success) {
                                      send_credit_order_product(m_data);
                                      confBox.hide(confBox.instance);
                                    } else if(dataresponse.sms_form) {
                                      confBox.resetHtml(dataresponse.sms_form);
                                    } else if(dataresponse.error) {
                                      confBox.addError(dataresponse.error);
                                      $('#confirm-sms-phone').val('');
                                    }
                                  }
                                });
                              }
                            },
                            expired: function() {
                              $.ajax({
                                type: 'POST',
                                url: 'index.php?route=module/check_phone/check',
                                data: {
                                  phone: telval
                                },
                                dataType: 'JSON',
                                success: function(new_response){
                                  if(new_response.sms_form) {
                                    confBox.resetHtml(new_response.sms_form);
                                  }
                                }
                              });
                            },
                            html: response.sms_form,
                            date_end: response.end_date,
                            attemps: response.attemps
                          
                          });
                        } else if(response.success) {
                          send_credit_order_product(m_data);
                        } else if(response.error) {
                          alert(response.error);
                        }
                      }
                    });

                    //create order

                    function send_credit_order_product(m_data){
                    	$.ajax({
                		    url: 'index.php?route=module/oneclick/order',
                		   	type: 'POST',
                		   	dataType: 'json',
                		   	data: m_data,
                        processData: false,
                        contentType: false,
                		    success: function(jsonData) {
                		    	setTimeout(function(){
                            window.location.href = "/index.php?route=checkout/successcredit";
                          }, 500); 
                		    },
                		  	error: function(jsonData) {
                		      setTimeout(function(){
                            window.location.href = "/index.php?route=checkout/successcredit";
                          }, 500); 
                		   	},
                		  });
                    }

              }
            }
              } else if(($form.find('input[name="tAP_CA_Mobile"]').val() == "") && ($form.find('input[name="tAP_FirstName"]').val() == "")) {

                $form.find('.phone_error').html('Scrie Numărul Tău')
                $form.find('.phone_error').show();
                $form.find('.cr-name_error').html('Scrie Numele Tău')
                $form.find('.cr-name_error').show();
                $form.find('input[name="tAP_CA_Mobile"]').addClass('credit__input-error');

              } else if($form.find('input[name="tAP_CA_Mobile"]').val() == "") {

                $form.find('.cr-phone_error').html('Scrie Numărul Tău')
                $form.find('.cr-phone_error').show();
                $form.find('input[name="tAP_CA_Mobile"]').addClass('credit__input-error');


              } else if($form.find('input[name="tAP_FirstName"]').val() == "") {

                $form.find('.cr-name_error').html('Scrie Numele Tău')
                $form.find('.cr-name_error').show();
                                
              }
        });

      <?php } ?>

    });

    $(document).ready(function(){
      $('.cards_credit_row').slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        swipeToSlide: true,
        autoplay: false,
        autoplaySpeed: 2000,
        arrows: false,
        respondTo: 'window'
      });

      $('.icon-left').click(function(){
        $('.cards_credit_row').slick('slickPrev');
      })

      $('.icon-right').click(function(){
        $('.cards_credit_row').slick('slickNext');
      })
    });
  </script>

  <script type="text/javascript">
    let CreditSelector;
    let CreditTypeSelector;
    let AvansSelector;
    let updateIsFromPeriod = false;
    function open_credit_module() {
      if($(window).width() > 900) {
        $('.credit_tab_active a').click();
        $('#credit_popup').fadeIn(400);
        $('.cards_credit_row').slick('setPosition');
        $("aside.creditsubmit-form :input").prop("disabled", false);
      } else {
        $('#mobile-credit').fadeIn(300);
        $("#mobile-credit :input").prop("disabled", false);
        if(!CreditSelector || !CreditTypeSelector || !AvansSelector) {
          let credittypes = JSON.parse('<?= json_encode($jsonmobiletypes) ?>');
          CreditSelector = new IosSelector({
            el: '#credit-selector',
            type: 'normal',
            source: credittypes,
            count: 16,
            onChange: (selected) => {
              CreditTypeSelector.updateSource(selected.tips);
              $('#credit-name_prod-mobile').val(selected.text);
            }
          });

          CreditTypeSelector = new IosSelector({
            el: '#period-selector',
            type: 'normal',
            source: [],
            count: 16,
            onChange: (selected) => {
              updateIsFromPeriod = true;
              AvansSelector.updateSource(selected.avansslider);
              if(selected.new_rata) {
                $('#mobile-credit-rate').html(CreditTypeSelector.selected.new_rata);
              } else {
                $('#mobile-credit-rate').html(CreditTypeSelector.selected.rata_value);
              }
              $('#credit-type_prod-mobile').val(selected.text);
            }
          });

          AvansSelector = new IosSelector({
            el: '#avans-selector',
            type: 'normal',
            source: [],
            count: 16,
            onChange: (selected) => {
              var value = selected.value;
                if(updateIsFromPeriod == false) {
                  <?php if($checkout_page == true) { ?>
                    var price = $('#credit_cart-total').val();
                    $.ajax({
                      url: 'index.php?route=module/CreditModule/getCosNewRates',
                      type: 'POST',
                      dataType: 'json',
                      data: {
                        price: price,
                        avans: value
                      },
                      success: function(jsonData) {
                        $.each(credittypes, function(key, val){
                          credittypes[key].tips = [];
                          $.each(jsonData, function(key1, val1){
                            if(val1.credit_id == val.id) {
                              credittypes[key].tips.push(val1);
                            }
                          });
                        })
                        CreditSelector.updateSource(credittypes);
                      },
                    });
                  <?php } else { ?>
                    var product_id = $('#credit-product_id').val();
                    var product_price = $('#credit-product_price').val();
                    $.ajax({
                      url: 'index.php?route=module/CreditModule/getNewRates',
                      type: 'POST',
                      dataType: 'json',
                      data: {
                        product_id: product_id, 
                        price: product_price,
                        avans: value
                      },
                        success: function(jsonData) {
                          $.each(credittypes, function(key, val){
                            credittypes[key].tips = [];
                            $.each(jsonData, function(key1, val1){
                              if(val1.credit_id == val.id) {
                                credittypes[key].tips.push(val1);
                              }
                            });
                          })
                          CreditSelector.updateSource(credittypes);
                          
                      },
                    });
                  <?php } ?>
                } else {
                  updateIsFromPeriod = false;
                }
              $('#credit-product_avans-mobile').val(selected.value);
            }
          });
           setTimeout(function() {
            $.each(CreditTypeSelector.source, function(index, value) {
              if(value.text == '36') {
                CreditTypeSelector.fastSelect(value.value);
              }
            });
            let has_credit_0 = false;
            $.each(CreditSelector.source, function(index, value) {
              if(value.value == 'credit0') {
                CreditSelector.fastSelect(value.value);
                has_credit_0 = true;
              }
            });
            if(has_credit_0 === false) {
              $.each(AvansSelector.source, function(index, value) {
                if(value.text == '1000') {
                  AvansSelector.fastSelect(value.value);
                }
              });
            }
          });
        }
      }
    }

    function close_credit_module() {
      $('#credit_popup').fadeOut(300);
      $("aside.creditsubmit-form :input").prop("disabled", true);
    }
    function close_mobile_credit_module() {
      $('#mobile-credit').fadeOut(300);
      $("#mobile-credit :input").prop("disabled", true);
    }

    $("aside.creditsubmit-form :input, #mobile-credit :input").prop("disabled", true);

  </script>
  <style type="text/css">
    .tabs .indicator {
      display: none;
    }
  </style>
<?php } ?>