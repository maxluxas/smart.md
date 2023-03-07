<?php echo $header; ?>

<!-- POPUP -->

<div class="leave_popup" id="leave_popup">
    <div class="leave_overlay"></div>
    <div class="leave_popup1" id="leave_popup1">
      <i id="close_leave_popup" class="iicon-close"></i>
      <span class="leave_title"><?php echo $popup_title; ?></span><br>
      <span class="leave_subtitle"><?php echo $popup_description; ?></span>
      <form method="POST" onsubmit="return false;">
      	<div class="nota-informare"><span><?php echo $popup_notaclient; ?></span></div>
        <label id="leave_label" for="leave_number">Scrie numarul tau de telefon:</label>
        <div class="input_leave_container">
          <input value="0" id="leave_number" type="number" name="Telefon Popup" placeholder="Numarul Dvs. de telefon">
        </div>
        <input type="text" name="tip_comanda" style="display: none" value="Popup iesire">
        <input type="text" name="nume_comanda" style="display: none" value="Numar de telefon din popup la iesire de pe site">
        <input type="text" name="roistat_visit" value="<?php echo $_COOKIE['roistat_visit']; ?>" style="display: none;">
        <input type="text" name="new_responsible_by_route" value="1" style="display: none;">
        <button class="leave_button btn leave_button_desktop" id="leave_button" disabled="disabled"><?php echo $popup_button; ?></button>
        <button class="leave_button btn leave_button_mobile" style="display: none;" id="leave_button">Sunati-ma</button>
      </form>
      <span style="display: none; color: green; padding-left: 20px; padding-right: 20px; margin-bottom: 35px; margin-top: 35px;" class="ch_home_tel_lasa_contact ch_home_tel_lasa_contact_rs"><?php echo $popup_after; ?></span>
      </div>
  </div>

<!-- POPUP -->

<?php $categories = array(); ?>
<?php foreach ($catprod as $catp) { $categories[] = $catp['id']; } ?>

<div class="modals modals_credit"></div>
<div class="modal_credit" id="modal_credit">
  <div class="modals_form modals_form_credit">
    <span class="credit_suna"><?php echo $suna_acum; ?><span class="roistat-phone068088444-number roistatphone-electronice">068 088 444</span></span>
    <span class="credit_lasa_contact"><?php echo $lasa_datele; ?></span>
    <span style="display: none; color: green; padding-left: 20px; padding-right: 20px; margin-bottom: 35px; margin-top: 35px;" class="credit_lasa_contact credit_lasa_contact_rs"><?php echo $solicitare_receptionata; ?></span>
    <form method="POST" onsubmit="return false;">
	    <input type="text" name="Name" id="credit_nume_utilizator" placeholder="<?php echo $nume_call_form; ?>*">
	    <input type="number" name="Telefon" introdu-telefon id="credit_telefon_utilizator" placeholder="+373 XX XXX XXX*">
	    <input type="text" name="cerere_apel_pagina_credit" style="display: none" value="Cerere apel din pagina Credit">
	    <input type="text" name="roistat_visit" value="<?php echo $_COOKIE['roistat_visit']; ?>" style="display: none;">
	    <input type="text" name="new_responsible_by_route" value="1" style="display: none;">
	    <div class="nota-informare"><span><?php echo $popup_notaclient; ?></span></div>
	    <button class="credit_submit_form btn btn-small"><?php echo $trimite_call_form; ?></button>
    </form>
    <!-- <img class="modal_footer" src="catalog/view/smartv3/img/footer/foter_image.png"> -->
    <i class="iicon-close close_modal close_modal_credit"></i>
  </div>
</div>

<script type="text/javascript">
  function open_nr_credit() {
    $("#modal_credit, .modals_credit").slideDown(400);
    $(".modals_form_credit").fadeIn(800);
  }
  $(".modals_credit, .close_modal_credit").click(function(){
    $(".modals_credit").slideUp(400);
    $("#modal_credit").slideUp(400);
    $(".modals_form_credit").fadeOut(200);
    $("#credit_nume_utilizator").val('');
    $("#credit_telefon_utilizator").val('')
  });

  $(".credit_submit_form").click(function(){
    
    $('label.cta-error_field').remove();

    var num = $("#credit_nume_utilizator").val();
    var tel = $("#credit_telefon_utilizator").val();
    if(tel.indexOf('0') == 0) {
      tel = tel.substring(1);
    }
    var numLen = num.length;
    var telLen = tel.length;
    var telfvalue = $("#credit_telefon_utilizator").val();

    if (num != '' && telfvalue != '' && telLen > 6 && (telfvalue.indexOf('6') == 0 || telfvalue.indexOf('7') == 0 || telfvalue.indexOf('0') == 0 || (telfvalue.indexOf('373') == 0 ))) {

      var cname = {
        productname: $("#tAP_product_name").val(),
        name: $("#credit_nume_utilizator").val(),
        phone:$("#credit_telefon_utilizator").val(),
        status_id: '10204830',
        tip_comanda: 'Cerere apel din pagina Credit'
      }

      // $.ajax({
      //   url: 'https://www.smart.md/amocrm/1/handler.php',
      //   type: 'post',
      //   dataType: 'json',
      //   success: function (data) {

      //   },
      //   data: cname
      // });

      $(".modals_form_credit *:not(br)").css("display", "none");
      $(".credit_lasa_contact_rs, .close_modal_credit").fadeIn(200);
      $(".modals_form_credit").css("height", "auto");

    } else {
      
    	if ((numLen == 0)) {
            $("#credit_nume_utilizator").css("border-bottom", "2px solid #e82b2b");
            $("#credit_nume_utilizator").before('<label for="credit_nume_utilizator" class="cta-error_field">Scrie Numele Tau</label>');
	    } else {
	       $("#credit_nume_utilizator").css("border-bottom", "2px solid mediumseagreen");
	    }

	    if ((telLen <= 6)) {
		    if(telLen > 0) {
	        	$("#credit_telefon_utilizator").css("border-bottom", "2px solid #e82b2b");
	        	$("#credit_telefon_utilizator").before('<label for="credit_telefon_utilizator" class="cta-error_field">Numarul de telefon trebuie sa contina minim 7 simboluri</label>');
	        } else {
	        	$("#credit_telefon_utilizator").css("border-bottom", "2px solid #e82b2b");
	        	$("#credit_telefon_utilizator").before('<label for="credit_telefon_utilizator" class="cta-error_field">Scrie Numarul Tau</label>');
	        }

	    } else {
	                                
	        if(telfvalue.indexOf('6') !== 0 && telfvalue.indexOf('7') !== 0 && telfvalue.indexOf('0') !== 0) {
	          $("#credit_telefon_utilizator").css("border-bottom", "2px solid #e82b2b");
	          $("#credit_telefon_utilizator").before('<label for="credit_telefon_utilizator" class="cta-error_field">Format de numar invalid</label>');
	        } else {
	          $("#credit_telefon_utilizator").css("border-bottom", "2px solid mediumseagreen");
	        }
	    }

    }
  });
