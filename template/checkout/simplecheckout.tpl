
<?php if (!$ajax) { ?>
<?php
$simple_page = 'simplecheckout';
$heading_title .= $simple_show_weight ? '&nbsp;(<span id="weight">'. $weight . '</span>)' : '';
include $simple->tpl_header();
include $simple->tpl_static();
?>
<div style="display: none;"><?php print_r($this->session->data); ?><?php print_r($order_info); ?></div>

<script src="https://www.google.com/recaptcha/api.js?onload=onloadCallbackCheckout&render=explicit&hl=<?= $language_code; ?>" async defer></script>
<div id="g-recaptcha-checkout" class="g-recaptcha" style="display: none;" data-badge="inline" data-size="invisible"></div>
<script type="text/javascript">
  let checkout_elem_id;
  var onloadCallbackCheckout = function() {
    checkout_elem_id = grecaptcha.render('g-recaptcha-checkout', {
      'sitekey' : '<?= RECAPTCHA_PUBLIC; ?>',
      'callback' : gRecaptchaSubmit
    });
  };
</script>
<div id="ccx_tr_c3a0bfaec79eab8d6104287e7cc750ee"></div>
<script type="text/javascript">
  /* PUT YOUR VARIABLES HERE */
  var W2T_vars = ''
  + '/' + 'cart'
  + '/' + '<?= $omnifeed; ?>'
  ;
  /* END OF VARIABLES STRING */
  var tr_scr = document.createElement("script");
  tr_scr.type = "text/javascript";
  tr_scr.src = "//delivery.clickonometrics.pl/tracker=5866/track/shoppers"+W2T_vars+"/track.js";
  document.getElementById("ccx_tr_c3a0bfaec79eab8d6104287e7cc750ee").appendChild(tr_scr);
</script>

<div class="modals modals_cos"></div>
<div class="modal_cos" id="modal_cos">
  <div class="modals_form modals_form_cos">
    <?php if(in_array(749, $categories)) { ?>
        <span class="cos_suna"><?php echo $suna_acum; ?><span class="roistat-phone068693820-number roistatphone-electrocasnice"> +37376011978</span></span>
    <?php } else if(in_array(1054, $categories)) { ?>
        <span class="cos_suna"><?php echo $suna_acum; ?><span class="roistat-phone068693820-number roistatphone-mobila"> +37376011929</span></span>
    <?php } else if(in_array(7025, $categories)) { ?>
        <span class="cos_suna"><?php echo $suna_acum; ?><span class="rstatic-phone-alimentare"> 076011914</span></span>
    <?php } else { ?>
        <span class="cos_suna"><?php echo $suna_acum; ?><span class="roistat-phone068693820-number roistatphone-electronice"> +37376011985</span></span>
    <?php } ?>
    <span class="cos_lasa_contact"><?php echo $lasa_datele; ?></span>
    <span style="display: none; color: green; padding-left: 20px; padding-right: 20px; margin-bottom: 35px; margin-top: 35px;" class="cos_lasa_contact cos_lasa_contact_rs"><?php echo $solicitare_receptionata; ?></span>
    <form method="POST" onsubmit="return false;">
      <input type="text" name="Name" id="cos_nume_utilizator" placeholder="<?php echo $nume_call_form; ?>*">
      <input type="number" name="Telefon" introdu-telefon id="cos_telefon_utilizator" placeholder="+373 XX XXX XXX*">
      <input type="text" name="cerere_apel_pagina_cos" style="display: none" value="Cerere apel din pagina Cos">
      <input type="text" name="roistat_visit" value="<?php echo $_COOKIE['roistat_visit']; ?>" style="display: none;">
      <input type="text" name="new_responsible_by_route" value="1" style="display: none;">
      <input type="text" name="modal_checkout_products" style="display: none" value="<?php echo $products_name; ?>">
      <input type="hidden" name="categ-produs" value="<?php echo $categ_produs; ?>">
      <div class="nota-informare"><span><?php echo $popup_notaclient; ?></span></div>
      <button class="cos_submit_form btn btn-small"><?php echo $trimite_call_form; ?></button>
    </form>
    <svg class="new-svg-icon close_modal close_modal_cos" width="28" height="28"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-close"></use></svg>
  </div>
</div>

<script type="text/javascript">
$(document).ready(function () {

    $("#checkout_customer_main_lastname").on('input', function e() {
        var nume = $("#checkout_customer_main_lastname").val();
        $(".credit_nume").attr("value",nume);

    });
    $("#checkout_customer_main_telephone").on('input', function e() {
        var numar = $("#checkout_customer_main_telephone").val();
        $(".credit_tel").attr("value",numar);
    });
    $(".credit_nume").on('input',function () {
        var nume = $(".credit_nume").val();
        $("#checkout_customer_main_lastname").attr("value",nume);
    });
    $(".credit_tel").on('input',function () {
        var numar = $(".credit_tel").val();
        $("#checkout_customer_main_telephone").attr("value",numar);
    });
});
  function open_nr_cos() {
    $("#modal_cos, .modals_cos").slideDown(400);
    $(".modals_form_cos").fadeIn(800);
  }
  $(".modals_cos, .close_modal_cos").click(function(){
    $(".modals_cos").slideUp(400);
    $("#modal_cos").slideUp(400);
    $(".modals_form_cos").fadeOut(200);
    $("#cos_nume_utilizator").val('');
    $("#cos_telefon_utilizator").val('')
  });

  $(".cos_submit_form").click(function(){
    
    $('label.cta-error_field').remove();

    var num = $("#cos_nume_utilizator").val();
    var tel = $("#cos_telefon_utilizator").val();
    if(tel.indexOf('0') == 0) {
      tel = tel.substring(1);
    }
    var numLen = num.length;
    var telLen = tel.length;
    var telfvalue = $("#cos_telefon_utilizator").val();

    if (num != '' && telfvalue != '' && telLen > 6 && (telfvalue.indexOf('6') == 0 || telfvalue.indexOf('7') == 0 || telfvalue.indexOf('0') == 0 || (telfvalue.indexOf('373') == 0 ))) {

      $(".modals_form_cos *:not(br)").css("display", "none");
      $(".cos_lasa_contact_rs, .close_modal_cos").fadeIn(200);
      $(".modals_form_cos").css("height", "auto");

    } else {
      if ((numLen == 0)) {
            $("#cos_nume_utilizator").css("border-bottom", "2px solid #e82b2b");
            $("#cos_nume_utilizator").before('<label for="cos_nume_utilizator" class="cta-error_field">Scrie Numele Tau</label>');
      } else {
        $("#cos_nume_utilizator").css("border-bottom", "2px solid mediumseagreen");
      }

      if ((telLen <= 6)) {
        if(telLen > 0) {
          $("#cos_telefon_utilizator").css("border-bottom", "2px solid #e82b2b");
        } else {
          $("#cos_telefon_utilizator").css("border-bottom", "2px solid #e82b2b");
          $("#cos_telefon_utilizator").before('<label for="cos_telefon_utilizator" class="cta-error_field">Scrie Numarul Tau</label>');
        }

      } else {
                                
        if(telfvalue.indexOf('6') !== 0 && telfvalue.indexOf('7') !== 0 && telfvalue.indexOf('0') !== 0) {
          $("#cos_telefon_utilizator").css("border-bottom", "2px solid #e82b2b");
          $("#cos_telefon_utilizator").before('<label for="cos_telefon_utilizator" class="cta-error_field">Format de numar invalid</label>');
        } else {
          $("#cos_telefon_utilizator").css("border-bottom", "2px solid mediumseagreen");
        }
      }
    }
  });
</script>

<style>.content-top .page_title{display: none;}@media screen and (max-width: 425px){#top_bar{height: 58px !important;}.content_cosh{padding-top:0px !important;}.delete_prod{display: none;}.delete_prod_mob{display: block !important;}.info_prod_cell_cosh{padding:0!important;}.list_elem_btt_cosh{margin:0px !important;}.bottom_prod_block{padding:5px 20px !important;}.form_heading{padding-top:10px !important;}.custom_cosh_hr{padding-bottom:5px !important;}.list_elem_btt_cosh li{padding-top:0 !important;}}.delete_prod_mob{display: none !important;}.codes-dropdown .select-wrapper.initialized{display:none;}</style>
<section id="cosh_section">
    <div class="container content_in_main">
    <style type="text/css">.nr_contact{font-size: 1.3rem; font-family: SMARTfont;}@media screen and (max-width: 900px){.nr_contact{font-size: 14px;text-align: center;}}</style>
    <?php echo $column_left; ?>
    <?php echo $column_right; ?>
    <!-- START COLUMN CENTER -->
    <?php echo $content_top; ?>

        <!-- Apare doar atunci cand coshul este gol -->

        <div class="cosh_golit" style="display:none; margin-bottom: 100px;" >
            <p>Coșul dumneavoastră este gol. Mergeti înapoi pentru a face cumpărături deștepte.</p>
            <a class="waves-effect waves-light btn go_back_btn">Înapoi</a>
        </div>
                <!-- Terminare Block cosh gol -->
<div class="simple-content">
<?php } ?>
    <div class="simplecheckout row content_cosh" id="simplecheckout_form">
    <!-- simplecheckout form -->
        <?php
            $replace = array(
                '{three_column}'  => '<div class="simplecheckout-three-column">',
                '{/three_column}' => '</div>',
                '{left_column}'   => '<div class="col l7 m6 row_width" id="cosh_block">',
                '{/left_column}'  => '</div>',
                '{right_column}'  => '<div class="col l5 m6 row_width" id="form_block">',
                '{/right_column}' => '',
                '{customer}'      => '<div class="simplecheckout-block'.($simple_customer_hide_if_logged ? ' simplecheckout-skip' : '').'" id="simplecheckout_customer"'.($simple_customer_hide_if_logged ? ' style="display:none;"' : '').'>'. $simplecheckout_customer .'</div>',
                '{cart}'          => '<div class="simplecheckout-block" id="simplecheckout_cart">' . $simplecheckout_cart . '</div>',
                '{shipping}'      => $has_shipping ? '<div class="simplecheckout-block'.($simple_shipping_methods_hide ? ' simplecheckout-skip' : '').'" id="simplecheckout_shipping"'.($simple_shipping_methods_hide ? ' style="display:none;"' : '').'>' . $simplecheckout_shipping . '</div>' : '',
                '{payment}'       => '<div class="simplecheckout-block'.($simple_payment_methods_hide ? ' simplecheckout-skip' : '').'" id="simplecheckout_payment"'.($simple_payment_methods_hide ? ' style="display:none;"' : '').'>' . $simplecheckout_payment . '</div>',
                '{agreement}'     => $simple_common_view_agreement_text ? '<div class="simplecheckout-block" id="simplecheckout_agreement"></div>' : '',
                '{help}'          => $simple_common_view_help_text ? '<div class="simplecheckout-block" id="simplecheckout_help"></div>' : '',
                '{payment_form}'  => '',
			);

            if ($simple_common_view_agreement_text && isset($information_title) && isset($information_text)) {
                $replace['{agreement}'] = '<div class="simplecheckout-block" id="simplecheckout_agreement">';
                $replace['{agreement}'] .= '<div class="simplecheckout-block-heading">' . $information_title . '</div>';
                $replace['{agreement}'] .= '<div class="simplecheckout-block-content simplecheckout-scroll">' . $information_text . '</div>';
                $replace['{agreement}'] .= '</div>';
            }

            if ($simple_common_view_help_text && isset($help_title) && isset($help_text)) {
                $replace['{help}'] = '<div class="simplecheckout-block" id="simplecheckout_help">';
                $replace['{help}'] .= '<div class="simplecheckout-block-heading">' . $help_title . '</div>';
                $replace['{help}'] .= '<div class="simplecheckout-block-content simplecheckout-scroll">' . $help_text . '</div>';
                $replace['{help}'] .= '</div>';
            }

            if ($payment_form) {
                $replace['{payment_form}'] = '<div class="simplecheckout-block" id="simplecheckout_payment_form">';
                $replace['{payment_form}'] .= '<div class="simplecheckout-block-content">' . $payment_form . '</div>';
                $replace['{payment_form}'] .= '</div>';
            }

            $find = array(
	  			'{three_column}',
	  			'{/three_column}',
	  			'{left_column}',
	  			'{/left_column}',
	  			'{right_column}',
      			'{/right_column}',
      			'{customer}',
     			'{cart}',
      			'{shipping}',
      			'{payment}',
                '{agreement}',
                '{help}',
                '{payment_form}'
			);

            if (!empty($modules)) {
                foreach ($modules as $key => $value) {
                    $find[] = $key;
                    $replace[$key] = $value;
                }
            }

            echo trim(str_replace($find, $replace, $simple_common_template));
        ?>
    <input type="hidden" name="simple_create_order" id="simple_create_order" value="" />
    <input type="hidden" name="simple_step" id="simple_step" value="<?php echo $simple_step ?>" />
    <input type="hidden" name="simple_step_next" id="simple_step_next" value="" />
    <input type="hidden" name="simple_errors" id="simple_errors" value="<?php echo $simple_errors ?>" />

    <style type="text/css">#buttons {display: block !important;}</style>


    <!-- order button block -->



            <div id="buttons" class="col s6 m6">
                <input type="text" style="display: none" name="checkout_customer_main_form_lastname" id="checkout_customer_main_form_lastname">
                <input type="text" style="display: none" introdu-telefon name="checkout_customer_main_form_telephone" id="checkout_customer_main_form_telephone">
                <input type="text" style="display: none" name="checkout_customer_main_form_email" id="checkout_customer_main_form_email">
                <input type="text" style="display: none" name="comanda_cos" id="com_cos" value="Comanda Cos">
                <input type="text" name="new_responsible_by_route" value="1" style="display: none;">
                <?php if ($simple_common_view_agreement_checkbox) { ?><label><input type="checkbox" id="agree" name="agree" value="1" <?php if ($agree == 1) { ?>checked="checked"<?php } ?> /><?php echo $text_agree; ?></label>&nbsp;<?php } ?>
                <button class="waves-effect waves-light btn cumpara_cosh_btn button-cart"><?php echo $button_order; ?></button>
                <div class="progress checkout-progress-bar">
      <div class="indeterminate"></div>
  </div>
            </div>

            <div id="buttons_credit" class="col s6 m6" style="display: none; float: left;">
                <a class="waves-effect waves-light btn credit_popup" id="credit_popup_button" style="padding-top: 25px; padding-bottom: 25px; line-height: 0; color: #000; width: 135px;"><?php echo $credit; ?></a>
            </div>
            
            <?php if(in_array(749, $categories)) { ?>
              <span class="nr_contact_cos moveOnMobile MobileVersion"><?php echo sprintf($nr_contact,'roistatphone-electrocasnice','+37376011978','37376011978','roistatphone-electrocasnice','+37376011978'); ?></span>
            <?php } else if(in_array(1054, $categories)) { ?>
              <span class="nr_contact_cos moveOnMobile MobileVersion"><?php echo sprintf($nr_contact,'roistatphone-mobila','+37376011929','37376011929','roistatphone-mobila','+37376011929'); ?></span>
            <?php } else if(in_array(7025, $categories)) { ?>
              <span class="nr_contact_cos moveOnMobile MobileVersion"><?php echo sprintf($nr_contact,'static-phone-alimentare','076011914','076011914','static-phone-alimentare','076011914'); ?></span>
            <?php } else { ?>
              <span class="nr_contact_cos moveOnMobile MobileVersion"><?php echo sprintf($nr_contact,'roistatphone-electronice','+37376011985','37376011985','roistatphone-electronice','+37376011985'); ?></span>
            <?php } ?>

            <!-- Comanda simplecheckout -->
            <script type="text/javascript">
                function gRecaptchaSubmit(token) {
                  if(window.issuccescheckoutform) {
                    window.issuccescheckoutform = false;
                    $.ajax({
                      type: "POST",
                      url: 'index.php?route=module/captcha/g-captcha',
                      data: {
                        token: token
                      },
                      dataType: 'JSON',
                      success: (data) => {
                        if(2>1) {
                          $("#checkout_customer_main_form_lastname").val($("#checkout_customer_main_lastname").val());
                          $("#checkout_customer_main_form_telephone").val($("#checkout_customer_main_telephone").val());
                          $("#checkout_customer_main_form_email").val($("#checkout_customer_main_email").val());
                          var telval = $('#checkout_customer_main_telephone').val();
                          var telinput = $('#checkout_customer_main_telephone');
                          var phoneYadro = $("#checkout_customer_main_form_telephone");
                          if(telinput.length > 0) {
                            if(telinput.val().indexOf('373') != 0) {
                              telval = '373'+parseInt(telinput.val(),10);
                            } else {
                              telval = telinput.val();
                            }        
                            telinput.val(telval);                                
                          }
                          if(phoneYadro.length > 0) {
                            if(phoneYadro.val().indexOf('373') != 0) {
                              telval = '373'+parseInt(phoneYadro.val(),10);
                            } else {
                              telval = phoneYadro.val();
                            }              
                            phoneYadro.val(telval);                                
                          }
                          $(this).parents('.simplecheckout-customer-block').find('.nota-informare span').hide();
                          $.ajax({
                          	type: 'POST',
                          	url: 'index.php?route=module/check_phone/check',
                          	data: {
                          		phone: telval
                          	},
                          	dataType: 'JSON',
                          	success: function(response) {
                              $(".cumpara_cosh_btn.button-cart").prop('disabled', false)
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
                									     			simplecheckout_submit();
                									  				confBox.hide(confBox.instance);
                									      	} else if(dataresponse.sms_form) {
                									      		confBox.resetHtml(dataresponse.sms_form);
                									      	} else if(dataresponse.error) {
                									      		confBox.addError(dataresponse.error);
                									      		$('#confirm-sms-phone').val('');
                									   			}
                									      },
                                        error: function() {
                                          $(".cumpara_cosh_btn.button-cart").prop('disabled', false)
                                        }
                									    });
                										}
            								      },
            								     /* resend: function() {
            								      	confBox.makeDisabledResend();
            								      	$.ajax({
            								      		type: 'POST',
            								    		url: 'index.php?route=module/check_phone/check/resend',
            								    		data: {
            								      			phone: telval
            								     		},
            								      		dataType: 'JSON',
            								      		success: function(dataresponse) {
            								      			if(response.end_date) {
            								      				confBox.reinitTimer(end_date);
            								      			}
            								      		}
            								      	});
            								      },*/
            								      expired: function() {
            								      	$.ajax({
            				                  type: 'POST',
            				                	url: 'index.php?route=module/check_phone/check',
            				                  data: {
            				                    phone: telval
            				                	},
            				                  dataType: 'JSON',
            				                	success: function(new_response) {
            				                    if(new_response.sms_form) {
            				                			confBox.resetHtml(new_response.sms_form);
            				                    }
            				                	},
                                      error: function() {
                                        $(".cumpara_cosh_btn.button-cart").prop('disabled', false)
                                      }
            				                });
            								      },
                                  reCaptchaSuccess: function() {
                                    simplecheckout_submit();
                                    confBox.hide(confBox.instance);
                                  },
                                  reCaptchaError: function() {
                                     simplecheckout_submit();
                                    confBox.hide(confBox.instance);
                                    // confBox.addError("You did not pass the captcha check. Please try again.");
                                  },
            								      html: response.sms_form,
            								      date_end: response.end_date,
            								      attemps: response.attemps
  								              });
                          		} else if(response.success) {
                          			simplecheckout_submit();
                          		} else if(response.error) {

                          			alert(response.error);
                          		}
                          	},
                            error: function() {
                              $(".cumpara_cosh_btn.button-cart").prop('disabled', false)
                            }
                          });
                        } else {
                          location.reload();
                        }
                      },
                      error: (data) => {
                        $(".cumpara_cosh_btn.button-cart").prop('disabled', false)
                      }
                    });
                  }
                }
                $(document).ready(function(){
                    $('#simplecheckout_customer .simplecheckout-customer-block').append('<div class="nota-informare"><span><?php echo $popup_notaclient; ?></span></div>');
                    $("#checkout_customer_main_lastname").before('<label style="color:#e82b2b;" style="display:none;" for="checkout_customer_main_lastname">Scrie Numele Tau</label>');
                    $("#checkout_customer_main_telephone").before('<label style="color:#e82b2b;" style="display:none;" for="checkout_customer_main_telephone">Scrie Numarul Tau</label>');
                    $('.simplecheckout-customer-one-column').find('label').hide();
                    // if ($(window).width() < 769) {
                    //     $(".moveOnMobile").insertAfter("#cosh_block");
                    // }
                    $("#checkout_customer_main_lastname").keyup(function(){
                       $("#checkout_customer_main_lastname").attr('value',$(this).val());
                    });
                    $("#checkout_customer_main_telephone").keyup(function(){
                       $("#checkout_customer_main_telephone").attr('value',$(this).val());
                    });
                    $("#checkout_customer_main_email").keyup(function(){
                       $("#checkout_customer_main_email").attr('value',$(this).val());
                    });

                    $(".cumpara_cosh_btn.button-cart").click(function() {
                        window.issuccescheckoutform = false;
                        $('.simplecheckout-customer-one-column').find('label').hide();
                        var num = $("#checkout_customer_main_lastname").val();
                        var tel = $("#checkout_customer_main_telephone").val();
                        if(tel.indexOf('0') == 0) {
                          tel = tel.substring(1);
                        }
                        var numLen = num.length;
                        var telLen = tel.length;
                        var telfvalue = $('#checkout_customer_main_telephone').val();

                        const payment_code = jQuery('input[name="payment_method"]:checked').val();
                        const agree = jQuery('input[name="agree"]').attr('checked') === 'checked';
                        if(payment_code === 'maib' && !agree) {
                            return jQuery('.agree').css('border-bottom', '1px solid #e82b2b');
                        }
                        if ((numLen > 2) && (telLen > 7) && (telfvalue.indexOf('6') == 0 || telfvalue.indexOf('7') == 0 || telfvalue.indexOf('0') == 0 || telfvalue.indexOf('373') == 0)) {
                          window.issuccescheckoutform = true;
                          grecaptcha.reset();
                          grecaptcha.execute(checkout_elem_id);
                          $(".cumpara_cosh_btn.button-cart").prop('disabled', true);
                        } else {
                            if ((numLen <= 2)) {
                                $("#checkout_customer_main_lastname").css("border-bottom", "1px solid #e82b2b");
                                $("label[for=checkout_customer_main_lastname]").show();
                            } else {
                                $("#checkout_customer_main_lastname").css("border-bottom", "1px solid green");
                            }

                            if ((telLen <= 7)) {
                             	if(telLen > 0) {
                                $("#checkout_customer_main_telephone").css("border-bottom", "1px solid #e82b2b");
                            	} else {
                            		$("#checkout_customer_main_telephone").css("border-bottom", "1px solid #e82b2b");
                            		$("label[for=checkout_customer_main_telephone]").show();
                            	}
                              $(this).parents('.simplecheckout-customer-block').find('.nota-informare span').show();
                            } else {
                                if(telfvalue.indexOf('6') !== 0 && telfvalue.indexOf('7') !== 0 && telfvalue.indexOf('0') !== 0) {
                                  $("#checkout_customer_main_telephone").css("border-bottom", "1px solid #e82b2b");
                                  $("label[for=checkout_customer_main_telephone]").show();
                                } else {
                                  $("#checkout_customer_main_telephone").css("border-bottom", "1px solid green");
                                }
                            }
                        }
                    });

                });
            </script>
            <!-- Comanda simplecheckout -->

            <style type="text/css">
              @media screen and (max-width: 900px) {
                    div.simplecheckout-customer-block > div.nota-informare {
                      width: 45%;
                      font-size: 10px;
                      float: right;
                    }
                }
            	 .credit_ph-error {
        					float: left;
        				    margin-left: 70px;
        					margin-top: 15px;
        				    color: #e82b2b;
        					width: 40%;
        				}
                @media screen and (max-width: 361px) {
                    .br_h4 {
                        display: block !important;
                    }
                }
            </style>
            <script type="text/javascript">
                $(document).ready(function () {
                    $("#credite").css("height",$(document).height());
                });
            </script>
            <script type="text/javascript">
                $(document).ready(function(){

                    var sku_total = $("#sku_total").val();
                    var basedata  = $('#checkout_products_data').val();
                    $("#sku_total_credit").attr("value", sku_total);
                    $("#sku_total_credit-mobile").attr("value", sku_total);
                    $('#credit_checkout_products_data').attr("value", basedata);
                    $('#credit_checkout_products_data_mobile').attr("value", basedata);
                });

            </script>

            <style type="text/css">

            	.pre_input {
    				    width: 100%;
    				    float: left;
                border: 6px solid #ffcc33;
            	}
            	.input-field {
            		width: 47%;
            		margin-left: 1.5%;
            		margin-right: 1.5%;
            	}
            	.active_credit {
            		box-shadow: 0px 8px 15px 0px rgba(0, 0, 0, 0.14);
            	}
              div.block_section_card h3 {
                font-size: 24px;
              }
              @media screen and (min-width:901px) {
                  #buttons {
                    padding-left: 15px;
                  }
              }
              @media screen and (max-width:901px) {
                div.block_section_card h3 {
                  font-size: 18px;
                }
                .buy_one_click_cos {
                  margin-bottom: 15px !important;
                }
              }
              @media screen and (max-width: 1500px) {
              	.buy_one_click_cos {
              		margin-left: 4% !important;
              	}
              }
              @media screen and (max-width: 768px) {
                  .pre_input {
                      display: block !important;
                      border:6px solid #ffcc33;
                      box-shadow: none;
                  }
                  .input-field {
                      width: 90% !important;
                      margin: 0 auto;
                  }
              }
              @media screen and (max-width: 500px) {
                  div.block_section_card h3 {
                      font-size: 16px;
                  }
                  .cerc_social.call.waves-effect.waves-light.mobileVersion,
                  #compare {
                    display: none;
                  }
              }
            </style>


<!-- <?php
  if ($send_order) {
    require_once('/home/smart/web/smart.md/public_html/introvert_save.php');
  }
?> -->


    </div>
    <!-- CREDIT MODULE -->
<?php echo $CreditModule; ?>
<!-- CREDIT MODULE  -->
<script>
$(document).ready(function(){
  $("form.creditsubmit-form :input").prop("disabled", true);
  $("form.creditsubmit-form-mobile :input").prop("disabled", true);
});
</script>
<?php if (!$ajax) { ?>
</div>
</div>
</section>
<?php include $simple->tpl_footer() ?>
<?php } ?>
