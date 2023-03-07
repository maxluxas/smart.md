<?php echo $header; ?>
<head><link rel="stylesheet" href="catalog/view/smartv3/css/cariere.css?v=1.1.0">
	<link rel="stylesheet" href="/catalog/view/javascript/slick/slick/slick.css">
	<link rel="stylesheet" href="/catalog/view/javascript/slick/slick/slick-theme.css">
	<script src="/catalog/view/javascript/slick/slick/slick.min.js" charset="utf-8"></script>
<style type="text/css">
	a.btn.btnx, .btn.btn_close {
		background: #37474f;
		border: 1px solid #ffcc33;
	}
	a.btn.btnx:hover {
		background: #ffcc33;
		color: #37474f;
	}
	.container.form_content {
		margin-top: -40px;
	}
	.job_logo {
		margin: 0 auto;
		display: block;
		width: 180px;
	}
	.btn.btn_close:hover {
		background: #ffcc33;
		color: #37474f;
	}
	.col.m6.s12.info_position .col.m6.s12.info_position {
		width: 100% !important;
	}
	@media screen and (max-width: 768px) {
		#motive_get_in.f_mot {
			display: none;
		}
		.col.m6.s12.info_position {
			width: 100% !important;
		}
	}
	@media screen and (max-width: 600px) {
		.col.l4.m4.s6.mobi {
			display: block !important;
		}
		.job_logo {
			float: right;
			width: 150px;
		}
		.btn.btn_close {
			/* float: left; */
		}
		.col.l4.m4.s6.desk {
			display: none;
		}
	}
	@media screen and (max-width: 400px) {
		.job_logo {
			width: 130px;
		}
		.btn.btn_close {
			padding: 0 10px;
			width: 90%;
		}
	}
