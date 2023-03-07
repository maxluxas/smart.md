<?php echo $header; ?>
<link rel="stylesheet" href="catalog/view/smartv3/css/lasa_opp_comp.css">
<section id="lasa_opinia_block" style="display: none;">
			<div class="container content_in_main">
				<div class="cont_info_block">
					<!-- Login Part -->
					<div class="login_part">
						<h2 class="titl_opinii">
							<span><?php if (isset($_COOKIE['Social'])) { ?><?php echo $heading_title; ?><?php } else { ?><?php echo $authorization; ?><?php } ?></span>
							<div class="custom_opp_line"<?php if (isset($_COOKIE['Social'])) { ?>display:none!important;<?php } ?>></div>
						</h2>

            			<?php if (isset($_COOKIE['Social'])) { ?>
						<h4 class="minhead"><?php echo $without_account; ?></h4>
						<span><?php echo $success_auth; ?></span>
						<?php } else { ?>
						<h4 class="minhead"><?php echo $need_login; ?></h4>
						<span><?php echo $text_conditions ?></span>
						<?php } ?>


						<div class="row social buttons">
							<?php if (isset($_COOKIE['Social'])) { ?>
							<?php } else { ?>
							
							<?php if ($this->config->get('hybrid_auth_status')) { ?>
							  <?php foreach ($this->config->get('hybrid_auth') as $config) { ?>
							  	<div class="col m3 s12">
								  <?php if ($config['provider']=='Facebook') { ?>
								  <a onclick="window.open('<?php echo HTTP_SERVER . 'index.php?route=hybrid/auth&source=product-review&provider=' . $config['provider']; ?>&redirect=<?php echo base64_encode($this->url->link('hybrid/auth/success')); ?>', 'newwindow', 'width=700, height=550,top=100, left=600'); return false;" href="<?php echo HTTP_SERVER . 'index.php?route=hybrid/auth&provider=' . $config['provider']; ?>&redirect=<?php echo base64_encode($this->url->link('hybrid/auth/success')); ?>" class="waves-effect waves-light btn socials_btn fbk"><i class="iicon-facebook left facebook_ic"></i> <span>|</span>facebook </a>
								  <?php } elseif ($config['provider']=='Google') { ?>
								  <a onclick="window.open('<?php echo HTTP_SERVER . 'index.php?route=hybrid/auth&source=product-review&provider=' . $config['provider']; ?>&redirect=<?php echo base64_encode($this->url->link('hybrid/auth/success')); ?>', 'newwindow', 'width=700, height=550,top=100, left=600'); return false;" href="<?php echo HTTP_SERVER . 'index.php?route=hybrid/auth&provider=' . $config['provider']; ?>&redirect=<?php echo base64_encode($this->url->link('hybrid/auth/success')); ?>" class="waves-effect waves-light btn socials_btn gplus"><i class="iicon-gplus left gplus_ic"></i> <span>|</span>google + </a></a>
								  <?php } elseif ($config['provider']=='Vkontakte') { ?>
								  <a onclick="window.open('<?php echo HTTP_SERVER . 'index.php?route=hybrid/auth&source=product-review&provider=' . $config['provider']; ?>&redirect=<?php echo base64_encode($this->url->link('hybrid/auth/success')); ?>', 'newwindow', 'width=700, height=550,top=100, left=600'); return false;" href="<?php echo HTTP_SERVER . 'index.php?route=hybrid/auth&provider=' . $config['provider']; ?>&redirect=<?php echo base64_encode($this->url->link('hybrid/auth/success')); ?>" class="waves-effect waves-light btn socials_btn vk"><i class="iicon-vk left vk_ic""></i> <span>|</span>vkontakte </a></a>
								  <?php } elseif ($config['provider']=='Mailru') { ?>
								  <a onclick="window.open('<?php echo HTTP_SERVER . 'index.php?route=hybrid/auth&source=product-review&provider=' . $config['provider']; ?>&redirect=<?php echo base64_encode($this->url->link('hybrid/auth/success')); ?>', 'newwindow', 'width=700, height=550,top=100, left=600'); return false;" href="<?php echo HTTP_SERVER . 'index.php?route=hybrid/auth&provider=' . $config['provider']; ?>&redirect=<?php echo base64_encode($this->url->link('hybrid/auth/success')); ?>" class="waves-effect waves-light btn socials_btn mairu"><i class="iicon-mailru left mailru_ic"></i> <span>|</span>mail.ru </a></a>
								  <?php } ?>
								 </div>
							  <?php } ?>
							<?php } ?>
							
							<?php } ?>
						</div>
	
					<!-- End login part -->
					<!-- after user is loged in Block -->
					
						<h2 class="titl_opinii" style="<?php if (!isset($_COOKIE['Social'])) { ?>display:none;<?php } ?>">
							<span>Lasa Opinia</span>
							<div class="custom_opp_line"></div>
						</h2>
						<div class="row user_info" style="<?php if (!isset($_COOKIE['Social'])) { ?>display:none;<?php } ?>">
							<div class="col auto_grid">
								<?php if (isset($_COOKIE['Social'])) { ?>
									<?php foreach ($infos as $info) { ?>
									<?php if ($_COOKIE["Social"] == $info['uid']) { ?>
										<img src="<?php echo $info['image']; ?>" class="user_photo" />
										<div style="margin-top: 15px;"><?php echo $info['name']; ?>,<br>
										Logged by <?php echo $info['user_type']; ?></div>
									<?php } } } ?>
							</div>
							<div class="col auto_grid inf_U_B">
								<?php foreach ($infos as $info) { ?>
								<?php if ($_COOKIE["Social"] == $info['uid']) { ?>
								<h4 class="name_user"><input type="text" name="name" required value="<?php echo $info['name']; ?>" /></h4>
								<p class="localitate_txt_H"><?php echo $entry_city ?></p>
								<div class="input-field region_feald">
								    <input id="region" type="text" placeholder="(optional)" value="<?php echo $info['city']; ?>">
								</div>
								<?php } } ?>
							</div>
						</div>
					</div>
					<!-- end user is loged in Block -->
					<!-- Main part of rating stars -->
					<div class="main_data">
						<p> <?php echo $entry_rating; ?> (<?php echo $entry_bad; ?> - <?php echo $entry_good; ?>)</p>
						<div class="rate">
						    <input type="radio" id="star5" name="rate" value="5">
						    <label for="star5" title="Extraordinara">
						    	<p class="feed_5"></p>
						    </label>
						    <input type="radio" id="star4" name="rate" value="4">
						    <label for="star4" title="Buna">
						    	<p class="feed_4"></p>
						    </label>
						    <input type="radio" id="star3" name="rate" value="3">
						    <label for="star3" title="Normala">
						    	<p class="feed_3"></p>
						    </label>
						    <input type="radio" id="star2" name="rate" value="2">
						    <label for="star2" title="Rea">
						    	<p class="feed_2"></p>
						    </label>
						    <input type="radio" id="star1" name="rate" value="1">
						    <label for="star1" title="Oribila">
						    	<p class="feed_1"></p>
						    </label>
						</div>
						<form action="" id="form_las_opp">
							<div class="row">
								<div class="col AutoWG">
									<p class="prod_cumparat"><?php echo $entry_title; ?></p>
								</div>
								<div class="col AutoWG">
									<div class="input-field cont_inpt">
									    <input id="prod_buy" type="text" placeholder="(optional)">
									</div>
								</div>
							</div>
							<!-- Input for message -->
							<div class="input-field">
							    <textarea id="message_container" placeholder="<?php echo $entry_enquiry; ?>" name="description" class="materialize-textarea"></textarea>
							</div>
							<?php if (isset($_COOKIE['Social'])) { ?>
							<a onclick="$('#testimonial').submit();" class="waves-effect waves-light btn lasa_opp_send_btn"><?php echo $add_button; ?></a>
							<?php } else { ?>
							<a class="waves-effect waves-light btn lasa_opp_send_btn"><span><?php echo $add_button; ?></span></a>
							<?php } ?>
							<!-- <button type="submit" class="waves-effect waves-light btn lasa_opp_send_btn">Lasa Opinia</button> -->
						</form>
					</div>
					<div class="overlay_block" style="display:block"></div>
				</div>
			</div>
		</section>


