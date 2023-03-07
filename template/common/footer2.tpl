<script type="text/javascript" src="catalog/view/smartv3/js/smart.js"></script>
<!-- END CONTAINER -->
<footer style="display:none">
    <div id="fb-root"></div>
    <script id="facebook-jssdk" src="//connect.facebook.net/ro_RO/sdk.js#xfbml=1&amp;version=v2.8&amp;appId=1689017351344836"></script><script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/ro_RO/sdk.js#xfbml=1&version=v2.8&appId=1689017351344836";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

    <?php echo $footer_content; ?>
    <script type="text/javascript"><!--
        function add_contact_footer() {
        //amo contact
         var a=$("#femail").val();
            var b=$("#fnume").val();
            if (a==null || a=="",b==null || b=="") {
              $('.phone_errorf').html('<span style="color:red">Ceva nu a mers!</span>');
              return false;
            } else {
                    var cname = {
                      productname: 'Footer (Abonare Newsletter)',
                            price: '0',
                            name: $("#fnume").val(),
                            email:$("#femail").val(),
                            status_id: '10204830',
                            web: 'Abonare Newsletter'
                    }
                    $.ajax({
                      url: '//www.smart.md/amocrm/handler.php',
                      type: 'post',
                      dataType: 'json',
                      success: function (data) {
                      },
                      data: cname
                    });

                    /* mailchimp */
                    $.ajax({
                      url: '//www.smart.md/amocrm/mailchimp.php',
                      type: 'POST',
                      data: {
                        email: $("#femail").val(),
                        fname: $("#fnume").val(),
                        lname: ''
                      },
                      success: function(data){
                        $('.phone_errorf').show();
                        if(data.indexOf("Invalid") > -1) {
                        $('.phone_errorf').html('Adresa de email nu este corecta').css('color', 'red');
                        } else if(data.indexOf('este deja abonat') > -1) {
                        $('.phone_errorf').html('Deja esti abonat.').css('color', '#000');
                        } else if(data.indexOf('Got it') > -1) {
                        $('.phone_errorf').html('Ai fost abonat cu succes!').css('color', '#000');
                          $("#femail").val('');
                          $("#fnume").val('');
                        }
                      },
                      error: function() {
                        $('.phone_errorf').html('Ceva nu a mers!').css('color', 'red');
                      }
                    });
           }
        }
        //-->
        </script>