</style>
</head>
<section id="header_cariere"></section>
<div class="content_data top_padding">
	<div class="container">
		<img class="top_img_cariere" src="catalog/view/smartv3/img/echipa_smart.jpg" alt="Top Image">
		<!-- <h4 id="despre_title"><?php echo $about_us; ?></h4>
		<p id="despre_noi_descriere_c"><?php echo $about_us_descr; ?></p> -->
	</div>
	<section id="cvuri_section_cariere">
		<div class="container">
			<!-- Title Bloc -->
			<span class="title_block title_block2">
				<h4 class="titl_txt_c"><?php echo $unde_te_vezi; ?></h4>
			</span>
			<div style="clear: both;"></div>
			<!-- End title Bloc -->

			<div class="row posturi_vac_row_">
			<?php echo $cariere_total; ?>
			<?php $i=0;
				echo '<div class="row posturi_vac_row">'; ?>
			<?php foreach ($carieres as $cariere) { ?>
			<!-- Categoriile_de posturi vacante blocul cu informatie interior -->
			<!-- Butoanele cu postrurile vacante -->
			<a class="cariere_link_cvuri" style="color:#fff;" href="/<?php echo $cariere['keyword'] ?>">
				<div class="col m3 s6 cvuri_container">
					<div class="cariere_descr_pozitia" id="content_data<?php echo $cariere['cariere_id']; ?>">
						<div class="row" style="margin: 0; position: relative; width: 100%; border-bottom: 1px solid #000;">
							<div class="col l4 m4 s6 special_row_height"  style="margin: 10px 0 25px 0;">
								<img class="job_logo" src="catalog/view/smartv3/img/logo_cariere.png">
							<div class="col l4 m4 s6 mobi" style="margin: 10px 0 25px 0; display: none;">
							</div>
							</div>
							<div class="col l4 m4 s12 dsp" style="margin: 10px 0 25px 0;">
								<h3 style="font-size: 35px;margin: 0;text-align: center;font-family: smartfont;"><?php echo $ang_destept; ?></h3>
							</div>
							<div class="col l4 m4 s6 desk" style="margin: 10px 0 25px 0;">
							</div>
						</div>
						<div class="container form_content">
							<div class="row info_form_row_CV">
								<div class="col m6 s12 info_position">
									<p class="title_post_deschis" style="color: #ffcc33 !important;"><?php echo $cariere['title']; ?></p>
									<div class="cariere_l">
										<?php echo $cariere['description']; ?>
									</div>
										<div style="margin-top:15px;">
											<a style="margin-top: 15px;" class="btn btnx" href="https://docs.google.com/forms/d/e/1FAIpQLSdVTZtisIM66LWj0WemNJ3Y2ffYq95v9-Cx68yCMWBivLA9dg/viewform" target="_blank"><span><?php echo $form_cv1; ?></span></a>
											<a class="btn btn_close" style="display: inline-block;"><img src="image/shopping_jobs.png" alt="" class="img_jobs"><span><?php echo $alte_joburi; ?></span></a>
										</div>
								</div>
								<div class="col m6 s12 valign-wrapper">
									<section id="motive_get_in" class="f_mot" style="background: #37474f;">
										<div class="container">
											<!-- Title Bloc -->
											<span class="title_block title_block1">
												<h4 class="titl_txt_c" style="border-bottom: none; font-family: 'Roboto', sans-serif; margin-left: 0; color: #ffcc33;"><?php echo $motive; ?></h4>
											</span>
											<div style="clear: both;"></div>
											<!-- End title Bloc -->
											<div class="row prim_rand_car" style="padding-top: 15px; max-height: 350px; overflow: auto;">
												<div class="col m12">
													<div class="col s2 m12  valign-wrapper">
														<svg class="new-svg-icon icon_cariere_sfat" height="40" width="40"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-productivity"></use></svg>
								  					</div>
								  					<div class="col s10 m12">
													<h5 class="cariere_titl_sfat"><?php echo $dezvoltare; ?></h5>
													<p class="cariere_descr_sft"><?php echo $dezvoltare_descr; ?></p>
													</div>
								  				</div>
												<div class="col m12">
													<div class="col s2 m12  valign-wrapper">
														<svg class="new-svg-icon icon_cariere_sfat" height="40" width="40"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-success"></use></svg>
													</div>
													<div class="col s10 m12">
													<h5 class="cariere_titl_sfat"><?php echo $echipa; ?></h5>
													<p class="cariere_descr_sft"><?php echo $echipa_descr; ?></p>
													</div>
												</div>
												<div class="col m12">
													<div class="col s2 m12  valign-wrapper">
													<svg class="new-svg-icon icon_cariere_sfat" height="40" width="40"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-growth"></use></svg>
													</div>
													<div class="col s10 m12">
													<h5 class="cariere_titl_sfat"><?php echo $atmosfera; ?></h5>
													<p class="cariere_descr_sft"><?php echo $atmosfera_descr; ?></p>
													</div>
												</div>
												<div class="col m12">
													<div class="col s2 m12  valign-wrapper">
														<svg class="new-svg-icon icon_cariere_sfat" height="40" width="40"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-wallet"></use></svg>
													</div>
													<div class="col s10 m12">
													<h5 class="cariere_titl_sfat"><?php echo $salariu; ?></h5>
													<p class="cariere_descr_sft"><?php echo $salariu_descr; ?></p>
													</div>
												</div>
												<div class="col m12">
													<div class="col s2 m12  valign-wrapper">
													<svg class="new-svg-icon icon_cariere_sfat" height="40" width="40"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-growth_last"></use></svg>
													</div>
													<div class="col s10 m12">
													<h5 class="cariere_titl_sfat"><?php echo $avansare; ?></h5>
													<p class="cariere_descr_sft"><?php echo $avansare_descr; ?></p>
													</div>
												</div>
											</div>
										</div>
									</section>

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
										            m_data.append( 'answer_mail', $('input[name=answer_mail<?php echo $cariere["cariere_id"]; ?>]').val());
										            m_data.append( 'answer_phone', $('input[name=answer_phone<?php echo $cariere["cariere_id"]; ?>]').val());
										            m_data.append( 'subject', $('input[name=subject<?php echo $cariere["cariere_id"]; ?>]').val());
													m_data.append( 'file_attach', $('input[name=file_attach<?php echo $cariere["cariere_id"]; ?>]')[0].files[0]);
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

						</div>
					</div>
					<a class="cariere_link_cvuri" style="color:#fff;" href="/<?php echo $cariere['keyword'] ?>">
					<div style="display: none;"><?php echo $cariere['cariere_id'] ?></div>
					<div class="bg_cvuri">
						<img class="cvuri_img" src="image/<?php echo $cariere['image']; ?>" />
						<p class="cariere_titl_pozitia"><?php echo $cariere['title']; ?></p>
						<input id="subject" style="position:absolute;top:-99999px;width:1px !important;" name="subject<?php echo $cariere['cariere_id']; ?>" value="<?php echo $cariere['title']; ?>">
					</div>
				</a>
				</div>
			</a>
			<?php
			    $i++;
			    if ($i%4 == 0) echo '</div><div class="row posturi_vac_row">';
			} ?>



			</div>
		</div>
	</section>
	<section id="motive_get_in">
		<div class="container">
			<!-- Title Bloc -->
			<span class="title_block title_block1">
				<h4 class="titl_txt_c text_f"><?php echo $motive; ?></h4>
			</span>
			<div style="clear: both;"></div>
			<!-- End title Bloc -->
			<div class="row prim_rand_car">
				<div class="col m4">
					<div class="col s2 m12  valign-wrapper">
						<svg class="new-svg-icon icon_cariere_sfat" height="40" width="40"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-productivity"></use></svg>
  					</div>
  					<div class="col s10 m12">
					<h5 class="cariere_titl_sfat text_f"><?php echo $dezvoltare; ?></h5>
					<p class="cariere_descr_sft text_w"><?php echo $dezvoltare_descr; ?></p>
					</div>
  				</div>
				<div class="col m4">
					<div class="col s2 m12  valign-wrapper">
						<svg class="new-svg-icon icon_cariere_sfat" height="40" width="40"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-success"></use></svg>
					</div>
					<div class="col s10 m12">
					<h5 class="cariere_titl_sfat text_f"><?php echo $echipa; ?></h5>
					<p class="cariere_descr_sft text_w"><?php echo $echipa_descr; ?></p>
					</div>
				</div>
				<div class="col m4">
					<div class="col s2 m12  valign-wrapper">
						<svg class="new-svg-icon icon_cariere_sfat" height="40" width="40"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-growth"></use></svg>
					</div>
					<div class="col s10 m12">
					<h5 class="cariere_titl_sfat text_f"><?php echo $atmosfera; ?></h5>
					<p class="cariere_descr_sft text_w"><?php echo $atmosfera_descr; ?></p>
					</div>
				</div>
			</div>
			<!-- Randul 2 cu 2 optiuni -->
			<div class="row">
				<div class="col m4">
					<div class="col s2 m12  valign-wrapper">
						<svg class="new-svg-icon icon_cariere_sfat" height="40" width="40"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-wallet"></use></svg>
					</div>
					<div class="col s10 m12">
					<h5 class="cariere_titl_sfat text_f"><?php echo $salariu; ?></h5>
					<p class="cariere_descr_sft text_w"><?php echo $salariu_descr; ?></p>
					</div>
				</div>
				<div class="col m4">
					<div class="col s2 m12  valign-wrapper">
					<svg class="new-svg-icon icon_cariere_sfat" height="40" width="40"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-growth_last"></use></svg>
					</div>
					<div class="col s10 m12">
					<h5 class="cariere_titl_sfat text_f"><?php echo $avansare; ?></h5>
					<p class="cariere_descr_sft text_w"><?php echo $avansare_descr; ?></p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="video_section_cariere" style="">
		<div class="container">
			<span class="title_block title_block2" style="position: relative;left: -10px;display: block;">
				<h4 class="titl_txt_c">Team building</h4>
			</span>
			<div style="clear: both;"></div>
			<p class="team_building"><?php echo $team_description ?></p>
			<div class="slider-for">
			    <img src="catalog/view/smartv3/img/paintball1.jpg" class="img_team">
			    <img src="catalog/view/smartv3/img/paintball.jpg" class="img_team">
			    <img src="catalog/view/smartv3/img/canoia1.jpg" class="img_team">
					<img src="catalog/view/smartv3/img/paintball1.jpg" class="img_team">
					<img src="catalog/view/smartv3/img/paintball.jpg" class="img_team">
					<img src="catalog/view/smartv3/img/canoia1.jpg" class="img_team">
					<img src="catalog/view/smartv3/img/paintball1.jpg" class="img_team">
					<img src="catalog/view/smartv3/img/paintball.jpg" class="img_team">
					<img src="catalog/view/smartv3/img/canoia1.jpg" class="img_team">
			    <!-- <img src="catalog/view/smartv3/img/canoia.jpg">
			    <img src="catalog/view/smartv3/img/canoia2.jpg"> -->
			</div>
			<div class="slider-nav team_slider" >
				<img src="catalog/view/smartv3/img/paintball1.jpg" class="img_carousel">
				<img src="catalog/view/smartv3/img/paintball.jpg" class="img_carousel">
				<img src="catalog/view/smartv3/img/canoia1.jpg" class="img_carousel">
				<img src="catalog/view/smartv3/img/paintball1.jpg" class="img_carousel">
				<img src="catalog/view/smartv3/img/paintball.jpg" class="img_carousel">
				<img src="catalog/view/smartv3/img/canoia1.jpg" class="img_carousel">
				<img src="catalog/view/smartv3/img/paintball1.jpg" class="img_carousel">
				<img src="catalog/view/smartv3/img/paintball.jpg" class="img_carousel">
				<img src="catalog/view/smartv3/img/canoia1.jpg" class="img_carousel">
			</div>
		</div>
	</section>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
<script src="catalog/view/smartv3/js/information.js"></script>
<script type="text/javascript">
    var x = location.hash;
    $(x).css({
    	"width": "100%",
    	"height": "100%",
    	"opacity": "1",
    	"overflow-y": "visible"
    });
    $(x).find("div.container.form_content").css("opacity", "1");
    $("div.cariere_descr_pozitia .btn.btn_close").on("click", function(){
    	$(".cariere_descr_pozitia").css({
    		"width": "0%",
	    	"height": "0%",
	    	"opacity": "0",
	    	"overflow-y": "hidden"
    	});
    	$(".cariere_descr_pozitia").find("div.container.form_content").css("opacity", "0");
    });
</script>
<style type="text/css">
	 .roistat-promo-wrap {
	   display: none !important;
	 }
</style>

<?php echo $footer; ?>