</script>

<script type="text/javascript" src="catalog/view/smartv3/js/credit.js?v=0.0.3"></script>
<link rel="stylesheet" href="catalog/view/smartv3/css/credit.css?v=0.0.9">

<script type="text/javascript">
$(document).ready(function($) {
	$(".container_credit_box").click(function() {
		$(".container_credit_box").removeClass('active_credit');
		$(this).addClass('active_credit');
		$('.selecteaza_txt_credit').text('<?php echo $selecteaza; ?>');
		$(this).find('.selecteaza_txt_credit').text('<?php echo $selectat; ?>');
		// selected button on mobile
		$('.selected_mobile').removeClass('active_selct_mobile');
		$(this).find('.selected_mobile').addClass('active_selct_mobile');
	});
	$('.active_credit').find('.selecteaza_txt_credit').text('<?php echo $selectat; ?>');
});
</script>

<script>
  fbq('track', 'AddToCart', {
    value: 2.5,
    currency: 'USD',
    content_ids: '<?php echo $sku; ?>',
    content_type: '<?php echo $produs; ?>',
  });
</script>

<?php if (in_array(749, $categories)) { ?>
    <script type="text/javascript">
    	$(document).ready(function(){
	   		$('.roistatphone-electronice').addClass('roistatphone-electrocasnice');
	        $('.roistatphone-electronice').removeClass('roistatphone-electronice');
	    });
    </script>
<?php } else if(in_array(1054,$categories)) { ?>
    <script type="text/javascript">
    	$(document).ready(function(){
   			$('.roistatphone-electronice').addClass('roistatphone-mobila');
        	$('.roistatphone-electronice').removeClass('roistatphone-electronice');
    	});
 	</script>
<?php } else if(in_array(1489,$categories)) { ?>
  	<script type="text/javascript">
  		$(document).ready(function(){
	    	$('.roistatphone-electronice').addClass('roistatphone-fashion');
	        $('.roistatphone-electronice').removeClass('roistatphone-electronice');
	    });
   	</script>

<?php } ?>

<script>
  // gtag('event', 'page_view', {
  //   'send_to': 'AW-984413743',
  //   'dynx_itemid': '<?php echo $sku; ?>',
  //   'dynx_pagetype': 'cart',
  //  });
  /*dataLayer.push({
  	'event': 'add_to_cart',
    'google_tag_params': {
      'dynx_itemid': '<?php echo $sku; ?>',
      'dynx_pagetype': 'conversionintent',
      'dynx_totalvalue': '<?php if ($pret_special) { echo number_format($pret_special, 0, ".",""); } else { echo number_format($pret, 0, ".",""); } ?>'
    }
  });*/
</script>

<script>
	var ids = [<?php echo "'" . $sku . "'"; ?>];
    gtag('event', 'add_to_cart', {'send_to': 'AW-984413743',
	   	'dynx_itemid': ids,
	    'dynx_pagetype':'conversionintent',
	    'dynx_totalvalue':<?php if ($pret_special) { echo number_format($pret_special, 0, ".",""); } else { echo number_format($pret, 0, ".",""); } ?>,
	    'google_business_vertical': 'custom'
	});
</script> 