</footer>
<!-- START FOOTER -->
<div class="footer">
	<div class="footer-top">
        <div class="gpc">
        	<div class="left"></div>
        	<div class="right">
            	<?php if($this->config->get('tranda_display_shipping_f2') == '1') { ?>
                <p class="free"><i class="<?php echo $this->config->get('tranda_shipping_icon'); ?>"></i><?php echo $this->config->get('tranda_shipping_title'); ?>: <?php echo $this->config->get('tranda_shipping_info'); ?></p>
                <?php } ?>
                <?php if($this->config->get('tranda_display_pinterest_f') == '1') { ?>
                <a class="social-icons" href="//<?php echo $this->config->get('tranda_pinterest_url'); ?>" rel="tooltip" data-placement="top" data-original-title="<?php echo $this->config->get('tranda_pinterest_title'); ?>"><i class="<?php echo $this->config->get('tranda_pinterest_icon'); ?>"></i></a>
                <?php } ?>
                <?php if($this->config->get('tranda_display_linkedin_f') == '1') { ?>
                <a class="social-icons" href="//<?php echo $this->config->get('tranda_linkedin_url'); ?>" rel="tooltip" data-placement="top" data-original-title="<?php echo $this->config->get('tranda_linkedin_title'); ?>"><i class="<?php echo $this->config->get('tranda_linkedin_icon'); ?>"></i></a>
                <?php } ?>
                <?php if($this->config->get('tranda_display_github_f') == '1') { ?>
                <a class="social-icons" href="//<?php echo $this->config->get('tranda_github_url'); ?>" rel="tooltip" data-placement="top" data-original-title="<?php echo $this->config->get('tranda_github_title'); ?>"><i class="<?php echo $this->config->get('tranda_github_icon'); ?>"></i></a>
                <?php } ?>
                <?php if($this->config->get('tranda_display_google_f') == '1') { ?>
                <a class="social-icons" href="//<?php echo $this->config->get('tranda_google_url'); ?>" rel="tooltip" data-placement="top" data-original-title="<?php echo $this->config->get('tranda_google_title'); ?>"><i class="<?php echo $this->config->get('tranda_google_icon'); ?>"></i></a>
                <?php } ?>
                <?php if($this->config->get('tranda_display_twitter_f') == '1') { ?>
                <a class="social-icons" href="//<?php echo $this->config->get('tranda_twitter_url'); ?>" rel="tooltip" data-placement="top" data-original-title="<?php echo $this->config->get('tranda_twitter_title'); ?>"><i class="<?php echo $this->config->get('tranda_twitter_icon'); ?>"></i></a>
                <?php } ?>
                <?php if($this->config->get('tranda_display_facebook_f') == '1') { ?>
                <a class="social-icons" href="//<?php echo $this->config->get('tranda_facebook_url'); ?>" rel="tooltip" data-placement="top" data-original-title="<?php echo $this->config->get('tranda_facebook_title'); ?>"><i class="<?php echo $this->config->get('tranda_facebook_icon'); ?>"></i></a>
                <?php } ?>
                <?php if($this->config->get('tranda_display_myicon1_f') == '1') { ?>
                <a class="social-icons" href="//<?php echo $this->config->get('tranda_myicon1_url'); ?>" rel="tooltip" data-placement="top" data-original-title="<?php echo $this->config->get('tranda_myicon1_title'); ?>"><img class="" src="image/<?php echo $this->config->get('tranda_myicon1'); ?>" alt="" /></a>
                <?php } ?>
                <?php if($this->config->get('tranda_display_myicon2_f') == '1') { ?>
                <a class="social-icons" href="//<?php echo $this->config->get('tranda_myicon2_url'); ?>" rel="tooltip" data-placement="top" data-original-title="<?php echo $this->config->get('tranda_myicon2_title'); ?>"><img class="" src="image/<?php echo $this->config->get('tranda_myicon2'); ?>" alt="" /></a>
                <?php } ?>
                <?php if($this->config->get('tranda_display_myicon3_f') == '1') { ?>
                <a class="social-icons" href="//<?php echo $this->config->get('tranda_myicon3_url'); ?>" rel="tooltip" data-placement="top" data-original-title="<?php echo $this->config->get('tranda_myicon3_title'); ?>"><img class="" src="image/<?php echo $this->config->get('tranda_myicon3'); ?>" alt="" /></a>
                <?php } ?>
            </div>
        </div>
    </div>
	<div class="footer-middle">
        <div class="gpc">
            <ul class="global-contact" style="display:none;">
            	<li>
                                    <i class="<?php echo $this->config->get('tranda_phone_icon'); ?>"></i>
                                    <p>
                                        <b><?php echo $tranda_phone_title; ?></b>
                                    </p>
                </li>
                <li>
                                    <i class="<?php echo $this->config->get('tranda_address_icon'); ?>"></i>
                                    <p>
                                        <b style="font-size:16px; color:#ccc;"><?php echo $tranda_address_info; ?></b><br />
                                        <span style="color: #999;"><?php echo $tranda_address_title; ?></span>
                                    </p>
                </li>
                <li>
                                    <i class="<?php echo $this->config->get('tranda_schedule_icon'); ?>"></i>
                                    <p>
                                        <b style="font-size:16px; color:#ccc;"><?php echo $tranda_schedule_day; ?></b><br />
                                       <span style="color: #999;"> <?php echo $tranda_schedule_title; ?></span>
                                        <?php if($this->config->get('tranda_schedule_more_info') != '') { ?><span class="infotext"><?php echo $this->config->get('tranda_schedule_more_info'); ?></span><?php } ?>
                                    </p>
               </li>
            	<?php if($this->config->get('tranda_display_email_f') == '1') { ?>
                <li>
                    <i class="<?php echo $this->config->get('tranda_email_icon'); ?>"></i>
                    <p>
                        <b><?php echo $this->config->get('tranda_email_title'); ?></b><br />
                        <a href="mailto:<?php echo $this->config->get('tranda_email_info_1'); ?>"><?php echo $this->config->get('tranda_email_info_1'); ?></a>
                        <?php if($this->config->get('tranda_email_info_2') != '') { ?><br /><a href="mailto:<?php echo $this->config->get('tranda_email_info_2'); ?>"><?php echo $this->config->get('tranda_email_info_2'); ?></a><?php } ?>
                        <?php if($this->config->get('tranda_email_info_3') != '') { ?><br /><a href="mailto:<?php echo $this->config->get('tranda_email_info_3'); ?>"><?php echo $this->config->get('tranda_email_info_3'); ?></a><?php } ?>
                    </p>
                </li>
                <?php } ?>
            	<?php if($this->config->get('tranda_display_address_f') == '1') { ?>
                <li>
                    <i class="<?php echo $this->config->get('tranda_address_icon'); ?>"></i>
                    <p>
                        <b><?php echo $this->config->get('tranda_address_title'); ?></b><br />
                        <?php echo $this->config->get('tranda_address_info'); ?>
                    </p>
                </li>
                <?php } ?>
            	<?php if($this->config->get('tranda_display_gps_f') == '1') { ?>
                <li>
                    <i class="<?php echo $this->config->get('tranda_gps_icon'); ?>"></i>
                    <p>
                        <b><?php echo $this->config->get('tranda_gps_title'); ?></b><br />
                        <?php echo $this->config->get('tranda_gps_latitude'); ?>
                        <br /><?php echo $this->config->get('tranda_gps_longitude'); ?>
                    </p>
                </li>
                <?php } ?>
                <?php if($this->config->get('tranda_display_schedule_f') == '1') { ?>
                <li>
                    <i class="<?php echo $this->config->get('tranda_schedule_icon'); ?>"></i>
                    <p>
                        <b><?php echo $this->config->get('tranda_schedule_title'); ?></b><br />
                        
                        <?php echo $this->config->get('tranda_schedule_day1'); ?> - <?php echo $this->config->get('tranda_schedule_day2'); ?>: <?php echo $this->config->get('tranda_schedule_hour1'); ?><sup><?php echo $this->config->get('tranda_schedule_minutes1'); ?></sup> - <?php echo $this->config->get('tranda_schedule_hour2'); ?><sup><?php echo $this->config->get('tranda_schedule_minutes2'); ?></sup>
                        <?php if($this->config->get('tranda_schedule_more_info') != '') { ?><span class="infotext"><?php echo $this->config->get('tranda_schedule_more_info'); ?></span><?php } ?>
                    </p>
                </li>
                <?php } ?>
            	<?php if($this->config->get('tranda_display_shipping_f') == '1') { ?>
                <li>
                    <i class="<?php echo $this->config->get('tranda_shipping_icon'); ?>"></i>
                    <p>
                        <b><?php echo $this->config->get('tranda_shipping_title'); ?></b><br />
                        <?php echo $this->config->get('tranda_shipping_info'); ?>
                    </p>
                </li>
                <?php } ?>
            </ul>
            <div class="menu" style="display:none;">
            	<?php if ($informations) { ?>
                <ul class="list">
                    <li class="title" style="font-size: 18px;"><?php echo $text_information; ?></li>
                    <?php foreach ($informations as $information) { ?>
                    <li style="font-size: 18px;"><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                    <?php } ?>
                </ul>
                <?php } ?>
                <ul class="list">
                    <li class="title" style="font-size: 18px;"><?php echo $text_service; ?></li>
                    <li style="font-size: 16px;"><a href="<?php echo $contact; ?>" style="padding-left: 2px;"><i class="icon-map-marker" style="margin: 3px 14px 0px 0px;"></i><?php echo $text_contact; ?></a></li>
                    <style>
					.a_grey {background:url("image/data/logo/a_grey.png");margin: 0px 11px 0 -2px;width:16px; height:16px;position:absolute;}
					li:hover .a_grey {background:url("image/data/logo/favico.png");}
					</style>
                    <li style="font-size: 16px;"><a href="/about-us.html" style="padding-left: 26px;"><div class="a_grey"></div><?php echo $text_despre_noi; ?></a></li>
                    <li style="font-size: 16px;"><a href="/index.php?route=affiliate/login"><i class="icon-bullhorn" style="margin: 3px 9px 0px 0px;"></i><?php echo $text_affiliate; ?></a></li>
                    <li style="font-size: 16px;"><a href="/showroom.html"><i class="icon-building" style="margin: 3px 14px 0px 0px;"></i><?php echo $text_showroom; ?></a></li>
					 <li style="font-size: 16px;"><a href="/consumatori"><i class="icon-group" style="margin: 3px 10px 0px 0px;"></i><?php echo $text_consumatori; ?></a></li>
                    
                </ul>
                
               <!-- <ul class="list">
                    <li class="title" style="font-size: 18px;"><?php echo $text_extra; ?></li>
                     
                     
                    <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
                    <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
                    <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
                    <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                </ul>-->
                <ul class="list">
                   <li style="font-size: 18px;" class="title"><?php echo $text_account; ?></li>
                   <li style="font-size: 16px;"><a href="/livrare.html" title="livrare gratuita"><i class="icon-truck" style="margin: 3px 14px 0px 0px;"></i><?php echo $text_livrare; ?></a></li>
                   <li style="font-size: 16px;"><a href="/garantie.html" title="garantie"><i class="icon-ok-circle" style="margin: 3px 14px 0px 0px;"></i><?php echo $text_garantie; ?></a></li>
                   <li style="font-size: 16px;"><a href="<?php echo $return; ?>" title="retur"><i class="icon-refresh" style="margin: 3px 14px 0px 0px;"></i><?php echo $text_return; ?></a></li>
                   <li style="font-size: 16px;"><a href="/credit.html" title="in credit"><i class="icon-money" style="margin: 3px 14px 0px 0px;"></i><?php echo $text_credit; ?></a></li>
                  <!--   <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                    <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                    <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                    <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>-->
                    <li style="font-size: 16px;"><a href="//smart.md/jobs"><i class="icon-eye-open" style="margin: 3px 14px 0px 0px;"></i><?php echo $text_cariere; ?></a></li>
                </ul>

            </div>
            
        </div>
    </div>
	<div class="footer-bottom" style="background-color: #323232;">
        <div class="gpc">
          <div style="width:50%;float:left;">
                <?php if (preg_match('/(?i)msie [1-9]/',$_SERVER['HTTP_USER_AGENT'])) { ?>
				        <img src="image/logo_bw.png" width="179" height="41" alt="magazin online" style="float:left;margin-top: 10px;" />
   				      <?php } else { ?>
                <img src="image/data/logo/logo-footer.svg" width="179" alt="magazin online" height="41" style="float:left;margin-top: 10px;" />
                <?php } ?>
        	     <p class="powered">"Smart Click" SRL © 2013</p>
               <div class="footer-payment" style="float:left;">
              <?php if($this->config->get('tranda_display_western_union_f') == '1') { ?>
                  <?php if($this->config->get('tranda_western_union_url') != '') { ?>
                  <a href="//<?php echo $this->config->get('tranda_western_union_url'); ?>"><span class="payment_icon western_union"> </span></a>
                    <?php } else { ?>
                  <span class="payment_icon western_union"> </span>
                    <?php } ?>
                <?php } ?>
              <?php if($this->config->get('tranda_display_visa_electron_f') == '1') { ?>
                  <?php if($this->config->get('tranda_visa_electron_url') != '') { ?>
                  <a href="//<?php echo $this->config->get('tranda_visa_electron_url'); ?>"><span class="payment_icon visa_electron"> </span></a>
                    <?php } else { ?>
                  <span class="payment_icon visa_electron"> </span>
                    <?php } ?>
                <?php } ?>
              <?php if($this->config->get('tranda_display_visa_f') == '1') { ?>
                  <?php if($this->config->get('tranda_visa_url') != '') { ?>
                  <a href="//<?php echo $this->config->get('tranda_visa_url'); ?>"><span class="payment_icon visa"> </span></a>
                    <?php } else { ?>
                  <span class="payment_icon visa"> </span>
                    <?php } ?>
                <?php } ?>
              <?php if($this->config->get('tranda_display_switch_f') == '1') { ?>
                  <?php if($this->config->get('tranda_switch_url') != '') { ?>
                  <a href="//<?php echo $this->config->get('tranda_switch_url'); ?>"><span class="payment_icon switch"> </span></a>
                    <?php } else { ?>
                  <span class="payment_icon switch"> </span>
                    <?php } ?>
                <?php } ?>
              <?php if($this->config->get('tranda_display_solo_f') == '1') { ?>
                  <?php if($this->config->get('tranda_solo_url') != '') { ?>
                  <a href="//<?php echo $this->config->get('tranda_solo_url'); ?>"><span class="payment_icon solo"> </span></a>
                    <?php } else { ?>
                  <span class="payment_icon solo"> </span>
                    <?php } ?>
                <?php } ?>
              <?php if($this->config->get('tranda_display_paypal_f') == '1') { ?>
                  <?php if($this->config->get('tranda_paypal_url') != '') { ?>
                  <a href="//<?php echo $this->config->get('tranda_paypal_url'); ?>"><span class="payment_icon paypal"> </span></a>
                    <?php } else { ?>
                  <span class="payment_icon paypal"> </span>
                    <?php } ?>
                <?php } ?>
              <?php if($this->config->get('tranda_display_mastercard_f') == '1') { ?>
                  <?php if($this->config->get('tranda_mastercard_url') != '') { ?>
                  <a href="//<?php echo $this->config->get('tranda_mastercard_url'); ?>"><span class="payment_icon mastercard"> </span></a>
                    <?php } else { ?>
                  <span class="payment_icon mastercard"> </span>
                    <?php } ?>
                <?php } ?>
              <?php if($this->config->get('tranda_display_maestro_f') == '1') { ?>
                  <?php if($this->config->get('tranda_maestro_url') != '') { ?>
                  <a href="//<?php echo $this->config->get('tranda_maestro_url'); ?>"><span class="payment_icon maestro"> </span></a>
                    <?php } else { ?>
                  <span class="payment_icon maestro"> </span>
                    <?php } ?>
                <?php } ?>
              <?php if($this->config->get('tranda_display_discover_f') == '1') { ?>
                  <?php if($this->config->get('tranda_discover_url') != '') { ?>
                  <a href="//<?php echo $this->config->get('tranda_discover_url'); ?>"><span class="payment_icon discover"> </span></a>
                    <?php } else { ?>
                  <span class="payment_icon discover"> </span>
                    <?php } ?>
                <?php } ?>
              <?php if($this->config->get('tranda_display_direct_f') == '1') { ?>
                  <?php if($this->config->get('tranda_direct_url') != '') { ?>
                  <a href="//<?php echo $this->config->get('tranda_direct_url'); ?>"><span class="payment_icon direct"> </span></a>
                    <?php } else { ?>
                  <span class="payment_icon direct"> </span>
                    <?php } ?>
                <?php } ?>
              <?php if($this->config->get('tranda_display_delta_f') == '1') { ?>
                  <?php if($this->config->get('tranda_delta_url') != '') { ?>
                  <a href="//<?php echo $this->config->get('tranda_delta_url'); ?>"><span class="payment_icon delta"> </span></a>
                    <?php } else { ?>
                  <span class="payment_icon delta"> </span>
                    <?php } ?>
                <?php } ?>
              <?php if($this->config->get('tranda_display_cirrus_f') == '1') { ?>
                  <?php if($this->config->get('tranda_cirrus_url') != '') { ?>
                  <a href="//<?php echo $this->config->get('tranda_cirrus_url'); ?>"><span class="payment_icon cirrus"> </span></a>
                    <?php } else { ?>
                  <span class="payment_icon cirrus"> </span>
                    <?php } ?>
                <?php } ?>
              <?php if($this->config->get('tranda_display_american_express_f') == '1') { ?>
                  <?php if($this->config->get('tranda_american_express_url') != '') { ?>
                  <a href="//<?php echo $this->config->get('tranda_american_express_url'); ?>"><span class="payment_icon american_express"> </span></a>
                    <?php } else { ?>
                  <span class="payment_icon american_express"> </span>
                    <?php } ?>
                <?php } ?>
              <?php if($this->config->get('tranda_display_payment_banner') == '1') { ?>
                    <?php if($this->config->get('tranda_payment_banner') != '') { ?>
                  <?php if($this->config->get('tranda_payment_banner_url') != '') { ?>
                  <a href="//<?php echo $this->config->get('tranda_payment_banner_url'); ?>"><img class="payment_banner" src="image/<?php echo $this->config->get('tranda_payment_banner'); ?>" alt="" /></a>
                    <?php } else { ?>
                  <img class="payment_banner" src="image/<?php echo $this->config->get('tranda_payment_banner'); ?>" alt="" />
                    <?php } ?>
                    <?php } ?>
                <?php } ?>
       
            </div>
          </div>
          <!-- Page plugin's width will be 190px -->
          <div style="float:right;background: #fff;padding: 20px;margin-top: 18px;" class="fb_frame">
            <div id="fb-root"></div>
            <div class="fb-like" data-href="https://www.facebook.com/smart.md.moldova/" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>
          <!-- .Page plugin's width will be 190px -->
          <!-- FB Pixel -->
            <script>
            !function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
            n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
            n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
            t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
            document,'script','//connect.facebook.net/en_US/fbevents.js');
            fbq('init', '699360150198708');
            fbq('track', "PageView");</script>
            <noscript><img height="1" width="1" style="display:none"
            src="https://www.facebook.com/tr?id=699360150198708&ev=PageView&noscript=1";
            /></noscript>
            <!-- .FB Pixel -->
            <script>
                $(function() {
                    $('#nav_up').click(
                        function (e) {
                            $('html, body').animate({scrollTop: '0px'}, 500);
                        }
                    );
                });
            </script>
			
        </div>
    </div>