<div class="container-top">
    <div class="gpc">
    	<!-- START CONTENT TOP -->
        <div class="content-top">
            <!-- START BREADCRUMB -->
            <div class="breadcrumb" style="display: none;">
            	<h2>
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                <?php } ?>
                </h2>
            </div>            
            <h1 class="page_title"><?php if (isset($_COOKIE['Social'])) { ?><?php echo $heading_title; ?><?php } else { ?><?php echo $authorization; ?><?php } ?></h1>
            <?php if (isset($_COOKIE['Social'])) { ?>
            <div class="desktop-view" style="width: 980px;margin: 0 auto;font-size: 16px;"><?php echo $without_account; ?></div>
            <div class="mobile-view" style="font-size: 12px;"><?php echo $without_account; ?></div>
            <?php } else { ?>
            <div class="desktop-view" style="width: 980px;margin: 0 auto;font-size: 16px;"><?php echo $need_login; ?></div>
            <div class="mobile-view" style="font-size: 12px;"><?php echo $need_login; ?></div>
            <?php } ?>
            <!-- END BREADCRUMB -->
        </div>
        <!-- END CONTENT TOP -->
    </div>
</div>
<div class="container-bottom">
    <div class="gpc">
    	<?php echo $column_left; ?>
        <?php echo $column_right; ?>
        <!-- START COLUMN CENTER -->
        <?php echo $content_top; ?> 
        <div class="column-center">
        
