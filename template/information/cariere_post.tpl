<?php echo $header; ?>
<head><link rel="stylesheet" href="catalog/view/smartv3/css/cariere.css">
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
	.col.l4.m4.s6.desk {
		display: none !important;
	}
	@media screen and (max-width: 600px) {
		.cvuri_container {
			margin-top: 0;
			height: 100%!important;
		}
		.col.l4.m4.s6.mobi {
			display: block !important;
		}
		.job_logo {
			float: right;
			width: 150px;
		}

		.col.l4.m4.s6.desk {
			display: none !important;
		}
		.special_row_height {
			margin-bottom: 20px !important;
		}
	}
	@media screen and (max-width: 400px) {
		.job_logo {
			width: 130px;
		}
		.btn.btn_close {
			padding: 0 10px;
			width: 55%;
			float: left;
		}
		@media screen and (max-width:350px) {
			.btn.btn_close {
				width: 68%;
			}
		}
	}
    .cariere_descr_pozitia {
        display: block !important;
        width: 100%;
        height: 100%;
        opacity: 1;
        position: relative;
		z-index: 10;
        padding-bottom: 100px;
		overflow-y: scroll;
    }
    .form_content {
        opacity: 1;
    }
    .cvuri_container {
        margin-top: 0;
		height: 100vh;
    }
	footer {
		display: none;
	}
</style>
</head>
<!-- <a class="cariere_link_cvuri" style="color:#fff;"> -->
    <div class="col m3 s6 cvuri_container">
		<div class="cariere_descr_pozitia" id="content_data<?php echo $carieres[0]['cariere_id']; ?>">
			<div class="row" style="margin: 0; position: relative; width: 100%; border-bottom: 1px solid #303c42;">
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
						<p class="title_post_deschis" style="color: #ffcc33 !important;"><?php echo $carieres[0]['title']; ?></p>
						<div class="cariere_l">
							<?php echo $carieres[0]['description']; ?>
						</div>
							<div style="margin-top:15px;">
								<a style="margin-top: 15px;" class="btn btnx" href="https://www.smart.md/aplica_job.php" target="_blank"><span><?php echo $form_cv1; ?></span></a>
								<a class="btn btn_close" style="display: inline-block;" href="/jobs"><img src="image/shopping_jobs.png" alt="" class="img_jobs"><span><?php echo $alte_joburi; ?></span></a>
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

    </div>
<!-- </a> -->
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
    	// $(".cariere_descr_pozitia").css({
    	// 	"width": "0%",
	    // 	"height": "0%",
	    // 	"opacity": "0",
	    // 	"overflow-y": "hidden"
    	// });
    	// $(".cariere_descr_pozitia").find("div.container.form_content").css("opacity", "0");
    });
</script>
<?php echo $footer;  ?>