</div>
<!-- END FOOTER -->
<!-- Rating@Mail.ru counter -->
<script type="text/javascript">
var _tmr = window._tmr || (window._tmr = []);
_tmr.push({id: "2816821", type: "pageView", start: (new Date()).getTime()});
(function (d, w, id) {
  if (d.getElementById(id)) return;
  var ts = d.createElement("script"); ts.type = "text/javascript"; ts.async = true; ts.id = id;
  ts.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//top-fwz1.mail.ru/js/code.js";
  var f = function () {var s = d.getElementsByTagName("script")[0]; s.parentNode.insertBefore(ts, s);};
  if (w.opera == "[object Opera]") { d.addEventListener("DOMContentLoaded", f, false); } else { f(); }
})(document, window, "topmailru-code");
</script><noscript><div style="position:absolute;left:-10000px;">
<img src="//top-fwz1.mail.ru/counter?id=2816821;js=na" style="border:0;" height="1" width="1" alt="Рейтинг@Mail.ru" />
</div></noscript>
<!-- //Rating@Mail.ru counter -->

<!-- Rating@Mail.ru counter dynamic remarketing appendix -->
<script type="text/javascript">
var _tmr = _tmr || [];
_tmr.push({
    type: 'itemView',
    productid: 'VALUE',
    pagetype: 'VALUE',
    list: 'VALUE',
    totalvalue: 'VALUE'
});
</script>
<style type="text/css">.ca_civ-chat-powered-by{display: none !important;}</style>
<!-- // Rating@Mail.ru counter dynamic remarketing appendix -->
<script type="text/javascript" defer="defer" src="catalog/view/smart_root/fancybox/js/jquery.fancybox-1.3.4.js"></script>
<script type="text/javascript" defer="defer" src="catalog/view/smart_root/cloud-zoom/js/cloud-zoom.1.0.2.js"></script>
<script type="text/javascript" defer="defer" src="catalog/view/smart_root/colorbox/js/jquery.colorbox-min.js"></script>
<!-- Materialize JavaScript -->
<script src="catalog/view/smartv3/js/materialize.min.js"></script>
<script src="catalog/view/smartv3/js/forms_materialize.js"></script>