<?php if (isset($_POST['imagine'])) { ?>
<section id="credit_section">
<style type="text/css">
.nr_contact{font-weight: 400;font-size: 18px;color: #424242;padding-top: 5px;margin: 0;}
.avans_telefon{display: block;}.avans_telefon_m{display: none;}
@media screen and (max-width: 425px){.cards_credit_row{margin-bottom:10px;}.avans_telefon{display: none;}.avans_telefon_m{display: block;}.beginig_credit{width:90% !important;}#top_bar{height: 58px !important;}.timit_form_credit{margin: 15px auto; }.nr_contact{font-weight: 400;font-size: 14px;color: #424242;padding-top: 5px;margin: 0;}}
@media screen and (max-width: 768px) {
	.avans_telefon{display: none;}
	.avans_telefon_m{display: block; width: 100% !important;}
	.avans_telefon_m h6 {
		font-size: 20px;
	}
	.avans_telefon_m h6 a {
		border-bottom: 4px solid #ffcc33;
    color: #000 !important;
	}
}
</style>
			<!-- INceputul Paginii Primul Block -->
			<div class="container content_in_main beginig_credit">
				<div class="col s12 m7 avans_telefon" style="width: 100%; margin-top: 30px;">
					<h6 style="font-family: SmartFont; font-size: 36px;" class="nr_contact">
						<?php
								if (isset($_COOKIE['contact_adwords'])) {
										echo $nr_contact_ads;
								} elseif (isset($_COOKIE['contact_display'])) {
										echo $nr_contact_display;
								} elseif (isset($_COOKIE['facebook_post'])) {
										echo $nr_contact_post;
								} elseif (isset($_COOKIE['contact_facebook'])) {
										echo $nr_contact_fb;
								} elseif (isset($_COOKIE['contact_email'])) {
										echo $nr_contact_email;
								} elseif (isset($_COOKIE['contact_999'])) {
										echo $nr_contact_999;
								} else {
								echo $nr_contact;
								}
							?>
					</h6>
				</div>
			<div class="row" style="margin-bottom: 0; margin:0;">

				<div class="col s12 m7 avans_telefon_m">
					<!-- <h6 style="text-align: center; font-family: SmartFont; line-height: 1.8;">Cu avans ieși mai ieftin. <br class="avans_telefon_m">Sună să afli diferența de dobândă
						<br><i style="padding-left: 5px; padding-right: 10px; color: #000;" class="iicon-incoming-phone-call-symbol"></i><a class="track_number_mobile" style="color: #e82b2b;font-weight: 500;" href="tel:068 088 444">068 088 444</a>
					</h6> -->
                    <?php echo $avans_text_L; ?>
				</div>
				<div class="col s12 m5 step_counter" style="margin-top: 20px; width:100%; margin-bottom: 10px;">
					<h3 class="number_count">1.</h3>
				<h3 class="point_page">
					<?php echo $select_title; ?>
				</h3>
				</div>
			</div>
				<p class="sfat_page_point">
					<?php echo $select_title_sfat; ?>
				</p>

					<?php $ids_10_0 = array(); ?>

					<?php $ids_4_0 = array(); ?>

					<?php $ids_6_0 = array(); ?>


					<div class="row cards_credit_row">
	                <div class="col s4 grid_cred">
	                    <div class="container_credit_box left_cerd_box  <?php if ($_GET['credit_avans']==0) { ?>active_credit<?php } ?>">
	                        <?php if (isset($_GET['credit_type']) and $_GET['credit_type'] == 4) { ?>
	                        <div class="block_section_card top_blk_sction">
	                            <h2 id="rata_lunara_m"><?php echo number_format(ceil($pret/4), 0, ',', ' '); ?> <small><?php echo $credit_money; ?></small></h2>
	                            <p><?php echo $lunar_txt; ?></p>
	                        </div>
	                        <div class="block_section_card middle_section">
	                            <h3 id="avans_m"><?php echo number_format(ceil($pret*0), 0, ',', ' '); ?> <small><?php echo $credit_money; ?> <?php echo $avans_txt; ?></small></h3>
	                            <p class="txt_VV"></p>
	                        </div>
	                        <div class="block_section_card middle_section">
	                            <h3>4 <small><?php echo $credit_months; ?></small></h3>
	                            <p class="txt_VV"></p>
	                        </div>
	                        <hr class="hr_credit_card">
	                        <a class="selecteaza_txt_credit"><?php if ($_GET['credit_avans']==0) { echo $selectat; } else { echo $selecteaza; } ?></a>
	                        <!-- selected Button on mobile -->
	                        <div class="selected_mobile<?php if ($_GET['credit_avans']==0) { ?> active_selct_mobile<?php } ?>">
	                            <div class="mask_crd_sel"></div>
	                        </div>
	                        <?php } else { ?>
	                        <div class="block_section_card top_blk_sction">
	                            <h2 id="rata_lunara_m"><?php echo number_format(ceil((($pret*0.6250)+$pret)/36), 0, ',', ' '); ?> <small><?php echo $credit_money; ?></small></h2>
	                            <p><?php echo $lunar_txt; ?></p>
	                        </div>
	                        <?php if ((in_array($_POST['product_id'], $ids_4_0)) || (in_array($_POST['product_id'], $ids_10_0)) || (in_array(1431, $categories)) || (in_array(1432, $categories)) || (in_array(1435, $categories)) || (in_array($_POST['product_id'], $ids_6_0))) { ?>
	                            <div class="block_section_card middle_section">
	                                <h3 id="avans_m"><?php echo $rata_mica; ?></h3>
	                                <p class="txt_VV"></p>
	                            </div>
	                        <?php } ?>
	                        <div class="block_section_card middle_section">
	                            <h3 id="avans_m">0 <small><?php echo $credit_money; ?> <?php echo $avans_txt; ?></small></h3>
	                            <p class="txt_VV"></p>
	                        </div>
	                        <div class="block_section_card middle_section">
	                            <h3>36 <small><?php echo $credit_months; ?></small></h3>
	                            <p class="txt_VV"></p>
	                        </div>
	                        <hr class="hr_credit_card">
	                        <a class="selecteaza_txt_credit"><?php if ($_GET['credit_avans']==0) { echo $selectat; } else { echo $selecteaza; } ?></a>
	                        <!-- selected Button on mobile -->
	                        <div class="selected_mobile<?php if ($_GET['credit_avans']==0) { ?> active_selct_mobile<?php } ?>">
	                            <div class="mask_crd_sel"></div>
	                        </div>
	                        <?php } ?>
	                    </div>
	                </div>


	                <?php if ((!(in_array($_POST['product_id'], $ids_6_0))) && (!(in_array($_POST['product_id'], $ids_10_0))) && (!(in_array(1431, $categories))) && (!(in_array(1432, $categories))) && (!(in_array(1435, $categories))) && (!(in_array($_POST['product_id'], $ids_4_0)))){ ?>
	                    <div class="col s4 grid_cred">
	                        <div class="container_credit_box">
	                            <div class="block_section_card top_blk_sction">
	                                <h2 id="rata_lunara_m"><?php echo number_format(ceil((($pret*0.4200)+$pret)/24), 0, ',', ' '); ?> <small><?php echo $credit_money; ?></small></h2>
	                                <p><?php echo $lunar_txt; ?></p>
	                            </div>
	                            <div class="block_section_card middle_section">
	                                <h3 id="avans_m"><?php echo number_format(ceil($pret*0), 0, ',', ' '); ?> <small><?php echo $credit_money; ?> <?php echo $avans_txt; ?></small></h3>
	                                <p class="txt_VV"></p>
	                            </div>
	                            <div class="block_section_card middle_section">
	                                <h3>24 <small><?php echo $credit_months; ?></small></h3>
	                                <p class="txt_VV"></p>
	                            </div>
	                            <hr class="hr_credit_card">
	                            <a class="selecteaza_txt_credit"><?php echo $selecteaza; ?></a>
	                            <!-- selected Button on mobile -->
	                            <div class="selected_mobile">
	                                <div class="mask_crd_sel"></div>
	                            </div>
	                        </div>
	                    </div>
	                <?php } else if ((in_array($_POST['product_id'], $ids_10_0)) || (in_array(1431, $categories))) { ?>
	                    <div class="col s4 grid_cred">
	                        <div class="container_credit_box">
	                            <div class="block_section_card top_blk_sction">
	                                <h2 id="rata_lunara_m"><?php echo number_format(ceil(($pret)/10), 0, ',', ' '); ?> <small><?php echo $credit_money; ?></small></h2>
	                                <p><?php echo $lunar_txt; ?></p>
	                            </div>
	                            <div class="block_section_card middle_section">
	                                <h3 id="avans_m"><?php echo $fara_dobanda; ?></h3>
	                                <p class="txt_VV"></p>
	                            </div>
	                            <div class="block_section_card middle_section">
	                                <h3 id="avans_m"><?php echo number_format(ceil(0), 0, ',', ' '); ?> <small><?php echo $credit_money; ?> <?php echo $avans_txt; ?></small></h3>
	                                <p class="txt_VV"></p>
	                            </div>
	                            <div class="block_section_card middle_section">
	                                <h3>10 <small><?php echo $credit_months; ?></small></h3>
	                                <p class="txt_VV"></p>
	                            </div>
	                            <hr class="hr_credit_card">
	                            <a class="selecteaza_txt_credit"><?php echo $selecteaza; ?></a>
	                            <!-- selected Button on mobile -->
	                            <div class="selected_mobile">
	                                <div class="mask_crd_sel"></div>
	                            </div>
	                        </div>
	                    </div>
	                <?php } else if ((in_array($_POST['product_id'], $ids_4_0)) || (in_array(1432, $categories))) { ?>
	                	<div class="col s4 grid_cred">
	                        <div class="container_credit_box">
	                            <div class="block_section_card top_blk_sction">
	                                <h2 id="rata_lunara_m"><?php echo number_format(ceil(($pret)/4), 0, ',', ' '); ?> <small><?php echo $credit_money; ?></small></h2>
	                                <p><?php echo $lunar_txt; ?></p>
	                            </div>
	                            <div class="block_section_card middle_section">
	                                <h3 id="avans_m"><?php echo $fara_dobanda; ?></h3>
	                                <p class="txt_VV"></p>
	                            </div>
	                            <div class="block_section_card middle_section">
	                                <h3 id="avans_m"><?php echo number_format(ceil(0), 0, ',', ' '); ?> <small><?php echo $credit_money; ?> <?php echo $avans_txt; ?></small></h3>
	                                <p class="txt_VV"></p>
	                            </div>
	                            <div class="block_section_card middle_section">
	                                <h3>4 <small><?php echo $credit_months; ?></small></h3>
	                                <p class="txt_VV"></p>
	                            </div>
	                            <hr class="hr_credit_card">
	                            <a class="selecteaza_txt_credit"><?php echo $selecteaza; ?></a>
	                            <!-- selected Button on mobile -->
	                            <div class="selected_mobile">
	                                <div class="mask_crd_sel"></div>
	                            </div>
	                        </div>
	                    </div>
	                <?php } else if ((in_array($_POST['product_id'], $ids_6_0)) || (in_array(1435, $categories))) { ?>
	                	<div class="col s4 grid_cred">
	                        <div class="container_credit_box">
	                            <div class="block_section_card top_blk_sction">
	                                <h2 id="rata_lunara_m"><?php echo number_format(ceil(($pret)/6), 0, ',', ' '); ?> <small><?php echo $credit_money; ?></small></h2>
	                                <p><?php echo $lunar_txt; ?></p>
	                            </div>
	                            <div class="block_section_card middle_section">
	                                <h3 id="avans_m"><?php echo $fara_dobanda; ?></h3>
	                                <p class="txt_VV"></p>
	                            </div>
	                            <div class="block_section_card middle_section">
	                                <h3 id="avans_m"><?php echo number_format(ceil($pret*0), 0, ',', ' '); ?> <small><?php echo $credit_money; ?> <?php echo $avans_txt; ?></small></h3>
	                                <p class="txt_VV"></p>
	                            </div>
	                            <div class="block_section_card middle_section">
	                                <h3>6 <small><?php echo $credit_months; ?></small></h3>
	                                <p class="txt_VV"></p>
	                            </div>
	                            <hr class="hr_credit_card">
	                            <a class="selecteaza_txt_credit"><?php echo $selecteaza; ?></a>
	                            <!-- selected Button on mobile -->
	                            <div class="selected_mobile">
	                                <div class="mask_crd_sel"></div>
	                            </div>
	                        </div>
	                    </div>
	                <?php } else { ?>
	                    <div class="col s4 grid_cred">
	                        <div class="container_credit_box">
	                            <div class="block_section_card top_blk_sction">
	                                <h2 id="rata_lunara_m"><?php echo number_format(ceil((($pret*0.4200)+$pret)/24), 0, ',', ' '); ?> <small><?php echo $credit_money; ?></small></h2>
	                                <p><?php echo $lunar_txt; ?></p>
	                            </div>
	                            <div class="block_section_card middle_section">
	                                <h3 id="avans_m">0 <small><?php echo $credit_money; ?> <?php echo $avans_txt; ?></small></h3>
	                                <p class="txt_VV"></p>
	                            </div>
	                            <div class="block_section_card middle_section">
	                                <h3>24 <small><?php echo $credit_months; ?></small></h3>
	                                <p class="txt_VV"></p>
	                            </div>
	                            <hr class="hr_credit_card">
	                            <a class="selecteaza_txt_credit"><?php echo $selecteaza; ?></a>
	                            <!-- selected Button on mobile -->
	                            <div class="selected_mobile">
	                                <div class="mask_crd_sel"></div>
	                            </div>
	                        </div>
	                    </div>
	                <?php } ?>

	                <!-- clasa ### active_credit ### pentru blocul activ-->
	                <div class="col s4 grid_cred">
	                    <div class="container_credit_box  right_cerd_box<?php if ($_GET['credit_avans']>0) { ?>active_credit<?php } ?>">
	                        <?php if (isset($_GET['credit_type']) and $_GET['credit_type'] == 4) { ?>
	                        <div class="block_section_card top_blk_sction right_cerd_box">
	                            <h2 id="rata_lunara_m"><?php echo number_format(ceil((($pret*0.6250)+$pret)/36), 0, ',', ' '); ?> <small><?php echo $credit_money; ?></small></h2>
	                            <p><?php echo $lunar_txt; ?></p>
	                        </div>
	                        <div class="block_section_card middle_section">
	                            <h3 id="avans_m"><?php echo number_format(ceil($pret*0), 0, ',', ' '); ?> <small><?php echo $credit_money; ?> <?php echo $avans_txt; ?></small></h3>
	                            <p class="txt_VV"></p>
	                        </div>
	                        <div class="block_section_card middle_section">
	                            <h3>36 <small><?php echo $credit_months; ?></small></h3>
	                            <p class="txt_VV"></p>
	                        </div>
	                        <hr class="hr_credit_card">
	                        <a class="selecteaza_txt_credit"><?php if ($_GET['credit_avans']>0) { echo $selectat; } else { echo $selecteaza; } ?></a>
	                        <!-- selected Button on mobile -->
	                        <div class="selected_mobile <?php if ($_GET['credit_avans']>0) { ?> active_selct_mobile<?php } ?>">
	                            <div class="mask_crd_sel"></div>
	                        </div>
	                        <?php } else if ((in_array($_POST['product_id'], $ids_4_0)) || (in_array($_POST['product_id'], $ids_6_0)) || (in_array(1435, $categories)) || (in_array(1432, $categories)) || (in_array($_POST['product_id'], $ids_10_0)) || (in_array(1431, $categories))) { ?>
	                        <div class="block_section_card top_blk_sction">
	                            <h2 id="rata_lunara_m">
	                            <?php echo number_format(ceil((($pret*0.24)+$pret)/12), 0, ',', ' '); ?>
	                             <small><?php echo $credit_money; ?></small></h2>
	                            <p><?php echo $lunar_txt; ?></p>
	                        </div>
	                        <div class="block_section_card middle_section">
	                            <h3 id="avans_m"><?php echo $credit_avantajos; ?></h3>
	                            <p class="txt_VV"></p>
	                        </div>
	                        <div class="block_section_card middle_section">
	                            <h3 id="avans_m">0 <small><?php echo $credit_money; ?> <?php echo $avans_txt; ?></small></h3>
	                            <p class="txt_VV"></p>
	                        </div>
	                        <div class="block_section_card middle_section">
	                            <h3>12 <small><?php echo $credit_months; ?></small></h3>
	                            <p class="txt_VV"></p>
	                        </div>
	                        <hr class="hr_credit_card">
	                        <a class="selecteaza_txt_credit"><?php if ($_GET['credit_avans']>0) { echo $selectat; } else { echo $selecteaza; } ?></a>
	                        <!-- selected Button on mobile -->
	                        <div class="selected_mobile <?php if ($_GET['credit_avans']>0) { ?> active_selct_mobile<?php } ?>">
	                            <div class="mask_crd_sel"></div>
	                        </div>
	                        <?php } else { ?>
	                        <div class="block_section_card top_blk_sction">
	                            <h2 id="rata_lunara_m">
	                            <?php echo number_format(ceil((($pret*0.2630)+$pret)/12), 0, ',', ' '); ?>
	                             <small><?php echo $credit_money; ?></small></h2>
	                            <p><?php echo $lunar_txt; ?></p>
	                        </div>
	                        <div class="block_section_card middle_section">
	                            <h3 id="avans_m">0 <small><?php echo $credit_money; ?> <?php echo $avans_txt; ?></small></h3>
	                            <p class="txt_VV"></p>
	                        </div>
	                        <div class="block_section_card middle_section">
	                            <h3>12 <small><?php echo $credit_months; ?></small></h3>
	                            <p class="txt_VV"></p>
	                        </div>
	                        <hr class="hr_credit_card">
	                        <a class="selecteaza_txt_credit"><?php if ($_GET['credit_avans']>0) { echo $selectat; } else { echo $selecteaza; } ?></a>
	                        <!-- selected Button on mobile -->
	                        <div class="selected_mobile <?php if ($_GET['credit_avans']>0) { ?> active_selct_mobile<?php } ?>">
	                            <div class="mask_crd_sel"></div>
	                        </div>
	                        <?php } ?>
	                    </div>
	                </div>
	            </div>
<!-- promotie cu creditele schimbate -->
				<div class="titlu_wrapper" style="height:60px; margin-top:70px;">
					<h3 class="number_count" style="margin-left:10px;">2.</h3>
					<h3 class="point_page">
						<?php echo $complete_title; ?>
					</h3>
				</div>
				<p class="sfat_page_point">
					<?php echo $complete_title_sfat; ?>
				</p>


				<div class="block_form_and_prod_container" id="block_form_credit">
					<div class="row info_form_cred">
						<style type="text/css">
						.roistat-promo-wrap {
							float: left;
							width: 100%;
						}
						</style>

						<div class="col m4 produs_off_mob" id="produs_mob" style="margin-left: -5%; width: 38.3333%;">
							<div class="row produs_cont_row valign-wrapper">

								<div class="col s4 img_container" style="padding: 0; margin: 0;">
									<a onclick="goBack()"><img src="<?php echo $imagine; ?>" style="width: 80%;"/></a>
								</div>
								<div class="col s8 info_prod_txts" style="padding: 0; margin-left: -7%; width: 73.3333%;">
									<div class="roistat-promo-wrap">
										<?php echo $sku; ?>
									</div>
									<h4 onclick="goBack()" style="margin-top: 10px;"><?php echo $produs; ?></h4>
									<p></p>
									<h3>
										<?php echo $thous_pret = number_format($pret, 0, '.', ' '); ?> <small><?php echo $credit_money; ?></small>
										<br>
									</h3>
									<div class="test" style="display:none;"><input type="text" introdu-telefon id="tAP_CA_Mobiles"><button class="test_button">test</button></div>
								</div>
							</div>
							<span id="Pret_achitare"><sup>*</sup><?php echo $pret_numerar; ?></span>
						</div>
						<div class="col m8 s12 form_grid">
							<div id="form_credit">
								<form method="POST" onsubmit="return false;">
									<!-- Nume Prenume Input -->
									<div class="input-field numePrenume" style="width: 40%; float: left;">
									    <input name='tAP_FirstName' type='text' class="validate" maxlength='30' id='tAP_FirstName'>
									    <label for="tAP_FirstName"><?php echo $credit_nume; ?> <?php echo $credit_prenume; ?></label>
									</div>
									<!-- Telefon Input -->
									<div class="input-field" style="width: 40%; float: right; ">
									    <input name='tAP_CA_Mobile' type='number' class="validate" maxlength='30' introdu-telefon id='tAP_CA_Mobile'>
									    <label for="tAP_CA_Mobile"><?php echo $credit_tel_mob; ?></label>
									</div>
									<div class="input-field" style="display: none;">
										    <input id="tAP_CA_sku" name="tAP_CA_sku" type="text" value="<?php echo $sku; ?>" style="display: none;">
										    <input id="tAP_CA_cod_user" name="tAP_CA_cod_user" type="text" disabled value="<?php array_key_exists('roistat_visit', $_COOKIE) ? $_COOKIE['roistat_visit'] : '' ?>">
										    <label for="tAP_CA_sku"><?php echo $cod_produs; ?></label>
										</div>
									<input name="product_name1" style="position:absolute;top:-9999px;left:-9999px;" id="tAP_product_name1" type="text" value="<?php echo $produs; ?>" />
									<input name="price1" id="tAP_product_price1" style="position:absolute;top:-9999px;left:-9999px;" type="text" value="<?php echo $pret; ?>" />
									<input type="text" style="position:absolute;top:-9999px;left:-9999px;" name="ga1" id="ga1" value="<?php echo $google_cid[2]; ?>.<?php echo $google_cid[3]; ?>">
									<input type="text" name="roistat_visit" value="<?php echo $_COOKIE['roistat_visit']; ?>" style="display: none;">
									<input type="text" name="comanda_credit" value="Solicitare Credit" style="display: none;">
									<input type="text" name="new_responsible_by_route" value="1" style="display: none;">
									<input name="product_id" type="text" id="product_id" style="position:absolute;top:-9999px;left:-9999px;" value="<?php echo $_POST['product_id']; ?>" />
									<div class="nota-informare"><span><?php echo $popup_notaclient; ?></span></div>
									<button type="submit" class="waves-effect waves-light btn timit_form_credit buy_one_click" style="width: 40%;">
										<?php echo $button_credit; ?>
									</button>
								</form>
							</div>
						</div>
						<style type="text/css">

							@media screen and (max-width: 900px) {
			                    div#form_credit .nota-informare {
			                       padding-left: 0 !important;
			                       margin: 0 20px !important;
			                       padding-right: 30px;
			                    }
			                }

			                div#form_credit .nota-informare {
			                  padding-left: 60%; 
			                  margin:0;
			                }
							.credit_ph-error {
								float: left;
							    margin-left: 70px;
							    margin-top: 15px;
							    color: #e82b2b;
							    width: 40%;
							}
						    .roistat-promo-wrap.wrap1 {
						        float: left;
						        width: 100%;
						        display: none;
						        margin-top: -30px;
						    }
						    @media screen and (max-width: 700px) {
						     .roistat-promo-wrap.wrap1 {
							       display: block;
							    }
						    }
						</style>
						<div class="roistat-promo-wrap wrap1">
						    <?php echo $cod_produs; ?><span class="roistat-promo"></span> - <?php echo $sku; ?>
						</div>
						<input name="product_id" type="text" id="product_id" style="position:absolute;top:-9999px;left:-9999px;" value="<?php echo $_POST['product_id']; ?>" />
						<input name="product_name" style="position:absolute;top:-9999px;left:-9999px;" id="tAP_product_name" type="text" value="<?php echo $produs; ?>" />
						<input name="thumb" type="hidden" value="<?php echo $imagine; ?>" />
						<input name="price" id="tAP_product_price" style="position:absolute;top:-9999px;left:-9999px;" type="text" value="<?php echo $pret; ?>" />
						<?php $google_cid=explode(".",$_COOKIE['_ga']); ?>
						<input type="text" style="position:absolute;top:-9999px;left:-9999px;" name="ga" id="ga" value="<?php echo $google_cid[2]; ?>.<?php echo $google_cid[3]; ?>">

					</div>
				</div>
			</div>

			<!-- sfarsitulu iceputului paginii credit -->
			<form method="POST" onsubmit="return false;">
			<!-- Incepe completarea formularelor Step 1 -->
			<div class="container content_in_main STEP1_FORMS">
				<div class="forms_container">
					<div class="row">
						<div class="col l1 m2 s5 img_forms_heading">
							<img src="catalog/view/smartv3/img/suricat_logo_forms.png">
						</div>
						<div class="col l10 s7 information_heading_forms">
							<h2><?php echo $va_multumim; ?></h2>
							<p class="succes_unu"><?php echo $solicitare_succes; ?></p>
							<p class="succes_doi"><?php echo $solicitare_succes_doi; ?></p>
						</div>
					</div>
					<hr class="forms_heading_hr">
					<h3><?php echo $pasul_doi; ?></h3>
					<p><i class="iicon-ic_alarm_black_24px"></i> <?php echo $durata_completarii; ?></p>
					<!-- Aici vine progres barul pentru etape  -->
					<ul class="inline_list progress_bar_steps">
						<li class="step1_bar"><div class="mask_bar"></div></li>
						<li class="button_step1">
							<div class="butons_steps">
								<div class="info_buts">1</div>
							</div>
						</li>
						<li class="step2_bar"><div class="mask_bar"></div></li>
						<li class="button_step2">
							<div class="butons_steps">
								<div class="info_buts">2</div>
							</div>
						</li>
						<li class="step3_bar"><div class="mask_bar"></div></li>
						<li></li>
					</ul>
					<!-- Sfarsit de progres bar pentru etape -->
						<!-- Prima parte din formular -->
						<div class="container_step1">
						<h4 class="headin_forms_part"><?php echo $adresa; ?></h4>
							<div class="row">
								<div class="col m4 s12">
									<div class="input-field">
									    <input id="tAP_CA_RegionDesc" name="tAP_CA_RegionDesc" type="text">
									    <label for="tAP_CA_RegionDesc"><?php echo $credit_regiune; ?></label>
									</div>
									<div class="input-field">
									    <input id="lAP_CA_Block" name="lAP_CA_Block" type="number">
									    <label for="lAP_CA_Block"><?php echo $credit_nr_cladirii; ?></label>
									</div>
								</div>
								<div class="col m4 s12">
									<div class="input-field">
									    <input id="tAP_CA_City" name="tAP_CA_City" type="text">
									    <label for="tAP_CA_City"><?php echo $credit_oras; ?></label>
									</div>
									<div class="input-field">
									    <input id="tAP_CA_AppartmentNum" name="tAP_CA_AppartmentNum" type="number">
									    <label for="tAP_CA_AppartmentNum"><?php echo $credit_nr_apart; ?></label>
									</div>
								</div>
								<div class="col m4 s12">
									<div class="input-field">
									    <input id="tAP_CA_Street" name="tAP_CA_Street" type="text">
									    <label for="tAP_CA_Street"><?php echo $credit_strada; ?></label>
									</div>
								</div>
							</div>
							<h4 class="headin_forms_part"><?php echo $credit_info_munca; ?></h4>
							<div class="row">
								<div class="col m4 s12">
									<div class="input-field">
									    <input id="tAP_CompanyName" name="tAP_CompanyName" type="text">
									    <label for="tAP_CompanyName"><?php echo $credit_den_company; ?></label>
									</div>
								</div>
								<div class="col m4 s12">
									<div class="input-field">
									    <input id="tAP_CompanyPhone" name="tAP_CompanyPhone" type="number">
									    <label for="tAP_CompanyPhone"><?php echo $credit_phone_company; ?></label>
									</div>
								</div>
								<div class="col m4 s12">
									<a class="waves-effect waves-light btn continue_form">
									<?php echo $continua; ?></a>
								</div>
								<div class="phone_error_doi" style="display:none;"><?php echo $error_completare; ?></div>
							</div>
						</div>
						<!-- A doua parte din formular -->
						<div class="container_step2">
							<h4 class="headin_forms_part"><?php echo $date_personale; ?></h4>
							<div class="row forms_row">
								<div class="col l4 m6 s12">
									<div class="input-field">
									    <input id="tAP_IdentityCard" name="tAP_IdentityCard" required="required" type="number">
									    <label for="tAP_IdentityCard"><?php echo $credit_nr_buletin; ?></label>
									</div>
									<div class="input-field">
									    <input id="ctrlAP_BirthDate" name="ctrlAP_BirthDate" required="required" type="text">
									    <label for="ctrlAP_BirthDate"><?php echo $credit_data_nasterii; ?></label>
									</div>
								</div>
								<div class="col l4 m6 s12">
									<div class="input-field">
									    <input id="ctrlAP_ICExpiryDate" name="ctrlAP_ICExpiryDate" required="required" type="text">
									    <label for="ctrlAP_ICExpiryDate"><?php echo $credit_data_exp; ?></label>
									</div>
									<div class="input-field">
									    <input id="tAP_UIN" name="tAP_UIN" required="required" type="number">
									    <label for="tAP_UIN"><?php echo $credit_cod_personal; ?></label>
									</div>
								</div>
								<div class="col l4 m12 s12">
									<h4 class="headin_forms_part copi_heading"><?php echo $buletin; ?></h4>
									<div class="file-field input-field">
									  	<div class="btn waves-effect waves-light btn_upload">
									    	<span><?php echo $fata; ?></span>
									    	<input type="file" id="file" name="fileAttach">
									  	</div>
									  	<div class="file-path-wrapper">
									    	<input class="file-path validate" id="name" type="text">
									  	</div>
									</div>
									<div class="file-field input-field">
									  	<div class="btn waves-effect waves-light btn_upload">
									    	<span><?php echo $verso; ?></span>
									    	<input type="file" id="file2" name="fileAttach2">
									  	</div>
									  	<div class="file-path-wrapper">
									    	<input class="file-path validate" id="name2" type="text">
									  	</div>
									</div>
								</div>
							</div>
							<h4 class="headin_forms_part"><?php echo $credit_persoana_conact; ?></h4>
							<div class="row forms_row">
								<div class="col m4 s12">
									<div class="input-field">
									    <input id="tCP_FirstName" name="tCP_FirstName" required="required" type="text">
									    <label for="tCP_FirstName"><?php echo $credit_prenume; ?></label>
									</div>
								</div>
								<div class="col m4 s12">
									<div class="input-field">
									    <input id="tCP_LastName" name="tCP_LastName" required="required" type="text">
									    <label for="tCP_LastName"><?php echo $credit_nume; ?></label>
									</div>
								</div>
								<input name='tAP_CA_Mobile' introdu-telefon type='hidden' class="validate" maxlength='30' id='Yadro_Mobile'>
								<div class="col m4 s12">
									<div class="input-field">
									    <input id="tCP_Mobile" name="tCP_Mobile" required="required" type="number">
									    <label for="tCP_Mobile"><?php echo $credit_tel_mob; ?></label>
									</div>
									<button type="submit" class="credit-button waves-effect waves-light btn trimit_all_forms">
									<?php echo $button_credit; ?></button>
									<div class="error"></div>
									<input type="hidden" name="produs" value="<?php echo $produs; ?>" />
									<?php if (isset($_GET['credit_type']) and $_GET['credit_type'] == 2) { ?>
									<?php if (isset($pret_special)) { ?>
									<input type="hidden" name="pret" value="<?php echo $pret_special;echo ' '.$credit_money; ?>" />
									<?php } else { ?>
									<input type="hidden" name="pret" value="<?php echo $pret;echo ' '.$credit_money; ?>" />
									<?php } } ?>
									<?php if (isset($_GET['credit_type']) and $_GET['credit_type'] == 1) { ?>
									<input type="hidden" name="pret" value="<?php echo $pret;echo ' '.$credit_money; ?>" />
									<?php } ?>
									<?php if (isset($_GET['credit_type']) and $_GET['credit_type'] == 3) { ?>
									<input type="hidden" name="pret" value="<?php echo $pret;echo ' '.$credit_money; ?>" />
									<?php } ?>
								</div>
							</div>
						</div>
				</div>
			</div>
		</form>
		<!-- End Main Data for category page -->
<script type="text/javascript">
$(document).ready(function() {
	if ($('html').attr('lang') == 'ru') {
    		$('.top_blk_sction').children('p').addClass("ruTxt");
    		}
    		
//Phone transfer
    $(function(){
	    var $phoneform1 = $('#tAP_CA_Mobile');
	    var $phoneform2 = $('#Yadro_Mobile');
	    function onChangeNumber() {
	        $phoneform2.val($phoneform1.val());
	    };
	    $('#tAP_CA_Mobile')
	        .change(onChangeNumber)
	        .keyup(onChangeNumber);
	});

//Phone transfer

	$(".trimit_all_forms").click(function() {
		    var proceed = true;
	        //loop through each field and we simply change border color to red for invalid fields
			$("#STEP1_FORMS input[required=required]").each(function(){
				$(this).css('border-color','');
				if(!$.trim($(this).val())){ //if this field is empty
					$(this).css('border-color','red'); //change border color to red
					proceed = false; //set do not proceed flag
				}
				//check invalid email
				var email_reg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
				if($(this).attr("type")=="email" && !email_reg.test($.trim($(this).val()))){
					$(this).css('border-color','red'); //change border color to red
					proceed = false; //set do not proceed flag
				}
			});
	        if(proceed) {
	            var m_data = new FormData();
	            m_data.append( 'tAP_CA_Mobile', $('#tAP_CA_Mobile').val());
	            m_data.append( 'tAP_FirstName', $('#tAP_FirstName').val());
	            m_data.append( 'tAP_LastName', $('#tAP_LastName').val());
	            m_data.append( 'tAP_CompanyName', $('#tAP_CompanyName').val());
	            m_data.append( 'tAP_CompanyPhone', $('#tAP_CompanyPhone').val());
	            m_data.append( 'tAP_IdentityCard', $('#tAP_IdentityCard').val());
	            m_data.append( 'ctrlAP_ICExpiryDate', $('#ctrlAP_ICExpiryDate').val());
	            m_data.append( 'tAP_UIN', $('#tAP_UIN').val());
	            m_data.append( 'ctrlAP_BirthDate', $('#ctrlAP_BirthDate').val());
	            m_data.append( 'tAP_CA_City', $('#tAP_CA_City').val());
	            m_data.append( 'tAP_CA_Region', $('#tAP_CA_Region').val());
	            m_data.append( 'tAP_CA_Street', $('#tAP_CA_Street').val());
	            m_data.append( 'tAP_CA_AppartmentNum', $('#tAP_CA_AppartmentNum').val());
	            m_data.append( 'tAP_CA_Block', $('#tAP_CA_Block').val());
	            m_data.append( 'tCP_FirstName', $('#tCP_FirstName').val());
	            m_data.append( 'tCP_LastName', $('#tCP_LastName').val());
	            m_data.append( 'tCP_Mobile', $('#tCP_Mobile').val());
	            m_data.append( 'produs', $('input[name=produs]').val());
				m_data.append( 'pret', $('input[name=pret]').val());
			    m_data.append( 'file_attach', $('input[name=fileAttach]')[0].files[0]);
			    m_data.append( 'file_attach2', $('input[name=fileAttach2]')[0].files[0]);
	  			$.ajax({
	              url: 'https://www.smart.md/credit/credit.php',
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
					    window.location.href = "//www.smart.md/index.php?route=checkout/successcredit";														}

	              }
	            });
	            window.location.href = "//www.smart.md/index.php?route=checkout/successcredit";
	        }
	    });
});
</script>
</section>
<?php } else { ?>
<section id="Cosh_section">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <h2 class="title_section treste"><?php echo $heading_title; ?></h2>
            </div>
        </div>
        <code class="custom_hr credit_hr"><span class="mask"></span></code>
        <!-- Blocul acesta va aparea doar atunci cand coshul utilizatorului va fi Gol -->
        <aside id="cosh_golit"><p><?php echo $text_credit_empty; ?></p><a href="index.php?route=common/home"><i class="icon-arrow-left"></i>Înapoi la cumpărături</a></aside>
    </div>
</section>
<?php } ?>

<?php
	require_once('/home/smart/web/test.smart.md/public_html/introvert_save.php');
?>

<?php echo $footer; ?>
