<?php echo $header; ?>
<head><link rel="stylesheet" href="catalog/view/smartv3/css/cariere.css"></head>
<section id="header_cariere"></section>
<div class="content_data">
	<div class="container">
		<img class="top_img_cariere" src="catalog/view/smartv3/img/top_cariere_img1.png" alt="Top Image">
		<h4 id="despre_title">Despre Noi</h4>
		<p id="despre_noi_descriere_c">Smart.md a aparut în 2013 din dorința de a oferi clienților cea mai bună experiență de cumpărături online pentru produsele <br> electronice – experiența cumpărăturilor deștepte! <br>
		De atunci, peste 60.000 vizitatori ne trec pragul online lunar, iar 98% dintre cei care au cumpărăt se declară mulțumiți! <br>
		Avem în spate o echipă tânără, creativă, dinamică și profesionistă! </p>
	</div>
	<section id="motive_get_in">
		<div class="container">
			<!-- Title Bloc -->
			<span class="title_block title_block1">
				<img  class="background_titl_section_cariere" src="catalog/view/smartv3/img/5motive.png" alt="BG_title">
				<h4 class="titl_txt_c" >5 Motive pentru a face parte din echipa Smart.md</h4>
			</span>
			<!-- End title Bloc -->
			<div class="row prim_rand_car">
				<div class="col m4">
					<i class="iicon-productivity icon_cariere_sfat"></i>
					<h5 class="cariere_titl_sfat">Dezvoltare profesională</h5>
					<p class="cariere_descr_sft">La noi vei avea posibilitatea să îți dezvolți abilitățile, să înveți de la specialiști cu experiență vastă în domeniu! Punem accent pe dezvoltarea profesională și personală continuă, avem o bibliotecă mare de cărți și o listă de training-uri specializate pe care să le parcurgi pentru a fi cel mai bun în ceea ce faci!  </p>
				</div>
				<div class="col m4">
					<i class="iicon-success icon_cariere_sfat"></i>
					<h5 class="cariere_titl_sfat">Echipă tînără și dinamică</h5>
					<p class="cariere_descr_sft">Vei face parte dintr-o echipă tânără, ambițioasă și prietenoasă, formată din oameni pozitivi care își cunosc foarte bine scopul în viață. O echipă motivată de noi provocări profesionale, dornică să atingă excelența. </p>
				</div>
				<div class="col m4">
					<i class="iicon-growth icon_cariere_sfat"></i>
					<h5 class="cariere_titl_sfat">Atmosfera propice pentru performanță</h5>
					<p class="cariere_descr_sft">Ai oportunitatea să activezi în mediul online care este orientat spre performanţă, inovație și progres. Este locul perfect pentru persoanele cu o gândire progresită și dorință de dezvoltare pe viitor.</p>
				</div>
			</div>
			<!-- Randul 2 cu 2 optiuni -->
			<div class="row">
				<div class="col m4">
					<i class="iicon-wallet icon_cariere_sfat"></i>
					<h5 class="cariere_titl_sfat">Salariu motivant și achitat la timp</h5>
					<p class="cariere_descr_sft">Vei fi motivat prin recompensă lunară pentru performanțele atinse și pentru aportul adus la atingerea obiectivelor echipei și ale companiei. </p>
				</div>
				<div class="col m4">
					<i class="iicon-growth_last icon_cariere_sfat"></i>
					<h5 class="cariere_titl_sfat">Posibilitatea de a avansa rapid </h5>
					<p class="cariere_descr_sft">Ne dezvoltăm rapid, ceea ce înseamnă că ai oportunitati de dezvoltare în companie și șansa de a avansa și a obține creșteri profesionale pe măsura eforturilor tale.</p>
				</div>
			</div>
		</div>
	</section>
	<section id="cvuri_section_cariere">
		<div class="container">
			<!-- Title Bloc -->
			<span class="title_block title_block2">
				<img  class="background_titl_section_cariere" src="catalog/view/smartv3/img/title_2.png" alt="BG_title">
				<h4 class="titl_txt_c text_alb_inner" >Unde te vezi la Smart.md?</h4>
			</span>
			<!-- End title Bloc -->
			<div class="row posturi_vac_row">
			<?php echo $cariere_total; ?>
			<?php foreach ($carieres as $cariere) { ?>
			<!-- Categoriile_de posturi vacante blocul cu informatie interior -->
			<!-- Butoanele cu postrurile vacante -->
			<a class="cariere_link_cvuri" style="color:#fff;">
				<div class="col m3 s12 cvuri_container">
					<div class="cariere_descr_pozitia">
						<div class="container form_content">
							<div class="row info_form_row_CV">
								<div class="col m6 s12 info_position">
									<p class="title_post_deschis"><?php echo $cariere['title']; ?></p>
									<?php echo $cariere['description']; ?>
								</div>
								<div class="col m6 s12">
									<h4 id="sfatcariere_form">Dacă dorești să faci parte din echipa noastră,
									trimite un mesaj.</h4>
									<div id="contact_form<?php echo $cariere['cariere_id']; ?>" style="">
										<div class="input-field input_cont">
											
										    <input required="true" id="answer_name" name="answer_name<?php echo $cariere['cariere_id']; ?>" type="text" class="validate">
										    <label for="answer_name">Numele Prenumele</label>
										</div>
										<div class="input-field input_cont">
										    <input id="answer_mail" name="answer_mail<?php echo $cariere['cariere_id']; ?>" type="email" class="validate">
										    <label for="answer_mail">Email</label>
										</div>
										<div class="input-field input_cont">
										    <input required="true" id="answer_phone" name="answer_phone<?php echo $cariere['cariere_id']; ?>" type="text" class="validate">
										    <label for="answer_phone">Telefon</label>
										</div>
										<div class="input-field input_cont">
											<div class="file-field input-field">
										      <div class="btn">
										        <span>Anexează CV</span>
										        <input type="file" name="file_attach<?php echo $cariere['cariere_id']; ?>" id="file_attach">
										      </div>
										      <div class="file-path-wrapper">
										        <input class="file-path validate" type="text">
										      </div>
										    </div>
											<div class="text_ext">
												(.doc, .pdf, .txt, pînă la 2MB)</div>
										</div>
										<div id="contact_results<?php echo $cariere['cariere_id']; ?>">&nbsp;</div>
										<a class="send_cv<?php echo $cariere['cariere_id']; ?> waves-effect waves-light btn" style="" title="Trimite">Trimite</a>
									</div>
									<script type="text/javascript">
										$(document).ready(function() {
										    $(".send_cv<?php echo $cariere['cariere_id']; ?>").click(function() { 
											    var proceed = true;
										        //loop through each field and we simply change border color to red for invalid fields		
												$("#contact_form<?php echo $cariere['cariere_id']; ?> input[required=true]").each(function(){
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
										            m_data.append( 'answer_name', $('input[name=answer_name<?php echo $cariere["cariere_id"]; ?>]').val());
										            m_data.append( 'answer_mail', $('input[name=answer_mail<?php echo $cariere['cariere_id']; ?>]').val());
										            m_data.append( 'answer_phone', $('input[name=answer_phone<?php echo $cariere['cariere_id']; ?>]').val());
										            m_data.append( 'subject', $('input[name=subject<?php echo $cariere['cariere_id']; ?>]').val());
													m_data.append( 'file_attach', $('input[name=file_attach<?php echo $cariere['cariere_id']; ?>]')[0].files[0]);
										  			$.ajax({
										              url: '//www.smart.md/credit/hrmail.php',
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
														    output = '<div class="success">'+response.text+'</div>';
														    $('input[type=text],input[type=file],input[type=email]').val('');
														}
														$("#contact_results<?php echo $cariere['cariere_id']; ?>").hide().html(output).slideDown();
										              }
										            });
										        }
										    });
										    //reset previously set border colors and hide all message on .keyup()
										    $("#contact_form<?php echo $cariere['cariere_id']; ?>  input[required=true]").keyup(function() { 
										        $(this).css('border-color',''); 
										        $("#result").slideUp();
										    });
										});
									</script>
								</div>		
							</div>
							<i class="iicon-close close_form" id="close_descriere_job"></i>
						</div>
					</div>
					<div class="bg_cvuri">
						<img class="cvuri_img" src="image/<?php echo $cariere['image']; ?>" />
						<p class="cariere_titl_pozitia"><?php echo $cariere['title']; ?></p>
						<input id="subject" style="position:absolute;top:-99999px" name="subject<?php echo $cariere['cariere_id']; ?>" value="<?php echo $cariere['title']; ?>">
					</div>
				</div>
			</a>

			<?php } ?>



										
			</div>
		</div>
	</section>
	<section id="video_section_cariere">
		<div class="container">
			<span class="title_block title_block2">
				<img  class="background_titl_section_cariere" src="catalog/view/smartv3/img/splash_echipa.png" alt="BG_title">
				<h4 class="titl_txt_c" >Iti prezentam echipa SMART</h4>
			</span>
			<div class="carousel">
			    <a class="carousel-item" href=""><img src="catalog/view/smartv3/img/carousel/craousel1.jpg"></a>
			    <a class="carousel-item" href=""><img src="catalog/view/smartv3/img/carousel/craousel2.jpg"></a>
			    <a class="carousel-item" href=""><img src="catalog/view/smartv3/img/carousel/craousel3.jpg"></a>
			    <a class="carousel-item" href=""><img src="catalog/view/smartv3/img/carousel/craousel1.jpg"></a>
			    <a class="carousel-item" href=""><img src="catalog/view/smartv3/img/carousel/craousel4.jpg"></a>

			</div>
		</div>
	</section>
	<section id="angajati_section_cariere">
		<div class="container">
			<div class="row">
				<div class="col m3 s6">
					<img src="image/pages/cariere/a.png" onmouseover="this.src='image/pages/cariere/a1.png';" onmouseout="this.src='image/pages/cariere/a.png';" style="width: 100%;">
					<div style="border-left: 3px solid #ffcc33;height: 35px;"></div>
					<div style="margin: 15px 0 0px 0px;font-weight: bold;">Cristi</div>
					<div style="font-size: 12px;color: #757575;">Manager Vânzări</div>
					<div style="font-size: 12px;color: #757575;font-style:italic;">"Responsabil, înțelegător și amabil"</div>
				</div>
				<div class="col m3 s6">
					<img src="image/pages/cariere/b.png" onmouseover="this.src='image/pages/cariere/b1.png';" onmouseout="this.src='image/pages/cariere/b.png';" style="width: 100%;">
					<div style="border-left: 3px solid #ffcc33;height: 35px;"></div>
					<div style="margin: 15px 0 0px 0px;font-weight: bold;">Alina</div>
					<div style="font-size: 12px;color: #757575;">Specialist în Cumpărături Deștepte</div>
					<div style="font-size: 12px;color: #757575;font-style:italic;">"Energică, atrăgătoare și ambițioasă"</div>
				</div>
				<div class="col m3 s6">
					<img src="image/pages/cariere/d.png" onmouseover="this.src='image/pages/cariere/d1.png';" onmouseout="this.src='image/pages/cariere/d.png';" style="width: 100%;">
					<div style="border-left: 3px solid #ffcc33;height: 35px;"></div>
					<div style="margin: 15px 0 0px 0px;font-weight: bold;">Sergiu</div>
					<div style="font-size: 12px;color: #757575;">Manager Vânzări</div>
					<div style="font-size: 12px;color: #757575;font-style:italic;">"Sociabil, pozitiv și profesionist"</div>
				</div>
				<div class="col m3 s6">
					<img src="image/pages/cariere/f.png" onmouseover="this.src='image/pages/cariere/f1.png';" onmouseout="this.src='image/pages/cariere/f.png';" style="width: 100%;">
					<div style="border-left: 3px solid #ffcc33;height: 35px;"></div>
					<div style="margin: 15px 0 0px 0px;font-weight: bold;">Costel</div>
					<div style="font-size: 12px;color: #757575;">Specialist în Cumpărături Deștepte</div>
					<div style="font-size: 12px;color: #757575;font-style:italic;">"Vesel, încrezut și deschis"</div>
				</div>
				<div class="col m3 s6">
					<img src="image/pages/cariere/c.png" onmouseover="this.src='image/pages/cariere/c1.png';" onmouseout="this.src='image/pages/cariere/c.png';" style="width: 100%;">
					<div style="border-left: 3px solid #ffcc33;height: 35px;"></div>
					<div style="margin: 15px 0 0px 0px;font-weight: bold;">Andrei</div>
					<div style="font-size: 12px;color: #757575;">Manager Vânzări</div>
					<div style="font-size: 12px;color: #757575;font-style:italic;">"Responsabil, înțelegător și amabil"</div>
				</div>
				<div class="col m3 s6">
					<img src="image/pages/cariere/g.png" onmouseover="this.src='image/pages/cariere/g1.png';" onmouseout="this.src='image/pages/cariere/g.png';" style="width: 100%;">
					<div style="border-left: 3px solid #ffcc33;height: 35px;"></div>
					<div style="margin: 15px 0 0px 0px;font-weight: bold;">Gicu</div>
					<div style="font-size: 12px;color: #757575;">Curier Consultant</div>
					<div style="font-size: 12px;color: #757575;font-style:italic;">"Energic, binedispus și ambițios"</div>
				</div>
				<div class="col m3 s6">
					<img src="image/pages/cariere/d.png" onmouseover="this.src='image/pages/cariere/d1.png';" onmouseout="this.src='image/pages/cariere/d.png';" style="width: 100%;">
					<div style="border-left: 3px solid #ffcc33;height: 35px;"></div>
					<div style="margin: 15px 0 0px 0px;font-weight: bold;">Sergiu</div>
					<div style="font-size: 12px;color: #757575;">Manager Vânzări</div>
					<div style="font-size: 12px;color: #757575;font-style:italic;">"Sociabil, pozitiv și profesionist"</div>
				</div>
				<div class="col m3 s6">
					<img src="image/pages/cariere/f.png" onmouseover="this.src='image/pages/cariere/f1.png';" onmouseout="this.src='image/pages/cariere/f.png';" style="width: 100%;">
					<div style="border-left: 3px solid #ffcc33;height: 35px;"></div>
					<div style="margin: 15px 0 0px 0px;font-weight: bold;">Costel</div>
					<div style="font-size: 12px;color: #757575;">Specialist în Cumpărături Deștepte</div>
					<div style="font-size: 12px;color: #757575;font-style:italic;">"Vesel, încrezut și deschis"</div>
				</div>
			</div>
		</div>
	</section>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
<script src="catalog/view/smartv3/js/information.js"></script>
 
<?php echo $footer; ?>  