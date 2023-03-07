<?php echo $header; ?>

<script type="text/javascript" src="catalog/view/smartv3/js/credit.js"></script>
<link rel="stylesheet" href="catalog/view/smartv3/css/credit.css">

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
<?php if (isset($_POST['imagine'])) { ?>
<section id="credit_section" <?php if ($_SERVER["HTTP_CF_CONNECTING_IP"]=='195.22.229.38') { ?><?php } else { ?> style="display:none;"<?php } ?>>
			<!-- INceputul Paginii Primul Block -->
			<div class="container content_in_main beginig_credit">
				<h3 class="point_page">
					<?php echo $select_title; ?>
				</h3>
				<p class="sfat_page_point">
					<?php echo $select_title_sfat; ?>
				</p>
				<div class="row cards_credit_row">

					<div class="col s4 grid_cred">
						<div class="container_credit_box left_cerd_box  <?php if ($_GET['credit_avans']==0) { ?>active_credit<?php } ?>">
							<?php if (isset($_GET['credit_type']) and $_GET['credit_type'] == 4) { ?>
							<div class="block_section_card top_blk_sction">
								<h2 id="rata_lunara_m"><?php echo number_format(ceil($pret/4), 0, ',', ' '); ?> <small><?php echo $credit_money; ?></small></h2>
								<p><?php echo $lunar_txt; ?></p>
							</div>
							<div class="block_section_card middle_section">
								<h3 id="avans_m"><?php echo number_format(ceil($pret*0), 0, ',', ' '); ?> <small><?php echo $credit_money; ?></small></h3>
								<p class="txt_VV"><?php echo $avans_txt; ?></p>
							</div>
							<div class="block_section_card middle_section">
								<h3>4 <small><?php echo $credit_months; ?></small></h3>
								<p class="txt_VV"></p>
							</div>
							<hr class="hr_credit_card">
							<a class="selecteaza_txt_credit"><?php if ($_GET['credit_avans']==0) { echo $selectat; } else { echo $selecteaza; } ?></a>
							<!-- selected Button on mobile -->
							<div class="selected_mobile">
								<div class="mask_crd_sel"></div>
							</div>
							<?php } elseif (isset($_GET['credit_type']) and $_GET['credit_type'] == 5) { ?>
							<div class="block_section_card top_blk_sction">
								<h2 id="rata_lunara_m"><?php echo number_format(ceil((((((($pret*0.0185)+($pret*0.08884879))*12)-$pret)*2)+$pret)/24), 0, ',', ' '); ?> <small><?php echo $credit_money; ?></small></h2>
								<p><?php echo $lunar_txt; ?></p>
							</div>
							<div class="block_section_card middle_section">
								<h3 id="avans_m"><?php echo number_format(ceil($pret*0), 0, ',', ' '); ?> <small><?php echo $credit_money; ?></small></h3>
								<p class="txt_VV"><?php echo $avans_txt; ?></p>
							</div>
							<div class="block_section_card middle_section">
								<h3>24 <small><?php echo $credit_months; ?></small></h3>
								<p class="txt_VV"></p>
							</div>
							<hr class="hr_credit_card">
							<a class="selecteaza_txt_credit"><?php if ($_GET['credit_avans']==0) { echo $selectat; } else { echo $selecteaza; } ?></a>
							<!-- selected Button on mobile -->
							<div class="selected_mobile">
								<div class="mask_crd_sel"></div>
							</div>
							<?php } else { ?>
							<div class="block_section_card top_blk_sction">
								<h2 id="rata_lunara_m"><?php echo number_format(ceil(ceil(ceil($pret*0.325)+$pret)/12), 0, ',', ' '); ?> <small><?php echo $credit_money; ?></small></h2>
								<p><?php echo $lunar_txt; ?></p>
							</div>
							<div class="block_section_card middle_section">
								<h3 id="avans_m"><?php echo number_format(ceil($pret*0), 0, ',', ' '); ?> <small><?php echo $credit_money; ?></small></h3>
								<p class="txt_VV"><?php echo $avans_txt; ?></p>
							</div>
							<div class="block_section_card middle_section">
								<h3>12 <small><?php echo $credit_months; ?></small></h3>
								<p class="txt_VV"></p>
							</div>
							<hr class="hr_credit_card">
							<a class="selecteaza_txt_credit"><?php if ($_GET['credit_avans']==0) { echo $selectat; } else { echo $selecteaza; } ?></a>
							<!-- selected Button on mobile -->
							<div class="selected_mobile">
								<div class="mask_crd_sel"></div>
							</div>
							<?php } ?>
						</div>
					</div>
					<!-- clasa ### active_credit ### pentru blocul activ-->
					<div class="col s4 grid_cred">
						<div class="container_credit_box <?php if ($_GET['credit_avans']>0) { ?>active_credit<?php } ?>">
							<?php if (isset($_GET['credit_type']) and $_GET['credit_type'] == 4) { ?>
							<div class="block_section_card top_blk_sction">
								<h2 id="rata_lunara_m"><?php echo number_format(ceil((((((($pret*0.0185)+($pret*0.08884879))*12)-$pret)*2)+$pret)/24), 0, ',', ' '); ?> <small><?php echo $credit_money; ?></small></h2>
								<p><?php echo $lunar_txt; ?></p>
							</div>
							<div class="block_section_card middle_section">
								<h3 id="avans_m"><?php echo number_format(ceil($pret*0), 0, ',', ' '); ?> <small><?php echo $credit_money; ?></small></h3>
								<p class="txt_VV"><?php echo $avans_txt; ?></p>
							</div>
							<div class="block_section_card middle_section">
								<h3>24 <small><?php echo $credit_months; ?></small></h3>
								<p class="txt_VV"></p>
							</div>
							<hr class="hr_credit_card">
							<a class="selecteaza_txt_credit"><?php if ($_GET['credit_avans']>0) { echo $selectat; } else { echo $selecteaza; } ?></a>
							<!-- selected Button on mobile -->
							<div class="selected_mobile active_selct_mobile">
								<div class="mask_crd_sel"></div>
							</div>
							<?php } else { ?>
							<div class="block_section_card top_blk_sction">
								<h2 id="rata_lunara_m"><?php echo number_format(ceil($pret/6), 0, ',', ' '); ?> <small><?php echo $credit_money; ?></small></h2>
								<p><?php echo $lunar_txt; ?></p>
							</div>
							<div class="block_section_card middle_section">
								<h3 id="avans_m"><?php echo number_format(ceil($pret*0.11), 0, ',', ' '); ?> <small><?php echo $credit_money; ?></small></h3>
								<p class="txt_VV"><?php echo $avans_txt; ?></p>
							</div>
							<div class="block_section_card middle_section">
								<h3>6 <small><?php echo $credit_months; ?></small></h3>
								<p class="txt_VV"></p>
							</div>
							<hr class="hr_credit_card">
							<a class="selecteaza_txt_credit"><?php if ($_GET['credit_avans']>0) { echo $selectat; } else { echo $selecteaza; } ?></a>
							<!-- selected Button on mobile -->
							<div class="selected_mobile active_selct_mobile">
								<div class="mask_crd_sel"></div>
							</div>
							<?php } ?>
						</div>
					</div>

					<div class="col s4 grid_cred">
						<div class="container_credit_box right_cerd_box">
							<div class="block_section_card top_blk_sction">
								<h2 id="rata_lunara_m"><?php echo number_format(ceil($pret/12), 0, ',', ' '); ?> <small><?php echo $credit_money; ?></small></h2>
								<p><?php echo $lunar_txt; ?></p>
							</div>
							<div class="block_section_card middle_section">
								<h3 id="avans_m"><?php echo number_format(ceil($pret*0.18), 0, ',', ' '); ?> <small><?php echo $credit_money; ?></small></h3>
								<p class="txt_VV"><?php echo $avans_txt; ?></p>
							</div>
							<div class="block_section_card middle_section">
								<h3>12 <small><?php echo $credit_months; ?></small></h3>
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
				</div>
				<h3 class="point_page">
					<?php echo $complete_title; ?>
				</h3>
				<p class="sfat_page_point">
					<?php echo $complete_title_sfat; ?>
				</p>


				<div class="block_form_and_prod_container">
					<div class="row info_form_cred">
						<div class="col m6 s12 form_grid">
							<div id="form_credit">
								<!-- Nume Prenume Input -->
								<div class="input-field" style="width: 100% !important;">
								    <input name='tAP_FirstName1' type='text' class="validate" maxlength='30' id='tAP_FirstName1'>
								    <label for="tAP_FirstName1"><?php echo $credit_nume; ?> <?php echo $credit_prenume; ?></label>
								</div>
								<!-- Telefon Input -->
								<div class="input-field" style="width: 100% !important;">
								    <input name='tAP_CA_Mobile1' type='number' class="validate" maxlength='30' id='tAP_CA_Mobile1'>
								    <label for="tAP_CA_Mobile1"><?php echo $credit_tel_mob; ?></label>
								</div>
								<div class="phone_error" style="display:none;"><?php echo $error_completare; ?></div>
								<!-- <a onclick="add_contact();" class="waves-effect waves-light btn timit_form_credit buy_one_click"> -->
								<a class="waves-effect waves-light btn timit_form_credit">
									<?php echo $button_credit; ?>
								</a>
							</div>
						</div>
						<input name="product_id" type="text" id="product_id" style="position:absolute;top:-9999px;left:-9999px;" value="<?php echo $_POST['product_id']; ?>" />
						<input name="product_name" style="position:absolute;top:-9999px;left:-9999px;" id="tAP_product_name" type="text" value="<?php echo $produs; ?>" />
						<input name="thumb" type="hidden" value="<?php echo $imagine; ?>" />
						<input name="price" id="tAP_product_price" style="position:absolute;top:-9999px;left:-9999px;" type="text" value="<?php echo $pret; ?>" />
						<?php $google_cid=explode(".",$_COOKIE['_ga']); ?>
						<input type="text" style="position:absolute;top:-9999px;left:-9999px;" name="ga" id="ga" value="<?php echo $google_cid[2]; ?>.<?php echo $google_cid[3]; ?>">
						<div class="col m6 produs_off_mob">
							<div class="row produs_cont_row">
								<div class="col s4 img_container">
									<a onclick="goBack()"><img src="<?php echo $imagine; ?>" /></a>
								</div>
								<div class="col s8 info_prod_txts">
									<h4 onclick="goBack()"><?php echo $produs; ?></h4>
									<p></p>
									<h3>
										<?php echo $thous_pret = number_format($pret, 0, '.', ' '); ?> <small><?php echo $credit_money; ?></small> 
										<br><span><?php echo $pret_numerar; ?></span>
									</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- sfarsitulu iceputului paginii credit -->
			<form method='post' action='' name='Form1'  enctype='multipart/form-data'> 
			<!-- Incepe completarea formularelor Step 1 -->
			<div class="container content_in_main STEP1_FORMS">
				<div class="forms_container">
					<div class="row">
						<div class="col m1 img_forms_heading">
							<img src="catalog/view/smartv3/img/suricat_logo_forms.png">
						</div>
						<div class="col m10 information_heading_forms">
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
								<div class="col m4">
									<div class="input-field">
									    <input id="tAP_CA_RegionDesc" type="text">
									    <label for="tAP_CA_RegionDesc"><?php echo $credit_regiune; ?></label>
									</div>
									<div class="input-field">
									    <input id="lAP_CA_Block" type="number">
									    <label for="lAP_CA_Block"><?php echo $credit_nr_cladirii; ?></label>
									</div>
								</div>
								<div class="col m4">
									<div class="input-field">
									    <input id="tAP_CA_City" type="text">
									    <label for="tAP_CA_City"><?php echo $credit_oras; ?></label>
									</div>
									<div class="input-field">
									    <input id="tAP_CA_AppartmentNum" type="number">
									    <label for="tAP_CA_AppartmentNum"><?php echo $credit_nr_apart; ?></label>
									</div>
								</div>
								<div class="col m4">
									<div class="input-field">
									    <input id="tAP_CA_Street" type="text">
									    <label for="tAP_CA_Street"><?php echo $credit_strada; ?></label>
									</div>
									<div class="input-field">
									    <input id="tAP_CA_Phone" type="number">
									    <label for="tAP_CA_Phone"><?php echo $credit_tel_fix; ?></label>
									</div>
								</div>
							</div>
							<h4 class="headin_forms_part"><?php echo $credit_info_munca; ?></h4>
							<div class="row">
								<div class="col m4">
									<div class="input-field">
									    <input id="tAP_CompanyName" type="text">
									    <label for="tAP_CompanyName"><?php echo $credit_den_company; ?></label>
									</div>
								</div>
								<div class="col m4">
									<div class="input-field">
									    <input id="tAP_CompanyPhone" type="number">
									    <label for="tAP_CompanyPhone"><?php echo $credit_phone_company; ?></label>
									</div>
								</div>
								<div class="col m4">
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
								<div class="col m4">
									<div class="input-field">
									    <input id="tAP_IdentityCard" required="required" type="number">
									    <label for="tAP_IdentityCard"><?php echo $credit_nr_buletin; ?></label>
									</div>
									<div class="input-field">
									    <input id="ctrlAP_BirthDate" required="required" type="text">
									    <label for="ctrlAP_BirthDate"><?php echo $credit_data_nasterii; ?></label>
									</div>
								</div>
								<div class="col m4">
									<div class="input-field">
									    <input id="ctrlAP_ICExpiryDate" required="required" type="text">
									    <label for="ctrlAP_ICExpiryDate"><?php echo $credit_data_exp; ?></label>
									</div>
									<div class="input-field">
									    <input id="tAP_UIN" required="required" type="number">
									    <label for="tAP_UIN"><?php echo $credit_cod_personal; ?></label>
									</div>
								</div>
								<div class="col m4">
									<script type="text/javascript">
										$(document).ready(function() {
											$('#file').change(function(){
											$('#file').each(function() {
												var name = this.value;
													reWin = /.*\\(.*)/;
												var fileTitle = name.replace(reWin, "$1");
												reUnix = /.*\/(.*)/;
												fileTitle = fileTitle.replace(reUnix, "$1");
											//	$('#name').html(fileTitle);
											//	$('#name').before('<div style="margin-top: -31px;margin-left: 170px;color:#00CC66">OK</div>');
										   	});
											});
											$('#file2').change(function(){
											$('#file2').each(function() {
												var name = this.value;
													reWin = /.*\\(.*)/;
												var fileTitle = name.replace(reWin, "$1");
												reUnix = /.*\/(.*)/;
												fileTitle = fileTitle.replace(reUnix, "$1");
										    //    $('#name2').html(fileTitle);
											//	$('#name2').before('<div style="margin-top: -31px;margin-left: 170px;color:#00CC66">OK</div>');		  
											});
											});
										});
									</script>
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
								<div class="col m4">
									<div class="input-field">
									    <input id="tCP_FirstName" required="required" type="text">
									    <label for="tCP_FirstName"><?php echo $credit_prenume; ?></label>
									</div>
								</div>
								<div class="col m4">
									<div class="input-field">
									    <input id="tCP_LastName" required="required" type="text">
									    <label for="tCP_LastName"><?php echo $credit_nume; ?></label>
									</div>
								</div>
								<div class="col m4">
									<div class="input-field">
									    <input id="tCP_Mobile" required="required" type="number">
									    <label for="tCP_Mobile"><?php echo $credit_tel_mob; ?></label>
									</div>
									<button type="submit" id="button-cart" class="credit-button waves-effect waves-light btn trimit_all_forms">
									<?php echo $button_credit; ?></button>
								</div>
							</div>
						</div>
						<input name='txtTo' type='hidden' id='txtTo' value='besmartmd@gmail.com' />
						<input name='txtSubject' type='hidden' id='txtSubject' value='Buletin de identitate' />
						<input name='txtFormName' type='hidden' value='Buletin de identitate' />
						<input name='txtFormEmail' type='hidden' value='besmartmd@gmail.com' />
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
						<input name="product_id" type="hidden" value="<?php echo $_POST['product_id']; ?>" />
						<input name="product_name" style="position:absolute;top:-9999px;left:-9999px;" id="tAP_product_name" type="text" value="<?php echo $produs; ?>" />
						<input name="thumb" type="hidden" value="<?php echo $imagine; ?>" />
						<input name="price" id="tAP_product_price" style="position:absolute;top:-9999px;left:-9999px;" type="text" value="<?php echo $pret; ?>" />

				</div>
			</div>
			</form>
		<!-- End Main Data for category page -->

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



<style>
.buletin-button {}
#testimonials .box-heading {font-size: 20px !important;font-family: Arial, sans-serif !important;}
#testimonials .box-heading .name {display:none !important;}
#testimonials {opacity: 0.5;}
#testimonials:hover {opacity: 1;}
.head {text-align:center;border-right: 2px solid #ccc;font-size: 16px !important; color:#000;cursor:default;}
.head2 {text-align:right;border-right: 2px solid #ccc; padding-right:25px;font-size: 14px !important; cursor:default;}
.head3 {text-align:center;border-bottom: 2px solid #ccc;font-size: 16px !important;color:#000;cursor:default;}
.head4{text-align:center;font-size: 16px !important;color:#000;cursor:default;}
.head_border {border-bottom:2px solid #ccc;font-size: 16px !important;cursor:default;}
.calc_box {background:#f1ede6; border-radius:8px;width:630px; float:left; padding:15px;cursor:default;}
.calc_box input {text-align:center;}
.check_bg {background:#fff5c1; color:#007fd4;cursor:default;}
.check_bg input {color:#007fd4 !important;cursor:default;}
</style>
<div class="container-top">
    <div class="gpc">
    	<!-- START CONTENT TOP -->
        <div class="content-top">
           
        </div>
        <!-- END CONTENT TOP -->
    </div>
</div>
<div class="container-bottom">
	<div id="product-tab2"></div>
    <div class="gpc">
    	<?php echo $column_left; ?>
        <?php echo $column_right; ?>
        <!-- START COLUMN CENTER -->
        <div class="column-center">
        <?php echo $content_top; ?>
		
<?php if (isset($_POST['imagine'])) { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/smart_root/stylesheet/credit.css" />
<form method='post' action='//www.smart.md/credit/credit.php' name='Form1'  enctype='multipart/form-data'> 
    <div id='div1' style=' WIDTH: 100%; HEIGHT: 100%; TOP: 0px; LEFT: 0px'>
        <div style='WIDTH: 100%; DISPLAY: block; HEIGHT: 94%;'>
			<div class="credit-mobile">
				<div class="details">
					<a onclick="goBack()"><img src="<?php echo $imagine; ?>" /></a>
					<div  class="produs"><a onclick="goBack()" style="color: #000;font-family:Roboto;"><?php echo $produs; ?></a></div>
					<div class="pret" style="font-family:Roboto;"><?php echo $thous_pret = number_format($pret, 0, '.', ' ');echo ' '.$credit_money; ?></div>
				</div>
				<h1 class="h1_details">Alege tipul de creditare</h1>
				<div class="mini_cerere_thanks" style="text-align: center;width: 100%;display: none;">
				  <i class="material-icons" style="color: #ffcc33;font-size: 5rem;">check_circle</i>
				  <div>
				  	<span style="font-size:1.7rem !important;">Multumim.</span><br>
				  	<span style="font-size:1.5rem !important;">Solicitarea de credit a fost expediata cu succes. </span>
				  	<hr style="width: 50%;color: #ffcc33;border: 1px solid;">
				  </div>
				  <div style="font-size:1.3rem !important;font-weight: normal;text-align: center;margin-top: 45px;">Pentru a urgenta aprobarea creditului completeaza campurile de mai jos.</div>
				  <div style="font-size: 12px;color:#666;line-height: 24px;">(dureaza doar 3 minute)</div>
				  <hr>
				</div>
			<div class="credit_details_block">
					<style type="text/css">
					@media screen and (min-width:280px) and (max-width:420px) {
					.credit-mobile {margin:0px 20px;}
					.credit-mobile h1 {font-size:18px !important;text-align:center;color:#666;margin: 15px 0 !important;float: left;}
					.details {box-shadow: 0px 0px 24px -6px;border-radius: 3px;height: 100%;float: left;opacity:1;}
					.details img {width: 50%;height: 50%;text-align: center;box-sizing: border-box;float:left;margin:15px 0;}
					.details .produs {text-align: left;font-size: 14px;font-weight: bold;margin: 35px 15px 20px 0;}
					.details .pret {color: #ffcc33;font-size: 24px;width: 100%;text-align: left;margin: 10px 0;padding-bottom: 15px;}
					.cd_block {width: 31%;margin:0 1%; box-sizing:content-box;float: left;text-align: center;}
					.cd_block_border {box-shadow: 0px 0px 6px -3px;}
					.cd_block input {text-align: center;width: 100%;font-size:14px !important;border: none; background: transparent;margin: 0px;height: auto;}
					.tip_credit{font-size:14px !important;}
					.period_credit {font-size:14px !important;}
					.cd_block_border div {border:1px solid #FBFBFB;display: flex;justify-content: center;align-content: center;flex-direction: column;height:50px;font-size:10px;}
					.period_credit {border-bottom:3px solid #ffcc33 !important;}
					.cd_block.active {opacity: 1;}
					.cd_block {opacity: 0.4;}
					#total_m {border:1px solid #ffcc33;border-radius:2px; color:#ffcc33;padding:10px 0;}
					.cd_block.active #total_m {background: #ffcc33 !important;color:#fff !important;}
					.cd_block .total_credit {border:none !important;margin-top: 15px;}
					h5.mobile-view {font-size: 18px !important;text-align: center;color: #666;border-bottom:1px solid #ffcc33;padding-bottom: 5px;}
					.shop-cart-mobile {display: none !important;}
					#total_m div {font-size:10px;}
					.tabs i {font-size: 30px;vertical-align: middle;float:left;}
					.tabs .tab a {color:#ffcc33 !important;line-height: 16px;font-size: 12px;text-align: center;padding-top: 8px;}
					.tabs {height: 50px !important;margin-top: 20px;}
					.tabs .indicator {background-color:#ffcc33;width: 50%; }
					#cerere .s12 {background: #fbfafa;}
					#telefon .s12 {}
					.tabs .active {background: #fbfafa;}
					.cererea {background: #fbfafa;}
					.tel_title {margin-top: 20px;text-align: center;}
					.credit-button.buy_one_click{background: #ffcc33;color:#000;}
					}
					@media screen and (min-width:421px) {
					#div1 {margin-top: -25px !important;}
					.credit_details_block {float:left;width:60%;}
					.credit-mobile {margin:0px 20px;float: left;}
					.credit-mobile h1 {font-size:18px !important;text-align:center;color:#666;margin: 8px 0 25px 0!important;float: left;}
					.details {width:35%;text-align: center;box-shadow: 0px 0px 18px -9px;border-radius: 3px;height: 100%;float: right;margin-top:55px;opacity:1;}
					.details img {width: 60%;height: 60%;text-align: center;box-sizing: border-box;margin:0 auto;}
					.details .produs {text-align: center;font-size: 14px;font-weight: bold;margin: 35px 0 20px 0;padding: 0 10px;}
					.details .pret {color: #ffcc33;font-size: 24px;width: 100%;text-align: center;margin: 10px 0;padding-bottom: 15px;}
					.cd_block {width: 31%;margin:0 1%; box-sizing:content-box;float: left;text-align: center;}
					.cd_block_border {box-shadow: 0px 0px 6px -3px;}
					.cd_block input {text-align: center;width: 100%;font-size:14px !important;border: none; background: transparent;}
					.tip_credit{font-size:14px !important;}
					.period_credit {font-size:14px !important;}
					.cd_block_border div {border:1px solid #FBFBFB;display: flex;justify-content: center;align-content: center;flex-direction: column;height:50px;font-size:10px;}
					.period_credit {border-bottom:3px solid #ffcc33 !important;}
					.cd_block.active {opacity: 1;}
					.cd_block {opacity: 0.4;}
					#total_m {border:1px solid #ffcc33;border-radius:2px; color:#ffcc33;padding:10px 0;}
					.cd_block.active #total_m {background: #ffcc33 !important;color:#fff !important;}
					.cd_block .total_credit {border:none !important;margin-top: 15px;}
					h5.mobile-view {font-size: 18px !important;text-align: center;color: #666;border-bottom:1px solid #ffcc33;padding-bottom: 5px;}
					.shop-cart-mobile {display: none !important;}
					#total_m div {font-size:10px;}
					.tabs i {font-size: 30px;vertical-align: middle;}
					.tabs .tab a {color:#9e9e9e;border-bottom: 2px solid #9e9e9e;}
					.tabs .tab a.active {color:#ffcc33;border-bottom: 2px solid #9e9e9e;}
					.tabs {height: 50px !important;margin-top: 45px;}
					.tabs .indicator {background-color:#ffcc33; }
					.tel_title {text-align: left;font-size: 18px;margin: 25px 0 10px 0;}
					.credit-button.buy_one_click{background: #ffcc33;color:#000;}
					h1.desktop-view{margin: 30px 0 0 0 !important;border-bottom: 1px solid #ffcc33;padding: 0 0 8px 8px;}
					.row {}
					.row .input-field {width:33% !important;}
					.row .input-field:nth-child(2n) {width:45%;margin-right: 0% !important;}
					
					}
					</style>
					
					<div class="cd_block <?php if ($_GET['credit_avans']==0) { ?>active<?php } ?>" id="cd_block1">
						<div class="cd_block_border">
							
							<?php if (isset($_GET['credit_type']) and $_GET['credit_type'] == 4) { ?>
							<div class="period_credit">4 <?php echo $credit_months; ?></div>
							<div class="avans_credit"><?php echo $avans_txt; ?>
								<input id="avans_m" name="avans" value="<?php echo number_format(ceil($pret*0), 0, ',', ' ');echo ' '.$credit_money; ?>" readonly />
							</div>
							<div class="lunar_credit"><?php echo $lunar_txt; ?>
								<input id="rata_lunara_m" name="rata_lunara" value="<?php echo number_format(ceil($pret/4), 0, ',', ' ');echo ' '.$credit_money; ?>" readonly />
							</div>
							<?php } elseif (isset($_GET['credit_type']) and $_GET['credit_type'] == 5) { ?>
							<div class="period_credit">24 <?php echo $credit_months; ?></div>
							<div class="avans_credit"><?php echo $avans_txt; ?>
								<input id="avans_m" name="avans" value="<?php echo number_format(ceil($pret*0), 0, ',', ' ');echo ' '.$credit_money; ?>" readonly />
							</div>
							<div class="lunar_credit"><?php echo $lunar_txt; ?>
								
								<input id="rata_lunara_m" name="rata_lunara" value="<?php echo number_format(ceil((((((($pret*0.0185)+($pret*0.08884879))*12)-$pret)*2)+$pret)/24), 0, ',', ' ');echo ' '.$credit_money; ?>" readonly />

							</div>
							<?php } else { ?>
							<div class="period_credit">12 <?php echo $credit_months; ?></div>
							<div class="avans_credit"><?php echo $avans_txt; ?>
								<input id="avans_m" name="avans" value="<?php echo number_format(ceil($pret*0), 0, ',', ' ');echo ' '.$credit_money; ?>" readonly />
							</div>
							
							<div class="lunar_credit"><?php echo $lunar_txt; ?>
								<input id="rata_lunara_m" name="rata_lunara" value="<?php echo number_format(ceil(ceil(ceil($pret*0.325)+$pret)/12), 0, ',', ' ');echo ' '.$credit_money; ?>" readonly />
							</div>
							<?php } ?>
						</div>
						<div class="total_credit">
							<?php if (isset($_GET['credit_type']) and $_GET['credit_type'] == 4) { ?>
							<div id="total_m">
							<div><?php echo $total_price_txt; ?></div>
							<input name="total" value="<?php echo number_format(ceil($pret), 0, ',', ' ');echo ' '.$credit_money; ?>" readonly />
							</div>
							<input type="radio" id="1" class="bg_val1" name="tip_credit" value="0%" />
							<?php } elseif (isset($_GET['credit_type']) and $_GET['credit_type'] == 5) { ?>
							<div id="total_m">
							<div><?php echo $total_price_txt; ?></div>
							<input name="total" value="<?php echo number_format(ceil((((((($pret*0.0185)+($pret*0.08884879))*12)-$pret)*2)+$pret)/24)*24, 0, ',', ' ');echo ' '.$credit_money; ?>" readonly />
							</div>
							<input type="radio" id="1" class="bg_val5" name="tip_credit" value="40%" />
							<?php } else { ?>
							<div id="total_m">
							<div><?php echo $total_price_txt; ?></div>
							<input name="total" value="<?php echo number_format(ceil(ceil(ceil($pret*0.325)+$pret)/12)*12, 0, ',', ' ');echo ' '.$credit_money; ?>" readonly />
							</div>
							<input type="radio" id="1" class="bg_val2" name="tip_credit" value="Retail" />
							<?php } ?>
						</div>
					</div>
					<div class="cd_block <?php if ($_GET['credit_avans']>0) { ?>active<?php } ?>" id="cd_block2">
						<div class="cd_block_border">
							<?php if (isset($_GET['credit_type']) and $_GET['credit_type'] == 4) { ?>
							<div class="period_credit">24 <?php echo $credit_months; ?></div>
							<div class="avans_credit"><?php echo $avans_txt; ?>
								<input id="avans_m" name="avans" value="<?php echo number_format(ceil($pret*0), 0, ',', ' ');echo ' '.$credit_money; ?>" readonly />
							</div>
							<div class="lunar_credit"><?php echo $lunar_txt; ?>
								
								<input id="rata_lunara_m" name="rata_lunara" value="<?php echo number_format(ceil((((((($pret*0.0185)+($pret*0.08884879))*12)-$pret)*2)+$pret)/24), 0, ',', ' ');echo ' '.$credit_money; ?>" readonly />
							</div>
							<?php } else { ?>
							<div class="period_credit active">6 <?php echo $credit_months; ?></div>
							<div class="avans_credit active"><?php echo $avans_txt; ?>
								<input id="avans_m" name="avans" value="<?php echo number_format(ceil($pret*0.11), 0, ',', ' ');echo ' '.$credit_money; ?>" readonly />
							</div>
							<div class="lunar_credit active"><?php echo $lunar_txt; ?>
								<input id="rata_lunara_m" name="rata_lunara" value="<?php echo number_format(ceil($pret/6), 0, ',', ' ');echo ' '.$credit_money; ?>" readonly />
							</div>
							<?php } ?>
						</div>
						<div class="total_credit">
						<?php if (isset($_GET['credit_type']) and $_GET['credit_type'] == 4) { ?>
							<div id="total_m">
							<div><?php echo $total_price_txt; ?></div>
							<input name="total" value="<?php echo number_format(ceil((((((($pret*0.0185)+($pret*0.08884879))*12)-$pret)*2)+$pret)/24)*24, 0, ',', ' ');echo ' '.$credit_money; ?>" readonly />
							</div>
							<input type="radio" id="1" class="bg_val5" name="tip_credit" value="40%" />
							<?php } else { ?>
							<div id="total_m">
							<div><?php echo $total_price_txt; ?></div>
							<input name="total" value="<?php echo number_format(ceil(($pret*0.11)+$pret), 0, ',', ' ');echo ' '.$credit_money; ?>" readonly />
							</div>
							<input type="radio" id="2" class="bg_val3" name="tip_credit" checked="checked" value="11%" />
							<?php } ?>
						</div>
					</div>
					<div class="cd_block" id="cd_block3">
						<div class="cd_block_border">
							<div class="period_credit">12 <?php echo $credit_months; ?></div>
							<div class="avans_credit"><?php echo $avans_txt; ?>
								<input id="avans_m" name="avans" value="<?php echo number_format(ceil($pret*0.18), 0, ',', ' ');echo ' '.$credit_money; ?>" readonly />
							</div>
							<div class="lunar_credit"><?php echo $lunar_txt; ?>
								<input id="rata_lunara_m" name="rata_lunara" value="<?php echo number_format(ceil($pret/12), 0, ',', ' ');echo ' '.$credit_money; ?>" readonly />
							</div>
						</div>
						<div class="total_credit">
							<div id="total_m">
							<div><?php echo $total_price_txt; ?></div>
							<input name="total" id="" value="<?php echo number_format(ceil(($pret*0.18)+$pret), 0, ',', ' ');echo ' '.$credit_money; ?>" readonly />
							</div>
							<input type="radio" id="3" class="bg_val4" name="tip_credit" value="18%" />
						</div>
					</div>
					<script>
					$('.cd_block').click(function() {
					    $(this).find('input:radio')[0].checked = true;
					    $('.active').toggleClass('active');
					    $(this).toggleClass('active');
					});
					</script>
					<script type="text/javascript">
					$(document).ready(function() {
							$("input[type=radio]").click(function(){
									
								if(document.getElementsByClassName('bg_val1').checked) {
										$('#tip_credit').val('8%');
										$('#numar_ratelor').val('4 luni');
									}else if(document.getElementById('bg_val3').checked) {
										$('#tip_credit').val('11%');
										$('#numar_ratelor').val('6 luni');		
									}else if(document.getElementById('bg_val4').checked) {
										$('#tip_credit').val('18%');
										$('#c').val('12 luni');					
									}
							});
						});
					</script>
				<div class="row" id="telefon">
				    <div class="col s12">
				      <div class="row">
				        <div class="tel_title"><?php echo $cerere_tel_title; ?></div>
				      	<div class="input-field col s6">
						  <input name='tAP_FirstName' type='text' class="validate" maxlength='30' id='tAP_FirstName' />
				          <label for="tAP_FirstName"><?php echo $credit_nume; ?> <?php echo $credit_prenume; ?></label>
				        </div>
						<div class="input-field col s6">
				          <input name='tAP_CA_Mobile' type='text' class="validate" maxlength='30' id='tAP_CA_Mobile' />
				          <label for="tAP_CA_Mobile"><?php echo $credit_tel_mob; ?></label>
				        </div>
				        <div onclick="add_contact();" class="btn waves-effect waves-light btn-large button buy_one_click" style="float:right;font-size:16px;"><?php echo $button_credit; ?>
							<i class="material-icons right">send</i>
						</div>

						<input name="product_id" type="text" id="product_id" style="position:absolute;top:-9999px;left:-9999px;" value="<?php echo $_POST['product_id']; ?>" />
						<input name="product_name" style="position:absolute;top:-9999px;left:-9999px;" id="tAP_product_name" type="text" value="<?php echo $produs; ?>" />
						<input name="thumb" type="hidden" value="<?php echo $imagine; ?>" />
						<input name="price" id="tAP_product_price" style="position:absolute;top:-9999px;left:-9999px;" type="text" value="<?php echo $pret; ?>" />
						<?php $google_cid=explode(".",$_COOKIE['_ga']); ?>
						<input type="text" style="position:absolute;top:-9999px;left:-9999px;" name="ga" id="ga" value="<?php echo $google_cid[2]; ?>.<?php echo $google_cid[3]; ?>">
						<script type="text/javascript"><!--
						$( document ).ready(function() {
						$('#ctrlAP_ICExpiryDate').pickadate({selectMonths: true,selectYears: 30});
						});		
							function add_contact() {
								$(".credit_details_block").hide();
								$(".details").hide();
								$(".h1_details").hide();
								$(".inputs_cerere").show();
								$(".mini_cerere_thanks").show();
								//amo
						          var cname = {
						            productname: $("#tAP_product_name").val(),
						            price:$("#tAP_product_price").val(),
						            name: $("#tAP_FirstName").val(),
						            phone:$("#tAP_CA_Mobile").val(),
						            status_id: '10204830',
						            email: 'credit@smart.md',
						            ga: $("#ga").val(),
						            web: 'Solicitare Credit',
						            clientname: $("#tAP_FirstName").val(),
						            clientemail:'credit@smart.md',
						            productlink: $("#product_id").val(),
						            ga:$("#ga").val()
						        }

						        $.ajax({
						            url: '//www.smart.md/amocrm/1/handler.php',
						            type: 'post',
						            dataType: 'json',
						            success: function (data) {
						            },
						            data: cname
						        });
							}

						</script>
				      </div>
				    </div>
				</div>
			</div>
				<!--Block Inputs-->
				<div class="row inputs_cerere" style="display: none;">
				    <div class="col s12">
				      <div class="row">
						<h5><?php echo $date_personale; ?></h5>	
						<div class="input-field col s6">
						  <input name='tAP_IdentityCard' type='text' class="validate" maxlength='30' id='tAP_IdentityCard' />
				          <label for="tAP_IdentityCard"><?php echo $credit_nr_buletin; ?></label>
				        </div>
						<div class="input-field col s6">
						  <input name='ctrlAP_ICExpiryDate' type="date" class="datepicker" maxlength='30' id='ctrlAP_ICExpiryDate' />
				          <label for="ctrlAP_ICExpiryDate"><?php echo $credit_data_exp; ?></label>
				        </div>
						<div class="input-field col s6">
						  <input name='tAP_UIN' type='text' class="validate" maxlength='30' id='tAP_UIN' />
				          <label for="tAP_UIN"><?php echo $credit_cod_personal; ?></label>
				        </div>
						<div class="input-field col s6">
						  <input name='ctrlAP_BirthDate' type="date" class="datepicker" maxlength='30' id='ctrlAP_BirthDate' />
				          <label for="ctrlAP_BirthDate"><?php echo $credit_data_nasterii; ?></label>
				        </div>
						<div class="input-field col s6">
						  <input name='tAP_CA_RegionDesc' type='text' class="validate" maxlength='30' id='tAP_CA_RegionDesc' />
				          <label for="tAP_CA_RegionDesc"><?php echo $credit_regiune; ?></label>
				        </div>
						<div class="input-field col s6">
						  <input name='tAP_CA_City' type='text' class="validate" maxlength='30' id='tAP_CA_City' />
				          <label for="tAP_CA_City"><?php echo $credit_oras; ?></label>
				        </div>
						<div class="input-field col s6">
						  <input name='tAP_CA_Street' type='text' class="validate" maxlength='30' id='tAP_CA_Street' />
				          <label for="tAP_CA_Street"><?php echo $credit_strada; ?></label>
				        </div>
						<div class="input-field col s6">
						  <input name='lAP_CA_Block' type='text' class="validate" maxlength='30' id='lAP_CA_Block' />
				          <label for="lAP_CA_Block"><?php echo $credit_nr_cladirii; ?></label>
				        </div>
						<div class="input-field col s6">
						  <input name='tAP_CA_AppartmentNum' type='text' class="validate" maxlength='30' id='tAP_CA_AppartmentNum' />
				          <label for="tAP_CA_AppartmentNum"><?php echo $credit_nr_apart; ?></label>
				        </div>
						<div class="input-field col s6">
						  <input name='tAP_CA_Phone' type='text' class="validate" maxlength='30' id='tAP_CA_Phone' />
				          <label for="tAP_CA_Phone"><?php echo $credit_tel_fix; ?></label>
				        </div>
						
					  </div>
					</div>
					<div class="col s12">
						<div class="row">
							<h5><?php echo $credit_persoana_conact; ?></h5>
					        <div class="input-field col s6">
					          <input name='tCP_FirstName' type='text' class="validate" maxlength='30' id='tCP_FirstName' />
					          <label for="tCP_FirstName"><?php echo $credit_prenume; ?></label>
					        </div>
							<div class="input-field col s6">
					          <input name='tCP_LastName' type='text' class="validate" maxlength='30' id='tCP_LastName' />
					          <label for="tCP_LastName"><?php echo $credit_nume; ?></label>
					        </div>
							<div class="input-field col s6">
					          <input name='tCP_Phone' type='text' class="validate" maxlength='30' id='tCP_Phone' />
					          <label for="tCP_Phone"><?php echo $credit_tel_fix; ?></label>
					        </div>
							<div class="input-field col s6">
					          <input name='tCP_Mobile' type='text' class="validate" maxlength='30' id='tCP_Mobile' />
					          <label for="tCP_Mobile"><?php echo $credit_tel_mob; ?></label>
					        </div>
						</div>
					</div>
					<div class="col s12">
						<div class="row">
							<h5><?php echo $credit_info_munca; ?></h5>
					        <div class="input-field col s6">
					          <input name='tAP_CompanyName' type='text' class="validate" maxlength='30' id='tAP_CompanyName' />
					          <label for="tAP_CompanyName"><?php echo $credit_den_company; ?></label>
					        </div>
							<div class="input-field col s6">
					          <input name='tAP_CompanyPhone' type='text' class="validate" maxlength='30' id='tAP_CompanyPhone' />
					          <label for="tAP_CompanyPhone"><?php echo $credit_phone_company; ?></label>
					        </div>
					    </div>
					</div>



		<input name='txtTo' type='hidden' id='txtTo' value='besmartmd@gmail.com' />
		<input name='txtSubject' type='hidden' id='txtSubject' value='Buletin de identitate' />
		<input name='txtFormName' type='hidden' value='Buletin de identitate' />
		<input name='txtFormEmail' type='hidden' value='besmartmd@gmail.com' />
		<script type="text/javascript">
		$(document).ready(function() {
			$('#file').change(function(){
			$('#file').each(function() {
				var name = this.value;
					reWin = /.*\\(.*)/;
				var fileTitle = name.replace(reWin, "$1");
				reUnix = /.*\/(.*)/;
				fileTitle = fileTitle.replace(reUnix, "$1");
			//	$('#name').html(fileTitle);
			//	$('#name').before('<div style="margin-top: -31px;margin-left: 170px;color:#00CC66">OK</div>');
		   	});
			});
			$('#file2').change(function(){
			$('#file2').each(function() {
				var name = this.value;
					reWin = /.*\\(.*)/;
				var fileTitle = name.replace(reWin, "$1");
				reUnix = /.*\/(.*)/;
				fileTitle = fileTitle.replace(reUnix, "$1");
		    //    $('#name2').html(fileTitle);
			//	$('#name2').before('<div style="margin-top: -31px;margin-left: 170px;color:#00CC66">OK</div>');		  
			});
			});
		});
		</script>
					<div class="col s12">
						<div class="row">
						<h5><?php echo $buletin; ?></h5>
						<div class="file-field input-field" style="float:left;margin-right:15px !important;">
					      <div class="btn">
					        <span>Față</span>
					        <input type="file" id="file" name="fileAttach">
					      </div>
					      <div class="file-path-wrapper">
					        <input class="file-path validate valid" id="name" type="text">
					      </div>
					    </div>
					    <div class="file-field input-field" style="float:left;">
					      <div class="btn">
					        <span>Verso</span>
					        <input type="file" id="file2" name="fileAttach2">
					      </div>
					      <div class="file-path-wrapper">
					        <input class="file-path validate valid" id="name2" type="text">
					      </div>
					    </div>
						</div>
						</div>
						
					<div class="col s12">	
						<div class="row">
							<button class="btn waves-effect waves-light btn-large button credit-button" style="float:right" type="submit" name="action" id="button-cart"><?php echo $button_credit; ?>
								<i class="material-icons right">send</i>
							</button>
						</div>
					</div>
					</div>

				</div>
                  
			
				<!--.Block inputs -->			
			</div>
		</div>


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
<!-- end list js tabs -->
<input name="product_id" type="hidden" value="<?php echo $_POST['product_id']; ?>" />
<input name="product_name" style="position:absolute;top:-9999px;left:-9999px;" id="tAP_product_name" type="text" value="<?php echo $produs; ?>" />
<input name="thumb" type="hidden" value="<?php echo $imagine; ?>" />
<input name="price" id="tAP_product_price" style="position:absolute;top:-9999px;left:-9999px;" type="text" value="<?php echo $pret; ?>" />
						     
</form>  

<?php } else { ?>
<div style="font-size:24px; font-weight:bold;min-height: 450px;"><?php echo $text_credit_empty; ?></div>
<?php } ?>

        <!-- END COLUMN CENTER -->
    	<!-- START CONTENT BOTTOM -->
        <div class="content-bottom">
            <?php echo $content_bottom; ?>
        </div>
        <!-- END CONTENT BOTTOM -->
    </div>
</div>
</div>
<?php echo $footer; ?>  