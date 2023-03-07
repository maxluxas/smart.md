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
<section id="credit_section">
<form>
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
								    <input name='tAP_FirstName' type='text' class="validate" maxlength='30' id='tAP_FirstName'>
								    <label for="tAP_FirstName"><?php echo $credit_nume; ?> <?php echo $credit_prenume; ?></label>
								</div>
								<!-- Telefon Input -->
								<div class="input-field" style="width: 100% !important;">
								    <input name='tAP_CA_Mobile' type='number' class="validate" maxlength='30' id='tAP_CA_Mobile'>
								    <label for="tAP_CA_Mobile"><?php echo $credit_tel_mob; ?></label>
								</div>
								<div class="phone_error" style="display:none;"><?php echo $error_completare; ?></div>
								<!-- <a onclick="add_contact();" class="waves-effect waves-light btn timit_form_credit buy_one_click"> -->
								<a class="waves-effect waves-light btn timit_form_credit buy_one_click">
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
									<div class="test" style="display:none;"><input type="text" id="tAP_CA_Mobiles"><button class="test_button">test</button></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- sfarsitulu iceputului paginii credit -->
			 
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
									<!-- <div class="input-field">
									    <input id="tAP_CA_Phone" name="tAP_CA_Mobile" type="number">
									    <label for="tAP_CA_Phone"><?php echo $credit_tel_fix; ?></label>
									</div> -->
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
									<a class="credit-button waves-effect waves-light btn trimit_all_forms">
									<?php echo $button_credit; ?></a>
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
				// m_data.append( 'file_attach', $('input[name=file_attach]')[0].files[0]);
	  			$.ajax({
	              url: '//www.smart.md/credit/credit.php',
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
					    window.location.href = "//www.smart.md/index.php?route=checkout/success";														}
					
	              }
	            });
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


<?php echo $footer; ?>  