<script src="catalog/view/smart_root/material/js/init.js"></script>
<!-- Rating@Mail.ru counter -->
<script type="text/javascript">
var _tmr = window._tmr || (window._tmr = []);
_tmr.push({id: "2816821", type: "pageView", start: (new Date()).getTime()});
(function (d, w, id) {
  if (d.getElementById(id)) return;
  var ts = d.createElement("script"); ts.type = "text/javascript"; ts.async = true; ts.id = id;
  ts.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//top-fwz1.mail.ru/js/code.js";
  var f = function () {var s = d.getElementsByTagName("script")[0]; s.parentNode.insertBefore(ts, s);};
  if (w.opera == "[object Opera]") { d.addEventListener("DOMContentLoaded", f, false); } else { f(); }
})(document, window, "topmailru-code");
</script><noscript><div style="position:absolute;left:-10000px;">
<img src="//top-fwz1.mail.ru/counter?id=2816821;js=na" style="border:0;" height="1" width="1" alt="Рейтинг@Mail.ru" />
</div></noscript>
<!-- //Rating@Mail.ru counter -->
<script type="text/javascript">
    (window.Image ? (new Image()) : document.createElement('img')).src = location.protocol + '//vk.com/rtrg?r=M8gJQsAUJoJb1JAQ7N*3zIYU4TlIc/XVRPvPniyZOi*hTOntmuD41iFK1jnU6yCb/0Chq26b*lockmETJLGqfK8C3P*D9DDlLFJgIlFukZDxTOsxTGjXyhvUGyGL2UpmZNzsnD4vTMcKOXwGozI13DSZx3xZ39*qq9iHstPz9oE-&pixel_id=1000037222';
</script>
</body>
</html>