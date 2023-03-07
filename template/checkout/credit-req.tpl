<?php echo $header; ?>
<style>
.buletin-button {
text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
color: #ffffff;
background-color: #8d8d8d;
background-image: -moz-linear-gradient(top, #8d8d8d, #626262);
background-image: -ms-linear-gradient(top, #8d8d8d, #626262);
background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#8d8d8d), to(#626262));
background-image: -webkit-linear-gradient(top, #8d8d8d, #626262);
background-image: -o-linear-gradient(top, #8d8d8d, #626262);
background-image: linear-gradient(top, #8d8d8d, #626262);
background-repeat: repeat-x;
filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#8d8d8d', endColorstr='#626262', GradientType=0);
border-color: #8d8d8d #8d8d8d #626262;
border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
text-align: center;
}
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
<form method='post' action='//smart.md/credit/credit.php' name='Form1'  enctype='multipart/form-data'> 
    <div id='div1' style=' WIDTH: 100%; HEIGHT: 100%; TOP: 0px; LEFT: 0px'>
        <div style='WIDTH: 100%; DISPLAY: block; HEIGHT: 94%;'>

			<h1 style="font-size:20px"><?php echo $credit_detail; ?></h1>
			


<div style="background:#f1ede6; border-radius:8px;">
<table width="100%">
	<tr style="height:40px;">
    	<td rowspan="6" style="width: 200px;"><img src="<?php echo $imagine; ?>" style="width: 160px;margin: 30px 30px 0px 30px; height:160px;" />
            	<div style="text-align: center;font-size: 14px;width: 160px;padding-left: 30px;font-weight: bold;"><?php echo $produs; ?></div></td>
        <td style="float:right; margin-right:10px;margin-top: 10px;"><?php echo $tip_credit; ?></td>
        <td><select id="credit_type" onChange="selectCreditType();">
			<?php if (isset($_GET['credit_type']) and $_GET['credit_type'] == 2) { ?>
				<option value="2" selected>15 %</option>
			<?php } ?>
			<?php if (isset($_GET['credit_type']) and $_GET['credit_type'] == 1) { ?>
        	<option value="1" selected>0 %</option>
			<?php } ?>
            <option value="3">Retail</option>
            </select>
			<input type="hidden" id="tip_credit" name="tip_credit" value="Retail" />
			<input type="hidden" name="produs" value="<?php echo $produs; ?>" />
            <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
			<input type="hidden" name="pret" value="<?php echo $pret;echo ' '.$credit_money; ?>" />
			<input type="hidden" name="numar_ratelor" id="numar_ratelor" value="12 luni" />
            
            

                  
                  
			</td>
        <td><?php echo $tip_credit_txt; ?></td>
    </tr>
    <tr style="height:40px;">
    	<td style="float:right; margin-right:10px;margin-top: 10px;"><?php echo $period; ?></td>
        <td id="credit_period">
			<select id="credit_period_select" onChange="selectCreditPeriod();">
				<option value="1">6 <?php echo $credit_months; ?></option>
				<option value="2" selected>12 <?php echo $credit_months; ?></option>
			</select>
		</td>
		<td></td>
    </tr>
    <tr style="height:40px;">
    	<td style="float:right; margin-right:10px;margin-top: 10px;"><?php echo $avans_txt; ?></td>
        <td>
			<input id="avans" name="avans" value="<?php echo 0;echo ' '.$credit_money; ?>" style="border: none; background: transparent;" readonly />
			<!--span id="avans_retail"><?php echo 0;echo ' '.$credit_money; ?></span-->
		</td>
        <td></td>
    </tr>
    <tr style="height:40px;">
    	<td style="float:right; margin-right:10px;margin-top: 10px;"><?php echo $lunar_txt; ?></td>
        <td>
			<input id="rata_lunara" name="rata_lunara" style="border: none; background: transparent;" value="<?php echo ceil(($pret*0.0185)+($pret*0.0888487863949254));echo ' '.$credit_money; ?>" readonly />
		</td>
        <td></td>
    </tr>
    <tr style="height:40px;">
    	<td style="float:right; margin-right:10px;margin-top: 10px;"><?php echo $total_price_txt; ?></td>
        <td style="width: 200px;">
			<input name="total" id="total" style="border: none; background: transparent;" value="<?php echo ceil(($pret*0.0185)+($pret*0.0888487863949254))*12;echo ' '.$credit_money; ?>" readonly />
		</td>
        <td style="width: 285px;"></td>
    </tr>
     <tr style="height:40px;">
        <td style="float:right; margin-right:10px;margin-top: 10px;"><?php echo $first_date_txt; ?></td>
        <td><input required name='ctrlPaymentFirstDate' style="width:90px;" type='text' size='12' id='ctrlPaymentFirstDate_txtDate' placeholder="<?php echo $credit_zzllaa; ?>" title='Data primei rate - data când puteți incepe achitarea primei rate.
                Aveți la dispoziție 30 de zile de la data solicitării creditului.' onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" /></td>
        <td><?php echo $first_date_descr; ?></td>
    </tr>
    <tr style="height:15px;">
    	<td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    
</table>
</div>
<br />       

<table width="100%">
  <tr>
	<td colspan="2">
        
        <h1 style="font-size:20px"><?php echo $buletin; ?></h1>
        
	</td>
  </tr>
  <tr>
	<td width="52%" style="vertical-align: top;">
		<div style="text-align:left;"><?php echo $buletin_txt; ?></div> 
	</td>
	<td style="vertical-align: top;">
		<div id='ctrlButtonToolbar_ButtonsDIV' style='OVERFLOW:hidden;VISIBILITY:visible;DISPLAY:block;' name='ButtonsDIV'>
	
					
		<input type='hidden' name='ctrlButtonToolbar:btnContinueLaterAdd' value='Continuati mai tirziu' onclick='if (typeof(Page_ClientValidate) == 'function') Page_ClientValidate(); ' language='javascript' id='ctrlButtonToolbar_btnContinueLaterAdd' class='CommandButton' style='' />
		
		<input type='hidden' name='ctrlButtonToolbar:btnInsert' value='Salvati' onclick='if (typeof(Page_ClientValidate) == 'function') Page_ClientValidate(); ' language='javascript' id='ctrlButtonToolbar_btnInsert' class='CommandButton' style='' />


	<input name='txtTo' type='hidden' id='txtTo' value='cohanovka@yandex.ru' />
	<input name='txtSubject' type='hidden' id='txtSubject' value='Buletin de identitate' />
		<input name='txtFormName' type='hidden' value='Buletin de identitate' />
		<input name='txtFormEmail' type='hidden' value='cohanovka@yandex.ru' />
		
	
<script type="text/javascript">
$(document).ready(function() {
	<?php if (isset($_GET['credit_type']) and $_GET['credit_type'] == 1) { ?>	
				$('#credit_period').html('<span>6 <?php echo $credit_months; ?></span>');
				$('#avans').val('<?php echo ceil($pret*0.25);echo ' '.$credit_money; ?>');
				$('#total').val('<?php echo $pret; echo ' '.$credit_money; ?>');
				$('#tip_credit').val('0 %');
				$('#rata_lunara').val('<?php echo ceil(($pret-($pret*0.25))/6);echo ' '.$credit_money; ?>');
				$('#numar_ratelor').val('6 luni');
		<?php } ?>		

		<?php if (isset($_GET['credit_type']) and $_GET['credit_type'] == 2) { ?>
				$('#credit_period').html('<span>6 <?php echo $credit_months; ?></option></span>');							
				$('#avans').val('<?php echo ceil($pret*0.15);echo ' '.$credit_money; ?>');
				$('#total').val('<?php echo ceil($pret*1.15);echo ' '.$credit_money; ?>');
				$('#tip_credit').val('15%');
				$('#rata_lunara').val('<?php echo ceil(($pret/6));echo ' '.$credit_money; ?>');			
		<?php } ?>		
$('#file').change(function()
{
	$('#file').each(function() {
							var name = this.value;
  							reWin = /.*\\(.*)/;
							var fileTitle = name.replace(reWin, "$1");
							reUnix = /.*\/(.*)/;
							fileTitle = fileTitle.replace(reUnix, "$1");
          $('#name').html(fileTitle);
		  $('#name').before('<div style="margin-top: -31px;margin-left: 170px;color:#00CC66">OK</div>');
   });
				});
$('#file2').change(function()
{
	$('#file2').each(function() {
							var name = this.value;
  							reWin = /.*\\(.*)/;
							var fileTitle = name.replace(reWin, "$1");
							reUnix = /.*\/(.*)/;
							fileTitle = fileTitle.replace(reUnix, "$1");
          $('#name2').html(fileTitle);
		  $('#name2').before('<div style="margin-top: -31px;margin-left: 170px;color:#00CC66">OK</div>');
		  
   });
				});
				});
				
</script>

<div style="width: 330px;margin-left: 20px;">
<div style="width: 130px;font-size: 16px;font-weight: bold;height: 28px;padding-top: 8px;border-radius: 4px;" class="button buletin-button"><?php echo $upload_button; ?></div>
          <input id="file" required style="margin-top: -65px;-moz-opacity: 0;filter: alpha(opacity=0);opacity: 0;height: 65px; cursor:pointer" name='fileAttach' class="button buletin-button" type="file" />
          <div id="name" style="margin-top: -21px;margin-left: 203px;"></div>
</div>          
        <br />
<div style="width: 330px;margin-left: 20px;">
<div style="margin-top: 7px;width: 130px;font-size: 16px;font-weight: bold;height: 28px;padding-top: 8px;border-radius: 4px;" class="button buletin-button"><?php echo $upload_button; ?></div>        
          <input id="file2" style="margin-top: -44px;-moz-opacity: 0;filter: alpha(opacity=0);opacity: 0;height: 46px; cursor:pointer" name='fileAttach2' class="button buletin-button" type='file' />
          <div id="name2" style="margin-top: -21px;margin-left: 203px;"></div>
</div>          
	<input type='hidden' id='divHeight' name='divHeight' value='5%' /> <input type='hidden' id='btnWidth' name='btnWidth' value='70%' />
		<span style="margin-left:20px;"><?php echo $upload_txt; ?></span>
        </div>                               
        
        </td>     
  </tr>
  <tr>
  		<td colspan="2" style="border-bottom:1px solid #ccc; height:15px;">
        
    	</td>
  </tr>
</table>
<br />					

<table width='100%' style="border-bottom: 1px solid #ccc;">		
	<tr>
		<td vAlign='top' align='left' width='49%'>
			<table cellSpacing='0' cellPadding='0' width='100%' border='0'>
			<!-- Personal Information //-->
				<tr>
					<th>
					<h1><?php echo $date_personale; ?></h1>											
					</th>
                    <th>
					</th>
                </tr>
				<tr>
					<td noWrap style="width:56%"><span id='lAP_FirstName'><?php echo $credit_prenume; ?></span></td>
					<td width='100%'><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tAP_FirstName' type='text' maxlength='30' id='tAP_FirstName' /></td>
				</tr>
				<tr>
					<td noWrap style=""><span id='lAP_LastName'><?php echo $credit_nume; ?></span></td>
					<td><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tAP_LastName' type='text' maxlength='30' id='tAP_LastName' /></td>
				</tr>
				<tr>
					<td noWrap style=""><span id='lAP_FatherName'><?php echo $credit_patronimic; ?></span></td>
					<td><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tAP_FatherName' type='text' maxlength='30' id='tAP_FatherName' /></td>
				</tr>
				<tr>
					<td noWrap style=""><span id='lAP_SEX'><?php echo $credit_gen; ?></span></td>
					<td>
                    <select required name='sAP_SEX' id='sAP_SEX' onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };">
                    <option value=''></option>
                    <option value='Feminin'><?php echo $credit_feminin; ?></option>
                    <option value='Masculin'><?php echo $credit_masculin; ?></option>
					</select>
                    </td>
				</tr>
				<tr>
					<td noWrap style=""><span id='lAP_Nationality'><?php echo $credit_nationalitatea; ?></span></td>
					<td>
                    <input required name='sAP_Nationality' type='text' value='MDA' style="width: 180px;height: 26px;background: #fffcce;border: 1px solid #ffcc33; margin: 0;padding: 0;border-radius:5px 5px 5px 5px;display: block!important;float: left;margin-top: 5px;padding-left: 5px;" id='sAP_Nationality' class='LOV' readonly />
                    </td>
				</tr>
				<tr>
					<td noWrap style=""><span class="credit-fields" id='lAP_IdentityCard'><?php echo $credit_nr_buletin; ?></span></td>
					<td>
					<input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tAP_IdentityCard' type='text' maxlength='9' id='tAP_IdentityCard' />
					</td>
				</tr>
				<tr>
					<td noWrap style=""><span class="credit-fields" id='lAP_ICExpiryDate'><?php echo $credit_data_exp; ?></span></td>
					<td class='Date'>
					<input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='ctrlAP_ICExpiryDate' type='text' size='12' id='ctrlAP_ICExpiryDate_txtDate' placeholder="<?php echo $credit_data_exp_val; ?>" title='<?php echo $credit_data_exp_val; ?>' style='' />
					</td>
				</tr>
				<tr>
					<td noWrap style=""><span id='lAP_UIN'><?php echo $credit_cod_personal; ?></span></td>
					<td><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tAP_UIN' type='text' maxlength='13' id='tAP_UIN' />
					</td>
				</tr>
				<tr>
					<td noWrap style=""><span id='lAP_Birth'><?php echo $credit_data_nasterii; ?></span></td>
					<td class='Date'>
					<input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='ctrlAP_BirthDate' type='text' size='12' id='ctrlAP_BirthDate_txtDate' placeholder="<?php echo $credit_zzllaa; ?>" title='<?php echo $credit_zzllaa; ?>' style='' />
					</td>
				</tr>
				<tr>
					<td noWrap style=""><span id='lAP_MARRITAL_STATUS'><?php echo $credit_casatorit; ?></span></td>
					<td>
                    <select required name='sAP_MARRITAL_STATUS' id='sAP_MARRITAL_STATUS' onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };">
                    <option value=''></option>
                    <option value='celibatar(a)'><?php echo $credit_casatorit_celib; ?></option>
                    <option value='casatorit(a)'><?php echo $credit_casatorit_casat; ?></option>
                    <option value='divortat(a)'><?php echo $credit_casatorit_divor; ?></option>
                    <option value='vaduv(a)'><?php echo $credit_casatorit_vaduv; ?></option>
					</select>
                    </td>
				</tr>
				<TR>
					<td colspan="2">&nbsp;</td> </TR>
                <TR>
                  	<td colspan="2">&nbsp;</td> 
				</TR>
                <TR>
                  	<td colspan="2" style="border-bottom:1px solid #ccc;">&nbsp;</td> 
				</TR>
                <TR>
                  	<td colspan="2">&nbsp;</td> 
				</TR>
              
<!-- Address Information //-->
				<tr>
					<td colspan="2">
<h1><?php echo $credit_adresa_domiciliu; ?></h1>
					</td>
                    
                </tr>
									<tr>
										<td style="" nowrap=""><span id="lAP_CA_Country"><?php echo $credit_tara; ?></span></td>
									  <td><input required name="tAP_CA_Country" type="text" value="10005" id="tAP_CA_Country" style="visibility:hidden; position:absolute;" /><input name="tAP_CA_CountryDesc" readonly type="text" value="MOLDOVA"  id="tAP_CA_CountryDesc" style="background: #fffcce;border: 1px solid #ffcc33;" class="LOV" /></td>
									</tr>
									<tr>
										<td style="" nowrap=""><span id="lAP_CA_Region"><?php echo $credit_regiune; ?></span></td>
										<td><input required name="tAP_CA_Region" type="text" id="tAP_CA_Region" style="visibility:hidden; position:absolute;" /><input onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name="tAP_CA_RegionDesc" type="text"  id="tAP_CA_RegionDesc" class="LOV" /></td>
									</tr>
									<tr>
										<td style="" nowrap=""><span id="lAP_CA_City"><?php echo $credit_oras; ?></span></td>
									  <td><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name="tAP_CA_City" type="text" maxlength="30" id="tAP_CA_City" class="LOV" /></td>
									</tr>
									<tr>
										<td style="" nowrap=""><span id="lAP_CA_Street"><?php echo $credit_strada; ?></span></td>
										<td><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name="tAP_CA_Street" type="text" maxlength="100" id="tAP_CA_Street" /></td>
									</tr>
									<tr>
										<td style="" nowrap=""><span id="lAP_CA_Block"><?php echo $credit_nr_cladirii; ?></span></td>
										<td><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name="tAP_CA_Block" type="text" maxlength="10" id="tAP_CA_Block" /></td>
									</tr>
									<tr>
										<td style="" nowrap=""><span id="lAP_CA_AppartmentNum"><?php echo $credit_nr_apart; ?></span></td>
										<td><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name="tAP_CA_AppartmentNum" type="text" maxlength="10" id="tAP_CA_AppartmentNum" /></td>
									</tr>
									<tr>
										<td style="" nowrap=""><span id="lAP_CA_Phone"><?php echo $credit_tel_fix; ?></span></td>
										<td><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name="tAP_CA_Phone" type="text" maxlength="15" id="tAP_CA_Phone" /></td>
									</tr>
									<tr>
										<td style="" nowrap=""><span id="lAP_CA_Mobile"><?php echo $credit_tel_mob; ?></span></td>
										<td><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name="tAP_CA_Mobile" type="text" maxlength="15" id="tAP_CA_Mobile" /></td>
									</tr>
									<tr>
										<td style="" nowrap=""><span id="lAP_CA_email"><?php echo $credit_email; ?></span></td>
										<td><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name="tAP_CA_email" type="text" maxlength="30" id="tAP_CA_email" /></td>
									</tr>
									<tr>
										<td style="" nowrap=""><span id="lAP_CA_CurYearAddress"><?php echo $credit_ani_adresa; ?></span></td>
										<td><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name="tAP_CA_CurYearAddress" type="text" maxlength="3" id="tAP_CA_CurYearAddress" class="Num" /></td>
									</tr>
									<tr>
										<td style=""><span id="lAP_CA_HomeOwnership"><?php echo $credit_loc_propr; ?></span></td>
										<td><select required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name="sAP_CA_HomeOwnership" id="sAP_CA_HomeOwnership">
	<option value=""></option>
    <option value="<?php echo $credit_da; ?>"><?php echo $credit_da; ?></option>
	<option value="<?php echo $credit_da_mostenire; ?>"><?php echo $credit_da_mostenire; ?></option>
	<option value="<?php echo $credit_nu_inch; ?>"><?php echo $credit_nu_inch; ?></option>
	<option value="<?php echo $credit_nu_nu; ?>"><?php echo $credit_nu_nu; ?></option>

</select></td>
									</tr>
									<!--Billing Address //-->
									<TR>
										<td colspan="2">&nbsp;</td> 
                                    </TR>
                                    <TR>
                                        	<td colspan="2" style="border-bottom: 1px solid #ccc;">&nbsp;</td> 
									</TR>
                                    <TR>
                                        	<td colspan="2">&nbsp;</td> 
									</TR>
 <tr>								<!-- Job information //-->
		<td colSpan='2'>							

<h1><?php echo $credit_info_munca; ?></h1>

</td></tr>
									<tr>
										<td noWrap style=""><span id='lAP_JO_Company'><?php echo $credit_den_company; ?></span></td>
										<td width='100%'><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tAP_JO_Company' type='text' maxlength='30' id='tAP_JO_Company' /></td>
									</tr>
									<tr>
										<td style="">
											<span id='lAP_JOB_FIELD_ACTIVITY'><?php echo $credit_dom_activitate; ?></span></td>
										<td>
											<select required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='sAP_JOB_FIELD_ACTIVITY' id='sAP_JOB_FIELD_ACTIVITY'>
    <option value=''></option>                                        
	<option value='Public - Servicii financiare'><?php echo $credit_pub_fin; ?></option>
	<option value='Public - Proiecte straine'><?php echo $credit_pub_pro; ?></option>
	<option value='Public - Notar'><?php echo $credit_pub_notar; ?></option>
	<option value='Public - Administratia publica'><?php echo $credit_pub_adm; ?></option>
	<option value='Public - Agricultura'><?php echo $credit_pub_agr; ?></option>
	<option value='Public - Telecomunicatii'><?php echo $credit_pub_tlc; ?></option>
	<option value='Public - Industria (excl. vinicola)'><?php echo $credit_pub_ind; ?></option>
	<option value='Public - Constructii'><?php echo $credit_pub_con; ?></option>
	<option value='Public - Servicii juridice'><?php echo $credit_pub_jur; ?></option>
	<option value='Public - Medicina'><?php echo $credit_pub_med; ?></option>
	<option value='Public - Personal medical auxiliar'><?php echo $credit_pub_med_aux; ?></option>
	<option value='Public -  Comert'><?php echo $credit_pub_com; ?></option>
	<option value='Public - Hotele, restaurante, casino'><?php echo $credit_pub_hot; ?></option>
	<option value='Public - Transporturi'><?php echo $credit_pub_tra; ?></option>
	<option value='Public - Invatamint - licee'><?php echo $credit_pub_licee; ?></option>
	<option value='Public - Invatamint - universitati'><?php echo $credit_pub_univ; ?></option>
	<option value='Public - Servicii imobiliare'><?php echo $credit_pub_imob; ?></option>
	<option value='Public - Industria vinicola'><?php echo $credit_pub_vinic; ?></option>
	<option value='Public - Vama'><?php echo $credit_pub_vama; ?></option>
	<option value='Public - Inspectoratul fiscal'><?php echo $credit_pub_fisc; ?></option>
	<option value='Public - Inspectoratul muncii'><?php echo $credit_pub_munc; ?></option>
	<option value='Public - Politia rutiera'><?php echo $credit_pub_pr; ?></option>
	<option value='Public - Top managerii - Administratia publica'><?php echo $credit_pub_public; ?></option>
	<option value='Public - Altele'><?php echo $credit_pub_alte; ?></option>
	<option value='Privat - Servicii financiare'><?php echo $credit_privat_fin; ?></option>
	<option value='Privat - Proiecte straine'><?php echo $credit_privat_pro; ?></option>
	<option value='Privat - Notar public'><?php echo $credit_privat_notar; ?></option>
	<option value='Privat - Agricultura'><?php echo $credit_privat_agr; ?></option>
	<option value='Privat - Telecomunicatii'><?php echo $credit_privat_tlc; ?></option>
	<option value='Privat - Industrie (excl. vinificatie)'><?php echo $credit_privat_ind; ?></option>
	<option value='Privat - Constructii'><?php echo $credit_privat_cons; ?></option>
	<option value='Privat - Servicii Legale'><?php echo $credit_privat_serv; ?></option>
	<option value='Privat - Medicina'><?php echo $credit_privat_med; ?></option>
	<option value='Privat - Personal Medical Auxiliar'><?php echo $credit_privat_aux; ?></option>
	<option value='Privat - Comert'><?php echo $credit_privat_com; ?></option>
	<option value='Privat - Hotele, restaurante, casino'><?php echo $credit_privat_hot; ?></option>
	<option value='Privat - Transporturi'><?php echo $credit_privat_trans; ?></option>
	<option value='Privat - Invatamint - licee'><?php echo $credit_privat_licee; ?></option>
	<option value='Privat - Invatamint - Universtitati'><?php echo $credit_privat_univ; ?></option>
	<option value='Privat - Servicii Imobiliare'><?php echo $credit_privat_imob; ?></option>
	<option value='Privat - Industria vinicola'><?php echo $credit_privat_vin; ?></option>
	<option value='Privat - Top managerii - Intreprinderi private'><?php echo $credit_privat_priv; ?></option>
	<option value='Privat - Top managerii - Administratia publica'><?php echo $credit_privat_pub; ?></option>
	<option value='Privat - Altele'><?php echo $credit_privat_alte; ?></option>
	<option value='Strain - Servicii financiare'><?php echo $credit_strain_fin; ?></option>
	<option value='Strain - Proiecte straine'><?php echo $credit_strain_pro; ?></option>
	<option value='Strain - Notar'><?php echo $credit_strain_not; ?></option>
	<option value='Strain - Administratia publica'><?php echo $credit_strain_pub; ?></option>
	<option value='Strain - Agricultura'><?php echo $credit_strain_agr; ?></option>
	<option value='Strain - Telecomunicatiile'><?php echo $credit_strain_tlc; ?></option>
	<option value='Strain - Industria (excl. vinicola)'><?php echo $credit_strain_ind; ?></option>
	<option value='Strain - Constructii'><?php echo $credit_strain_cons; ?></option>
	<option value='Strain - Servicii juridice'><?php echo $credit_strain_jur; ?></option>
	<option value='Strain - Medicina'><?php echo $credit_strain_med; ?></option>
	<option value='Strain - Personal Medical Auxiliar'><?php echo $credit_strain_aux; ?></option>
	<option value='Strain - Comert'><?php echo $credit_strain_com; ?></option>
	<option value='Strain - Hotel, restaurant, cazino'><?php echo $credit_strain_hot; ?></option>
	<option value='Strain - Transport'><?php echo $credit_strain_tran; ?></option>
	<option value='Strain - Invatamint liceal'><?php echo $credit_strain_licee; ?></option>
	<option value='Strain - Invatamint universitar'><?php echo $credit_strain_univ; ?></option>
	<option value='Strain - Servicii imobiliare'><?php echo $credit_strain_imob; ?></option>
	<option value='Strain - Vinificatie'><?php echo $credit_strain_vin; ?></option>
	<option value='Strain - Vama'><?php echo $credit_strain_vama; ?></option>
	<option value='Strain - Inspectoratul fiscal'><?php echo $credit_strain_fisc; ?></option>
	<option value='Strain - Top managerii - Intreprinderi private'><?php echo $credit_strain_priv; ?></option>
	<option value='Strain - Top managerii - Intreprinderi de stat'><?php echo $credit_strain_stat; ?></option>
	<option value='Strain - Altele'><?php echo $credit_strain_alte; ?></option>
	<option value='Privat / Straina - Servicii financiare'><?php echo $credit_privstrain_fin; ?></option>
	<option value='Privat / Straina - Proiecte straine'><?php echo $credit_privstrain_pro; ?></option>
	<option value='Privata / Straina - Notar'><?php echo $credit_privstrain_notar; ?></option>
	<option value='Privata / Straina - Administratia publica'><?php echo $credit_privstrain_pub; ?></option>
	<option value='Privata / Straina - Agricultura'><?php echo $credit_privstrain_agr; ?></option>
	<option value='Privata / Straina - Telecomunicatii'><?php echo $credit_privstrain_tlc; ?></option>
	<option value='Privata / Straina - Industria (excl. vinicola)'><?php echo $credit_privstrain_ind; ?></option>
	<option value='Privata / Straina - Constructii'><?php echo $credit_privstrain_cons; ?></option>
	<option value='Privata / Straina - Servicii juridice'><?php echo $credit_privstrain_jur; ?></option>
	<option value='Privata / Straina - Medicina'><?php echo $credit_privstrain_med; ?></option>
	<option value='Privat / Strain - Personal Medical auxiliar'><?php echo $credit_privstrain_aux; ?></option>
	<option value='Privat / Strain Comert'><?php echo $credit_privstrain_com; ?></option>

	<option value='Privat / Straina - Hotele, restaurante, casino'><?php echo $credit_privstrain_hot; ?></option>
	<option value='Privat / Straina - Transporturi'><?php echo $credit_privstrain_trans; ?></option>
	<option value='Privat / Straina - Invatamint - licee'><?php echo $credit_privstrain_licee; ?></option>
	<option value='Privat / Straina - Invatamint - universitati'><?php echo $credit_privstrain_univ; ?></option>
	<option value='Privat / Straina - Srevicii imobiliare'><?php echo $credit_privstrain_imob; ?></option>
	<option value='Privat / Straina - Industria vinicola'><?php echo $credit_privstrain_vin; ?></option>
	<option value='Privat / Straina - Top managerii - Intreprinderi private'><?php echo $credit_privstrain_priv; ?></option>
	<option value='Privat / Straina - Top managerii - Administratia publica'><?php echo $credit_privstrain_publ; ?></option>
	<option value='Privat / Straina - Altele'><?php echo $credit_privstrain_alte; ?></option>

</select></td>
									</tr>
									<tr>
										<td noWrap style=""><span id='lAP_JO_PROFESSION_OTHER'><?php echo $credit_functia; ?></span></td>
										<td noWrap><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tAP_JO_PROFESSION_OTHER' type='text' id='tAP_JO_PROFESSION_OTHER' /></td>
									</tr>
									<tr>
										<td noWrap style=""><span id='lAP_JO_ContractType'><?php echo $credit_tip_contract; ?></span></td>
										<td><select required name='sAP_JO_ContractType' onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" id='sAP_JO_ContractType'>
	<option value=''></option>
    <option value='Permanent'><?php echo $credit_permanent; ?></option>
	<option value='Temporar'><?php echo $credit_temporar; ?></option>

</select></td>
									</tr>
									<tr>
										<td noWrap style=""><span id='lAP_JO_HireDate'><?php echo $credit_angajat_dela; ?></span></td>
										<td class='Date'>
			<input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='ctrlAP_JO_HireDate' type='text' size='12' id='ctrlAP_JO_HireDate_txtDate' placeholder="<?php echo $credit_zzllaa; ?>" title='<?php echo $credit_zzllaa; ?>' style='' />
</td>
									</tr>

									<tr>
										<td noWrap style=""><span class="credit-fields" id='lAP_JO_WorkYears'><?php echo $credit_nranifunctia; ?></span></td>
										<td><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tAP_JO_WorkYears' type='text' maxlength='2' id='tAP_JO_WorkYears' class='Num' /></td>
									</tr>
									<tr>
										<td noWrap style=""><span id='lAP_JO_Country'><?php echo $credit_tara; ?></span></td>
										<td>
                                        <input required name='tAP_JO_Country' type='text' value='MOLDOVA' style="width: 180px;height: 26px;background: #fffcce;border: 1px solid #ffcc33;margin: 0;padding: 0;border-radius:5px 5px 5px 5px;display: block!important;float: left;margin-top: 5px;padding-left: 5px;" id='tAP_JO_Country' class='LOV' readonly /></td>
									</tr>
									<tr>
										<td noWrap style=""><span id='lAP_JO_Region'><?php echo $credit_regiune; ?></span></td>
										<td><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tAP_JO_Region' type='text' id='tAP_JO_Region' class='LOV' /></td>
									</tr>
									<tr>
										<td noWrap style=""><span id='lAP_JO_City'><?php echo $credit_oras; ?></span></td>
										<td><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tAP_JO_City' type='text' maxlength='30' id='tAP_JO_City' class='LOV' /></td>
									</tr>
									<tr>
										<td noWrap style=""><span id='lAP_JO_Street'><?php echo $credit_strada; ?></span></td>
										<td><input onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tAP_JO_Street' type='text' maxlength='100' id='tAP_JO_Street' /></td>
									</tr>
									<tr>
										<td noWrap style=""><span id='lAP_JO_Phone'><?php echo $credit_tel_fix; ?></span></td>
										<td><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tAP_JO_Phone' type='text' maxlength='15' id='tAP_JO_Phone' /></td>
									</tr>
									<tr>
										<td noWrap style=""><span id='lAP_JO_Mobile'><?php echo $credit_tel_mob; ?></span></td>
										<td><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tAP_JO_Mobile' type='text' maxlength='15' id='tAP_JO_Mobile' /></td>
									</tr>
									
                                       	<TR>
										<td colspan="2">&nbsp;</td> </TR>
     <TR>
                                        	<td colspan="2">&nbsp;</td> 
										
								  </TR>                                     
                                   
                                  
                                
									<!-- Contact Person//-->
									
								</table>
							
                            </td><td vAlign='top' align='left' width='1%' style="border-right:1px solid #ccc;">
                            </td>
                             <td vAlign='top' align='left' width='1%'>
                            </td>
							<td vAlign='top' align='left' width='49%'>
<table class='TDD' cellSpacing='0' cellPadding='0' width='100%' border='0' style='BORDER-COLLAPSE: separate'>

           <tr>
										<th colSpan='2'>
          
<h1><?php echo $credit_persoana_conact; ?></h1>

</th></tr>
									<tr>
										<td noWrap style=""><span id='lCP_FirstName'><?php echo $credit_prenume; ?></span></td>
										<td style=""><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tCP_FirstName' type='text' maxlength='30' id='tCP_FirstName' /></td>
									</tr>
									<tr>
										<td noWrap style=""><span id='lCP_LastName'><?php echo $credit_nume; ?></span></td>
										<td style=""><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tCP_LastName' type='text' maxlength='30' id='tCP_LastName' /></td>
									</tr>
									<tr>
										<td noWrap style=""><span id='lCP_FatherName'><?php echo $credit_patronimic; ?></span></td>
										<td style=""><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tCP_FatherName' type='text' maxlength='30' id='tCP_FatherName' /></td>
									</tr>									
									<tr>
										<td noWrap style=""><span id='lCP_Country'><?php echo $credit_tara; ?></span></td>
										<td style=""><input required name='tCP_Country' type='text' value='MOLDOVA' style="width: 180px;height: 26px;background: #fffcce;border: 1px solid #ffcc33;margin: 0;padding: 0;border-radius:5px 5px 5px 5px;display: block!important;float: left;margin-top: 5px;padding-left: 5px;" id='tCP_Country' class='LOV' readonly /></td>
									</tr>
									<tr>
										<td noWrap style=""><span id='lCP_Region'><?php echo $credit_regiune; ?></span></td>
										<td style=""><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tCP_Region' type='text' id='tCP_Region' class='LOV' /></td>
									</tr>
									<tr>
										<td noWrap style=""><span id='lCP_City'><?php echo $credit_oras; ?></span></td>
										<td style=""><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tCP_City' type='text' maxlength='30' id='tCP_City' /></td>
									</tr>
									<tr>
										<td noWrap style=""><span id='lCP_Street'><?php echo $credit_strada; ?></span></td>
										<td style=""><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tCP_Street' type='text' maxlength='100' id='tCP_Street' /></td>
									</tr>
									<tr>
										<td noWrap style=""><span id='lCP_Block'><?php echo $credit_nr_cladirii; ?></span></td>
										<td style=""><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tCP_Block' type='text' maxlength='10' id='tCP_Block' /></td>
									</tr>
									<tr>
										<td noWrap style=""><span id='lCP_AppartmentNum'><?php echo $credit_nr_apart; ?></span></td>
										<td style=""><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tCP_AppartmentNum' type='text' maxlength='10' id='tCP_AppartmentNum' /></td>
									</tr>
									<tr>
										<td noWrap style=""><span id='lCP_Phone'><?php echo $credit_tel_fix; ?></span></td>
										<td style=""><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tCP_Phone' type='text' maxlength='15' id='tCP_Phone' /></td>
									</tr>
									<tr>
										<td noWrap style=""><span id='lCP_Mobile'><?php echo $credit_tel_mob; ?></span></td>
										<td style=""><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tCP_Mobile' type='text' maxlength='15' id='tCP_Mobile' /></td>
									</tr>


									<TR>
										<td colspan="2" style="border-bottom:1px solid #ccc; height: 23px;">&nbsp;</td> 
                                    </TR>
     								<TR>
                                        <td colspan="2">&nbsp;</td> 
									</TR>  
  									<tr>
										<th colSpan='2'>
                                        

<h1><?php echo $credit_adresa_fact; ?></h1>
<div id="lblSameAsCurrent" style="margin-left: 14px;width: 403px;text-align: left;margin-top: 10px;margin-bottom: 10px;"><input id="chkSameAsCurrent" type="checkbox" name="chkSameAsCurrent" onClick="javascript:EnableDisable();" style="width: 15px;height: 12px;margin-left: -15px;margin-top: 2px;position: absolute;text-align: left;" />&nbsp;<?php echo $credit_adresa_identic; ?></div>
</th></tr>

									<tr>
										<td style="" nowrap=""><span id="lAP_BA_Country"><?php echo $credit_tara; ?></span></td>
									  <td style=""><input required name="tAP_BA_Country" type="text" value="10005" id="tAP_BA_Country" style="visibility:hidden; position:absolute;background: #fffcce;border: 1px solid #ffcc33;" /><input name="tAP_BA_CountryDesc" type="text" value="MOLDOVA" style="background: #fffcce;border: 1px solid #ffcc33;" readonly id="tAP_BA_CountryDesc" class="LOV" /></td>
									</tr>
									<tr>
										<td style="" nowrap=""><span id="lAP_BA_Region"><?php echo $credit_regiune; ?></span></td>
									  <td style=""><input required name="tAP_BA_Region" type="text" id="tAP_BA_Region" style="visibility:hidden; position:absolute;" /><input onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name="tAP_BA_RegionDesc" type="text"  id="tAP_BA_RegionDesc" class="LOV" /></td>
									</tr>
									<tr>
										<td style="" nowrap=""><span id="lAP_BA_City"><?php echo $credit_oras; ?></span></td>
										<td style=""><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name="tAP_BA_City" type="text" maxlength="30" id="tAP_BA_City" /></td>
									</tr>
									<tr>
										<td style="" nowrap=""><span id="lAP_BA_Street"><?php echo $credit_strada; ?></span></td>
										<td style=""><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name="tAP_BA_Street" type="text" maxlength="100" id="tAP_BA_Street" /></td>
									</tr>
									<tr>
										<td style="" nowrap=""><span id="lAP_BA_Block"><?php echo $credit_nr_cladirii; ?></span></td>
										<td style=""><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name="tAP_BA_Block" type="text" maxlength="10" id="tAP_BA_Block" /></td>
									</tr>
									<tr>
										<td style="" nowrap=""><span id="lAP_BA_AppartmentNum"><?php echo $credit_nr_apart; ?></span></td>
										<td style=""><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name="tAP_BA_AppartmentNum" type="text" maxlength="10" id="tAP_BA_AppartmentNum" /></td>
									</tr>
									<tr>
										<td style="" nowrap=""><span id="lAP_BA_Phone"><?php echo $credit_tel_fix; ?></span></td>
										<td style=""><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name="tAP_BA_Phone" type="text" maxlength="15" id="tAP_BA_Phone" /></td>
									</tr>
									<tr>
										<td style="" nowrap=""><span id="lAP_BA_Mobile"><?php echo $credit_tel_mob; ?></span></td>
										<td style=""><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name="tAP_BA_Mobile" type="text" maxlength="15" id="tAP_BA_Mobile" /></td>
									</tr>
									<tr>
										<td style="" nowrap=""><span id="lAP_BA_CurYearAddress"><?php echo $credit_ani_adresa; ?></span></td>
										<td style=""><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name="tAP_BA_CurYearAddress" type="text" maxlength="3" id="tAP_BA_CurYearAddress" class="Num" /></td>
									</tr>
									<tr>
										<td style="" nowrap=""><span id="lAP_BA_HomeOwnership"><?php echo $credit_loc_propr; ?></span></td>
										<td style=""><select required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name="sAP_BA_HomeOwnership" id="sAP_BA_HomeOwnership">
    <option value=""></option>
    <option value="<?php echo $credit_da; ?>"><?php echo $credit_da; ?></option>
	<option value="<?php echo $credit_da_mostenire; ?>"><?php echo $credit_da_mostenire; ?></option>
	<option value="<?php echo $credit_nu_inch; ?>"><?php echo $credit_nu_inch; ?></option>
	<option value="<?php echo $credit_nu_nu; ?>"><?php echo $credit_nu_nu; ?></option>

</select></td>
									</tr>
									<!--Family Information//-->
                                    <TR>
                                        <td colspan="2">&nbsp;</td> 
									</TR>
                                    <TR>
										<td colspan="2" style="border-bottom:1px solid #ccc; height:33px;">&nbsp;</td> 
                                    </TR>
                                    <TR>
                                        <td colspan="2">&nbsp;</td> 
									</TR>
  <tr>
  <th colSpan='2'>
<h1><?php echo $credit_info_sot; ?></h1>
</th></tr>
									<tr>
										<td style=""><span id='lAP_SP_FirstName'><?php echo $credit_prenume; ?></span></td>
										<td style="">
											<input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tAP_SP_FirstName' type='text' maxlength='30' id='tAP_SP_FirstName' />
											
										</td>
									</tr>
									<tr>
										<td noWrap style=""><span id='lAP_SP_LastName'><?php echo $credit_nume; ?></span></td>
										<td style="">
											<input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tAP_SP_LastName' type='text' maxlength='30' id='tAP_SP_LastName' />
											
										</td>
									</tr>
									<tr>
										<td noWrap style=""><span id='lAP_SP_Birth'><?php echo $credit_data_nasterii; ?></span></td>
										<td class='Date' style="">
											
<table border='0' cellpadding='0' cellspacing='0' style='BORDER-COLLAPSE: separate' >
	<tr>
		<td align='left' valign='top' nowrap>
			<input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='ctrlAP_SP_BirthDate' type='text' size='12' id='ctrlAP_SP_BirthDate_txtDate' placeholder="<?php echo $credit_zzllaa; ?>" title='<?php echo $credit_zzllaa; ?>' style='' />
			
			
			
		</td>
	</tr>
	<tr>
		<td align='left' valign='top' nowrap>&nbsp;
			
			
			
			
		</td>
	</tr>
</table>

											
										</td>
                                    </tr><TR>
										<td colspan="2" style="border-bottom:1px solid #ccc;">&nbsp;</td> 
                                    </TR>
                                    <TR>
                                        <td colspan="2">&nbsp;</td> 
									</TR>                             
   <tr>
										<th colSpan='2'>

<h1><?php echo $credit_info_fam; ?></h1>
</th></tr>
									<tr>
										<td noWrap style=""><span id='lAP_DependantChildren'><?php echo $credit_nr_dep; ?></span><br /><span style="font-style:italic">(copii până la 18 ani)</span></td>
										<td style=""><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tAP_DependantChildren' type='text' maxlength='2' id='tAP_DependantChildren' class='Num' /></td>
									</tr>
									<!-- Spouse Information //-->
                                    <TR>
										<td colspan="2" style="border-bottom:1px solid #ccc;">&nbsp;</td> 
                                    </TR>
                                    <TR>
                                        <td colspan="2">&nbsp;</td> 
									</TR>                                    <tr>
										<th colSpan='2'>
                                        
									
<h1><?php echo $credit_info_fin; ?></h1>
</th></tr>
									<tr>
										<td noWrap style=""><span id='lAP_FI_NetIncome'><?php echo $credit_info_venit; ?></span></td>
										<td style=""><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tAP_FI_NetIncome' type='text' maxlength='20' id='tAP_FI_NetIncome' class='Num' /></td>
									</tr>
									<tr>
										<td noWrap style=""><span id='lAP_FI_SpouseNetIncome'><?php echo $credit_info_venit_sot; ?></span></td>
										<td style=""><input required onBlur="if(this.value.length &gt; 0) { this.parentNode.className='input done'} else { this.parentNode.className='input' };" name='tAP_FI_SpouseNetIncome' type='text' maxlength='20' id='tAP_FI_SpouseNetIncome' class='Num' /></td>
									</tr><TR>
										<td colspan="2" style="  ">&nbsp;</td> </TR>
                                        <TR>
                                        	<td colspan="2">&nbsp;</td> 
										
									</TR>
                                    <tr>
                                    <td colspan="2">
                                    
                                    
                                    </td>
                                    </tr>
                                    
   
							  </table>
							</td>
						</tr>
						<tr>
                                    <td colspan="3" height="10px"></td>
                                    </tr>
					</table>
<input onclick="_gaq.push(['_trackEvent', 'Credit', 'Solicitare-Trimisa']);" type="submit" value="<?php echo $button_credit; ?>" id="button-cart" class="button credit-button buy_one_click" style="width: 188px;height: 40px;margin-right: 47px;margin-top: 20px;float: right; margin-bottom:20px;font-size: 22px !important;" />
                  
</div></div>     

                      <input name="product_id" type="hidden" value="<?php echo $_POST['product_id']; ?>" />
                      <input name="product_name" type="hidden" value="<?php echo $produs; ?>" />
                      <input name="thumb" type="hidden" value="<?php echo $imagine; ?>" />
                      <input name="price" type="hidden" value="<?php echo $pret; ?>" />
						     
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
<script language="javascript">	
			function selectCreditType(){
				$('#credit_period').find('option[value="0"]').attr('selected','true');
				option_val = $('#credit_type > option:selected').val();
				if (option_val == 1){
							$('#credit_period').html('<span>6 <?php echo $credit_months; ?></span>');
							$('#avans').val('<?php echo ceil($pret*0.25);echo ' '.$credit_money; ?>');
							$('#total').val('<?php echo $pret; echo ' '.$credit_money; ?>');
							$('#tip_credit').val('0 %');
							$('#rata_lunara').val('<?php echo ceil(($pret-($pret*0.25))/6);echo ' '.$credit_money; ?>');
							$('#numar_ratelor').val('6 luni');
					}

					if (option_val == 2){ 
							$('#credit_period').html('<select id="credit_period_select" onChange="selectCreditPeriod();"><option value="1">6 <?php echo $credit_months; ?></option></select>');							
							$('#avans').val('<?php echo ceil($pret*0.15);echo ' '.$credit_money; ?>');
							$('#total').val('<?php echo ceil($pret*1.15);echo ' '.$credit_money; ?>');
							$('#tip_credit').val('10%');
							$('#rata_lunara').val('<?php echo ceil(($pret/6));echo ' '.$credit_money; ?>');
					}
					
					if (option_val == 3){ 
							$('#credit_period').html('<select id="credit_period_select" onChange="selectCreditPeriod();"><option value="1">6 <?php echo $credit_months; ?></option><option value="2" selected>12 <?php echo $credit_months; ?></option></select>');							
							$('#avans').val('<?php echo 0;echo ' '.$credit_money; ?>');
							$('#total').val('<?php echo ceil((($pret*0.0185)+($pret*0.0888487863949254))*12);echo ' '.$credit_money; ?>');
							$('#tip_credit').val('Retail');
							$('#rata_lunara').val('<?php echo ceil(($pret*0.0185)+($pret*0.0888487863949254));echo ' '.$credit_money; ?>');
					}
				}
				
			function selectCreditPeriod() {	
				option_val = $('#credit_period_select > option:selected').val();
				if (option_val == 1) {				
						$('#rata_lunara').val('<?php echo ceil(($pret*0.0185)+($pret*0.1785));echo ' '.$credit_money; ?>');
						$('#total').val('<?php echo ceil((($pret*0.0185)+($pret*0.1785))*6);echo ' '.$credit_money; ?>');
						$('#numar_ratelor').val('6 luni');
					}
				if (option_val == 2) {
						$('#rata_lunara').val('<?php echo ceil(($pret*0.0185)+($pret*0.0888487863949254));echo ' '.$credit_money; ?>');
						$('#total').val('<?php echo ceil((($pret*0.0185)+($pret*0.0888487863949254))*12);echo ' '.$credit_money; ?>');
						$('#numar_ratelor').val('12 luni');
					}
			}			
			function EnableDisable()
			{
				
				try
				{
					if(document.getElementById("chkSameAsCurrent").checked==true)
					{
						document.getElementById("tAP_BA_CountryDesc").value=document.getElementById("tAP_CA_CountryDesc").value;
						document.getElementById("tAP_BA_RegionDesc").value=document.getElementById("tAP_CA_RegionDesc").value;
						document.getElementById("tAP_BA_Country").value=document.getElementById("tAP_CA_Country").value;
						document.getElementById("tAP_BA_Region").value=document.getElementById("tAP_CA_Region").value;
						document.getElementById("tAP_BA_City").value=document.getElementById("tAP_CA_City").value;
						document.getElementById("tAP_BA_Block").value=document.getElementById("tAP_CA_Block").value;
						document.getElementById("tAP_BA_Street").value=document.getElementById("tAP_CA_Street").value;
						document.getElementById("tAP_BA_AppartmentNum").value=document.getElementById("tAP_CA_AppartmentNum").value;
						document.getElementById("tAP_BA_Phone").value=document.getElementById("tAP_CA_Phone").value;
						document.getElementById("tAP_BA_Mobile").value=document.getElementById("tAP_CA_Mobile").value;
						document.getElementById("tAP_BA_Mobile").value=document.getElementById("tAP_CA_Mobile").value;
						document.getElementById("tAP_BA_CurYearAddress").value=document.getElementById("tAP_CA_CurYearAddress").value;
						document.getElementById("sAP_BA_HomeOwnership").value=document.getElementById("sAP_CA_HomeOwnership").value;
					}
					else
					{
					/*	document.getElementById("tAP_BA_CountryDesc").value="";
						document.getElementById("tAP_BA_RegionDesc").value="";
						document.getElementById("tAP_BA_Country").value="";
						document.getElementById("tAP_BA_Region").value="";
						document.getElementById("tAP_BA_City").value="";
						document.getElementById("tAP_BA_Block").value="";
						document.getElementById("tAP_BA_Street").value="";
						document.getElementById("tAP_BA_AppartmentNum").value="";
						document.getElementById("tAP_BA_Phone").value="";
						document.getElementById("tAP_BA_Mobile").value="";
						document.getElementById("tAP_BA_Mobile").value="";
						document.getElementById("tAP_BA_CurYearAddress").value="";
						document.getElementById("sAP_BA_HomeOwnership").value="";*/
					}
				}
				catch(e)
				{
				}
			}
	
		</script>	
<?php echo $footer; ?>  </div>