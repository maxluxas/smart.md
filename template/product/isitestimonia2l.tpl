<?php echo $header; ?>
<div class="container-top">
    <div class="gpc">
    	<!-- START CONTENT TOP -->
        <div class="content-top">
            <!-- START BREADCRUMB -->
            <div class="breadcrumb">
            	<h2>
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                <?php } ?>
                </h2>
            </div>            
            <h1 class="page_title"><?php echo $heading_title; ?></h1>
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
  	
  	<div class="content"><p><?php echo $text_conditions ?></p></div>
    
    
  
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="testimonial">
	<div class="content">
        <table width="100%">
          <tr>
            <td style="width:40%"><?php echo $entry_title ?><br />
              <input type="text" name="title" value="<?php echo $title; ?>" size = 40 />
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
				//--></script> 
              <?php if ($error_title) { ?>
              <span class="error"><?php echo $error_title; ?></span>
              <?php } ?></td>
            <td rowspan="3" style="vertical-align:top;">
			

			<script>
            $.fn.tabs = function() {
			var selector = this;
			this.each(function() {
				var obj = $(this); 
				$(obj.attr('onclick')).hide();
				$(obj).click(function() {
					$(selector).removeClass('selected');
					$(selector).each(function(i, element) {
						$($(element).attr('onclick')).hide();
					});
					$(this).addClass('selected');
					$($(this).attr('onclick')).fadeIn();
					return false;
				});
			});
			$(this).show();
			$(this).first().click();
			};
            </script>
            <style>
			.nav-tabs > li > a.selected, .nav-tabs > li > a.selected:hover {color: #555;background-color: #ededed;border: 1px solid #DDD;border-bottom-color: transparent;cursor: default;font-size: 14px;border-top-color: transparent;}
			.nav-tabs>li, .nav-pills>li {float: left;}
			.nav-tabs:before, .nav-pills:before, .nav-tabs:after, .nav-pills:after {display: table;content: "";line-height: 0;}
			.nav-tabs {border-bottom: 1px solid #ddd;margin-bottom: 0;}
			.nav-tabs>li {margin-bottom: -1px;}
			.nav-tabs>li, .nav-pills>li {float: left;}
			.tab-content {overflow: hidden;padding: 10px;background: #ededed;border-top: none;font-size: 14px;}
			.tab-content>.tab-pane, .pill-content>.pill-pane {display: none;}
			.tab-content>.active, .pill-content>.active {display: block;}
			.nav-tabs > li > a {padding-top: 8px;padding-bottom: 8px;line-height: 20px;border: 1px solid transparent;-webkit-border-radius: 2px 2px 0 0;-moz-border-radius: 2px 2px 0 0;border-radius: 2px 2px 0 0;font-size: 14px;}
			.nav-tabs>li>a, .nav-pills>li>a {padding-right: 12px;padding-left: 12px;margin-right: 2px;line-height: 14px;}
			ul, ol {padding: 0;margin: 10px 0 10px 25px;}
			ul, menu, dir {display: block;list-style-type: disc;-webkit-margin-before: 1em;-webkit-margin-after: 1em;-webkit-margin-start: 0px;-webkit-margin-end: 0px;-webkit-padding-start: 40px;}
			.nav {list-style: none;height: 27px;}
			.product-tab {width: 262px;margin-bottom: 0px !important;}
			.fb_iframe_widget {margin-top: 11px;margin-left: 21px;}
			a.button, input.button {color: #000;}
           </style>
           <div class="product-tab">
            <div id="tabs" class="htabs">
  				<ul class='nav nav-tabs'>
                
                <li></li>
              	</ul>
            </div>
              <div class="tab-content" <?php if (!isset($_COOKIE['Social'])) { ?>style="height: 165px;"<?php } ?>>
              
              <div class="tab-pane" id="tab-wa" data-toggle="tab" style="display:block;">
                <?php if (!isset($_COOKIE['Social'])) { ?><div style="text-align: center;font-size: 18px;padding-bottom: 16px;padding-top:30px;"><?php echo $authorization; ?></div><?php } ?>
				
			<?php if (isset($_COOKIE['Social'])) { ?>
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
			<div style="text-align: center;">
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
			<img src="<?php echo $info['image']; ?>" style="width:40px;height:40px;float: left;padding-right: 12px;" />
			<div><?php echo $info['name']; ?>,<br>
			Logged by <?php echo $info['user_type']; ?>
			<?php } } } ?>
			<br>
			
			
			
			 
			 <script>
			$(document).ready(function() {
			/* This is basic - uses default settings */	
			$("a#upload_image").fancybox()
			({
			iframe:true, 
			fastIframe:false, 
			width:auto, 
			height:auto,
			'onComplete' : function() {
			$('#fancybox-frame').load(function() { // wait for frame to load and then gets it's height
			$('#fancybox-content').height($(this).contents().find('body').height()+30);
			});
			}

			}); 
			});
			</script>
			 <style>
			 #fancybox-content {height:375px !important;}
			 #drop a {
				background-color: #ffcc33;
				padding: 12px 26px;
				color: #fff;
				font-size: 14px;
				border-radius: 2px;
				cursor: pointer;
				display: inline-block;
				margin-top: 12px;
				line-height: 1;
				}
			 #drop a:hover{background-color:#fec313;}
			 </style>			 
              </div>
              </div>
            </div>
            <script type="text/javascript"><!--
			$('#tabs a').tabs();
			//--></script>
			</td> 
            <td>
            
            	<br /><?php echo $entry_rating; ?> <br /><br /><span><?php echo $entry_bad; ?></span>&nbsp;
        		<input type="radio" name="rating" value="1" style="margin: 0;" <?php if ( $rating == 1 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="2" style="margin: 0;" <?php if ( $rating == 2 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="3" style="margin: 0;" <?php if ( $rating == 3 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="4" style="margin: 0;" <?php if ( $rating == 4 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="5" style="margin: 0;" <?php if ( $rating == 5 ) echo 'checked="checked"';?> />
        		&nbsp; <span><?php echo $entry_good; ?></span><br /><br />
			
          	</td> 
          </tr>
          <tr>
            <td style="vertical-align: top;"><?php echo $entry_enquiry ?><span class="required">*</span><br />
              <textarea name="description" style="width: 82%;height:110px;" rows="10"><?php echo $description; ?></textarea><br />
				
              <?php if ($error_enquiry) { ?>
              <span class="error"><?php echo $error_enquiry; ?></span>
              <?php } ?></td>

             <td style="vertical-align: bottom;">
              <?php if ($error_captcha) { ?>
              <span class="error"><?php echo $error_captcha; ?></span>
              <?php } ?>
              
              <img src="index.php?route=information/contact/captcha" /> <br />
		<?php echo $entry_captcha; ?><span class="required">*</span> <br />

              <input type="text" name="captcha" value="<?php echo $captcha; ?>" /><br />
		</td> 
              
          </tr>
        </table>
	  </div>
      <div class="buttons">
        <table width=100% style="margin-bottom: 30px;margin-top: 30px;">
          <tr>
            <td width=50%><a href="<?php echo $showall_url;?>"><span><?php echo $show_all; ?></span></a></td>
		<td align="right" style="float: right;margin-right: 80px;">
		<?php if (isset($_COOKIE['Social'])) { ?>
		<a onclick="$('#testimonial').submit();" class="button but_yellow"><span><?php echo $add_button; ?></span></a>
		<?php } else { ?>
		<a class="button but_yellow" style="cursor: default;"><span><?php echo $add_button; ?></span></a><div style="color:red;">*<?php echo $need_login; ?></div>
		<?php } ?>
		</td>
          </tr>
        </table>
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