<div id="content">

  <div class="middle">
  	
  	<div class="content" style="margin:0 10px;display: none;"><p><?php echo $text_conditions ?></p></div>
    
    
  
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="testimonial">
    <div class="row">
    	<div class="col s12 m4">
          <div class="card white">
            <div class="card-content black-text">
				<div class="row" style="margin-bottom: 0px;">
				<?php if (isset($_COOKIE['Social'])) { ?>
					<div style="text-align: center;font-size: 16px;margin-bottom: 19px;"><?php echo $success_auth; ?></div>
					<?php echo $entry_name ?>
		    		<br />
					<?php foreach ($infos as $info) { ?>
					<?php if ($_COOKIE["Social"] == $info['uid']) { ?>
					<input type="text" name="name" required value="<?php echo $info['name']; ?>" />
             			<br />
             		<?php echo $entry_city ?><br />
			 		<input type="text" name="city" value="<?php echo $info['city']; ?>" style="margin-bottom: 6px;" />
			 			<br />
				<?php } } } ?>

				<!-- Popup Example -->
				<?php if (isset($_COOKIE['Social'])) { ?>
				<?php } else { ?>
				<div style="text-align: center;" class="desktop-view">
				<?php if ($this->config->get('hybrid_auth_status')) { ?>
				  <?php foreach ($this->config->get('hybrid_auth') as $config) { ?>
					  <a onclick="window.open('<?php echo HTTP_SERVER . 'index.php?route=hybrid/auth&source=product-review&provider=' . $config['provider']; ?>&redirect=<?php echo base64_encode($this->url->link('hybrid/auth/success')); ?>', 'newwindow', 'width=700, height=550,top=100, left=600'); return false;" href="<?php echo HTTP_SERVER . 'index.php?route=hybrid/auth&provider=' . $config['provider']; ?>&redirect=<?php echo base64_encode($this->url->link('hybrid/auth/success')); ?>"><img src="<?php echo HTTP_IMAGE . 'social_icons/' . strtolower($config['provider']); ?>.png" alt="<?php echo $config['provider']; ?>" title="<?php echo $config['provider']; ?>" style=""/></a>
				  <?php } ?>
				<?php } ?>
				</div>
				<div style="text-align: center;" class="mobile-view">
				<?php if ($this->config->get('hybrid_auth_status')) { ?>
				  <?php foreach ($this->config->get('hybrid_auth') as $config) { ?>
					  <a onclick="window.open('<?php echo HTTP_SERVER . 'index.php?route=hybrid/auth&source=product-review&provider=' . $config['provider']; ?>&redirect=<?php echo base64_encode($this->url->link('hybrid/auth/success')); ?>', 'newwindow', 'width=700, height=550,top=100, left=600'); return false;" href="<?php echo HTTP_SERVER . 'index.php?route=hybrid/auth&provider=' . $config['provider']; ?>&redirect=<?php echo base64_encode($this->url->link('hybrid/auth/success')); ?>"><img src="<?php echo HTTP_IMAGE . 'themezee_social_icons/' . strtolower($config['provider']); ?>.png" alt="<?php echo $config['provider']; ?>" title="<?php echo $config['provider']; ?>" style="width:35px;height:35px;padding-right:5px;"/></a>
				  <?php } ?>
				<?php } ?>
				</div>
				<?php } ?>

				<?php if (isset($_COOKIE['Social'])) { ?>
				<?php foreach ($infos as $info) { ?>
				<?php if ($_COOKIE["Social"] == $info['uid']) { ?>
					<img src="<?php echo $info['image']; ?>" style="width:40px;height:40px;float: left;padding-right: 12px;margin-top: 15px;" />
					<div style="margin-top: 15px;"><?php echo $info['name']; ?>,<br>
					Logged by <?php echo $info['user_type']; ?></div>
				<?php } } } ?>
					
            	</div>
            </div>
           </div>
        </div>
        <div class="col s12 m8">
          <div class="card white">
            <div class="card-content black-text" <?php if (!isset($_COOKIE['Social'])) { ?>style="opacity:0.4;"<?php } ?>>
				<div class="row" style="margin-bottom: 0px;">
			        <div class="input-field col s12 m6">
			        	<style type="text/css">
			        		.rating-testimonial {
						          overflow: hidden;
						          display: inline-block;
						      }
						      .rating-testimonial-input {
						          position: absolute;
						          left: 0;
						          top: -50px;
						      }
						      .rating-testimonial-star {        
						          display: block;
						          float: right;        
						          width: 25px;
						          height: 20px !important;
						          background: url('catalog/view/smart_root/rating/stars.png') 0 -20px;
						      }
						      .rating-testimonial-star:hover,
						      .rating-testimonial-star:hover ~ .rating-testimonial-star,
						      .rating-testimonial-input:checked ~ .rating-testimonial-star {
						          background-position: 0 0;
						      }
						      [type="radio"]:not(:checked)+label, [type="radio"]:checked+label {padding-left: 0 !important;left: 0px;}
						      .input-field label{top:0;left:0;}
						      [type="radio"]:not(:checked)+label:before{border:none !important;}
						      [type="radio"]:checked+label:after{border:none !important;background:transparent !important;}
			        	</style>
			         	<div><?php echo $entry_rating; ?> (<?php echo $entry_bad; ?> - <?php echo $entry_good; ?>)</div>
			         	<span class="rating-testimonial">
					        <input type="radio" class="rating-testimonial-input"
					            id="rating-testimonial-input-1-5" name="rating" required <?php if (!isset($_COOKIE['Social'])) { ?>disabled<?php } ?> value="5">
					        <label for="rating-testimonial-input-1-5" class="rating-testimonial-star"></label>
					        <input type="radio" class="rating-testimonial-input"
					            id="rating-testimonial-input-1-4" name="rating" <?php if (!isset($_COOKIE['Social'])) { ?>disabled<?php } ?> value="4">
					        <label for="rating-testimonial-input-1-4" class="rating-testimonial-star"></label>
					        <input type="radio" class="rating-testimonial-input"
					            id="rating-testimonial-input-1-3" name="rating" <?php if (!isset($_COOKIE['Social'])) { ?>disabled<?php } ?> value="3">
					        <label for="rating-testimonial-input-1-3" class="rating-testimonial-star"></label>
					        <input type="radio" class="rating-testimonial-input"
					            id="rating-testimonial-input-1-2" name="rating" <?php if (!isset($_COOKIE['Social'])) { ?>disabled<?php } ?> value="2">
					        <label for="rating-testimonial-input-1-2" class="rating-testimonial-star"></label>
					        <input type="radio" class="rating-testimonial-input"
					            id="rating-testimonial-input-1-1" name="rating" <?php if (!isset($_COOKIE['Social'])) { ?>disabled<?php } ?> value="1">
					        <label for="rating-testimonial-input-1-1" class="rating-testimonial-star"></label>
					    </span>

			    		
			      		
			        </div>
			        <div class="input-field col s12 m6">
			          <input type="text" <?php if (!isset($_COOKIE['Social'])) { ?>disabled<?php } ?> class="browser-default" placeholder="<?php echo $entry_title; ?>" name="title" value="<?php echo $title; ?>" size = 40 />

			          <script type="text/javascript"><!--
						$('input[name=\'title\']').autocomplete({
							delay: 0,
							source: function(request, response) {
								$.ajax({
									url: 'index.php?route=affiliate/tracking/autocomplete&filter_name=' +  encodeURIComponent(request.term),
									dataType: 'json',
									success: function(json) {
										response($.map(json, function(item) {
											return {
												label: item.name,
												value: item.link
											}
										}));
									}
								});
								
							},
							select: function(event, ui) {
								$('input[name=\'title\']').attr('value', ui.item.label);										
								return false;
							}
						});
						//-->
						</script> 
			        </div>
			      </div>
			      <div class="row">
			        <div class="input-field col s12">
			        <div></div>
			          <textarea style="height: 70px;" id="description"<?php if (!isset($_COOKIE['Social'])) { ?>disabled<?php } ?> placeholder="<?php echo $entry_enquiry; ?>" name="description" class="browser-default"></textarea>
			        </div>
			      </div>
				  <div style="text-align: center;">
				  	<?php if (isset($_COOKIE['Social'])) { ?>
					<a onclick="$('#testimonial').submit();" class="waves-effect grey waves-light btn" style="margin-bottom: 6px;"><span><?php echo $add_button; ?></span></a>
					<?php } else { ?>
					<a class="waves-effect waves-light btn" style="cursor: default;margin-bottom: 6px;"><span><?php echo $add_button; ?></span></a>
					<?php } ?>
				  </div>
            </div>
          </div>
        </div>
      </div>

      <div class="buttons">
		<!--
		<?php print_r($_COOKIE['Social']); ?>
		
		-->
		<?php if (isset($_COOKIE['Social'])) { ?>
		<?php foreach ($infos as $info) { ?>
		<?php if ($_COOKIE["Social"] == $info['uid']) { ?>
		<input type="text" name="image" value="<?php echo $info['image']; ?>" style="visibility:hidden" />
		<?php if ($info['user_type'] == 'Facebook') { ?>
        <input type="text" name="user_type" value="1" style="visibility:hidden" />
		<?php } else if ($info['user_type'] == 'Vkontakte') { ?>
		<input type="text" name="user_type" value="3" style="visibility:hidden" />
		<?php } else if ($info['user_type'] == 'Google') { ?>
		<input type="text" name="user_type" value="4" style="visibility:hidden" />
		<?php } else if ($info['user_type'] == 'Mailru') { ?>
		<input type="text" name="user_type" value="5" style="visibility:hidden" />
		<?php } else { ?>
		<input type="text" name="user_type" value="0" style="visibility:hidden" />
		<?php } ?>
		 <input type="text" name="email" value="<?php echo $info['email']; ?>"  style="visibility:hidden" />
		 <input type="text" name="uid" value="<?php echo $info['uid']; ?>" style="visibility:hidden" />
		 <?php } } } ?>
      </div>
    </form>
  </div>
</div></div>
  <div class="bottom">
  
        
        
    <div class="left"></div>
    <div class="right"></div>
    <div class="center"></div>
  </div>
</div>
<?php echo $footer; ?> </div>