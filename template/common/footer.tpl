  <?php
    if(!in_array($this_route,$part_routes)) { ?>
      <script type="text/javascript" src="catalog/view/smartv3/js/smart.js?v=0.1.33"></script>
    <?php }
  ?>
<link rel="stylesheet" href="catalog/view/smartv3/css/category-promo.css?v=0.0.47"/>

  <link rel="stylesheet" type="text/css" media="none" onload="if(media!='all')media='all'" href="catalog/view/smartv3/css/footer.css?v=0.0.715">

  <div class="__promo_content __new_content_home __categories_landing __footer_promo">
    <div class="__new_content_center_align">
      <div class="__new_categories_home">

        <div class="__new_categories_home_block1 __new_categories_home_block1_laptop" style="margin-top: 40px;">

          <?php foreach ($promo_categories as $index => $promo_category) { ?>

            <a href="<?= $promo_category['href']; ?>" class="__new_category_home_category">
              <?php if($promo_category['main_image']) { ?>
              <div class="__new_categories_image_container">
                <img class="__new_category_home_category_image" src="<?= $promo_category['main_image']; ?>" alt="<?= $promo_category['name']; ?>" />
              </div>
              <?php } ?>
              <h2 class="__new_category_home_category_name"><?= $promo_category['name']; ?></h2>
            </a>
            <?php } ?>

        </div>

      </div>
    </div>
  </div>

  <footer class="__new_footer">
    <span class="__new_product_disponibility"><?php echo $valability; ?></span>
    <div class="__new_footer_suricat_container">
      <img class="__new_footer_suricat img_lazy_load" src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="catalog/view/smartv3/img/__new_footer/Footer-meerkats.png" alt="main background">
    </div>
    <div id="__new_cookie_disclaimer" class="__new_cookie_disclaimer">
      <div>
        <?php echo $cookie_disclaimer; ?>
      </div>
    </div>
    <div class="payments" >
      <img src="catalog/view/smartv3/img/payments/visa-box.svg">
      <img src="catalog/view/smartv3/img/payments/master-box.svg">
      <img src="catalog/view/smartv3/img/payments/apay-box.svg">
      <img src="catalog/view/smartv3/img/payments/maib-box.svg">
    </div>
    <div class="__new_line_footer"></div>
    <div class="__new_footer_bottom_block">
      <img class="__new_footer_logo img_lazy_load" src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="catalog/view/smartv3/img/footer/logo_smart_footer_2-1-o.png" alt="logo">
      <span class="__new_copyright"><?php echo $copyright; ?></span>

      <div class="__new_footer_social">
        <div class="__new_ic_page_bott_1">
          <a href="https://www.facebook.com/smart.md.moldova/" target="_blank"></a>
        </div>
        <div class="__new_ic_page_bott_2">
          <a href="//instagram.com/smart.moldova" target="_blank"></a>
        </div>
      </div>
    </div>
    <div style="opacity: 0;">Administrat de <a target="_blank" href="https://minicode.md">Minicode</a></div>
  </footer>
  <!-- visely-js -->
  <script type="text/javascript" async src="https://storage.googleapis.com/visely-assets/static/74mosv2covp1tqieoh6lu8edqd/visely-recommendations-core.js?0987654325"></script>
  <script defer="defer" src="catalog/view/smartv3/js/materialize/components.min.js?v=1.4"></script>

  <!-- AnyQuery -->
    <?php if($lang == 'ru') { ?>
      <script type="text/javascript">
        var digiScript = document.createElement('script');
        digiScript.src = '//cdn.diginetica.net/2044/client.js?ts=' + Date.now();
        digiScript.defer = true;
        digiScript.async = true;
        document.body.appendChild(digiScript);
      </script>
    <?php } else { ?>
      <script type="text/javascript">
        var digiScript = document.createElement('script');
        digiScript.src = '//cdn.diginetica.net/2063/client.js?ts=' + Date.now();
        digiScript.defer = true;
        digiScript.async = true;
        document.body.appendChild(digiScript);
      </script>
    <?php } ?>

  <script>
    function addToCart(product_id,quantity) {
      $.ajax({
        url: 'index.php?route=checkout/cart/add',
        type: 'post',
        data: { product_id: product_id, quantity: quantity},
        dataType: 'json',
        success: function(json) {
          if (json['success']) {
            location.reload();
          } else {
            console.log('There was an error')
          }
        }
      });
    }

  </script>
  <!-- End AnyQuery -->


  <!-- Roistat -->
  <?php
      $roistatClass = 'electronice';
      if (isset($firstParentCategory) && is_scalar($firstParentCategory)) {
          switch(true) {
              case 1054 === (int) $firstParentCategory:
                  $roistatClass = 'mobila';
                  break;
              case 1489 === (int) $firstParentCategory:
                  $roistatClass = 'fashion';
                  break;
              case 749 === (int) $firstParentCategory:
                  $roistatClass = 'electrocasnice';
                  break;
              default:
                  $roistatClass = 'electronice';
                  break;
          }
      } else {
          $roistatClass = 'electronice';
          $roistatCurUrl = (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
          switch(true) {
              case preg_match('/(mobila)/', $roistatCurUrl):
                  $roistatClass = 'mobila';
                  break;
              case preg_match('/(fashion)/', $roistatCurUrl):
                  $roistatClass = 'fashion';
                  break;
              case preg_match('/(electrocasnice)/', $roistatCurUrl):
                  $roistatClass = 'electrocasnice';
                  break;
              default:
                  $roistatClass = 'electronice';
                  break;
          }
      }
  ?>
  <script>
      window.roistatCurrentProductCategory_dev = "<?= $firstParentCategory ?>";
      window.roistatCurrentProductCategory = "<?= $roistatClass ?>";
  </script>

  <!--
  <script>
    (function(w, d, s, h, id) { w.roistatProjectId = id; w.roistatHost = h; var p = d.location.protocol == "https:" ? "https://" : "http://"; var u = /^.*roistat_visit=[^;]+(.*)?$/.test(d.cookie) ? "/dist/module.js" : "/api/site/1.0/"+id+"/init"; var js = d.createElement(s); js.charset="UTF-8"; js.async = 1; js.src = p+h+u; var js2 = d.getElementsByTagName(s)[0]; js2.parentNode.insertBefore(js, js2);})(window, document, 'script', 'cloud.roistat.com', '1dc8baba8916679bba429e39975e406d');
  </script>
  -->

  <script src="roistat/scripts.js?v=1.02"></script>

  <script>
    $(document).on('click', '#bingc-passive-phone-form-button', () => sendBinotelToRoistat(window.BinotelGetCall || null));
    $(document).on('keyup', '#bingc-passive-get-phone-form-input', (event) => (Number(event.keyCode) === 13) && sendBinotelToRoistat(window.BinotelGetCall || null));

    let checkDoubleSend = false;
    let sendBinotelToRoistat = (data) => {
      if (!checkDoubleSend) {
        checkDoubleSend = true;

        let phone = $("#bingc-passive-get-phone-form-input").val();
        if (phone.length >= 9 && phone.match('^[0-9 ]+$')) {
          data = data || {status: "error"};
          data.phone = phone;
          data.page = document.location.href;

          $.ajax({
              url: '/roistat/wbhook.binotel.form.php',
              type: 'POST',
              contentType: 'application/json',
              data: JSON.stringify(data),
              dataType: 'json'
          });

          setTimeout(() => {
              checkDoubleSend = false;
          }, 1000);
        }
      }
    }
  </script>

  <script>
    $(document).on('focus','#bingc-passive-get-phone-form-input',function(){
      $(this).val('373');
      $(this).attr('maxlength', '11').attr('minlength', '11');
    });
    $(document).on('input','#bingc-passive-get-phone-form-input',function(){
      input = $(this);
      val = input.val();
      filteredVal = val.replace(new RegExp(/[^\d]/,'ig'), "");
      input.val(filteredVal);
      //handle the 4th element to prevent 0 after 373
      if(val.length==4){
        if(val.charAt(3) == 0){
          input.val('373');
        }
      }
      //prevent removing 373 from input
      if(val.length<3){
        input.val('373');
      }
    });
  </script>
  <!-- Roistat -->

  <!-- Google Tag Manager (noscript) -->
  <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PWKRK9S"
  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
  <!-- End Google Tag Manager (noscript) -->

  <noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=699360150198708&ev=PageView&noscript=1"; /></noscript>

  <!-- Yadro CRM -->
  <script type="text/javascript">
  (function(d, w, k) {
      w.introvert_callback = function() {
          try {
              w.II = new IntrovertIntegration(k);
          } catch (e) {console.log(e)}
      };

      var n = d.getElementsByTagName("script")[0],
          e = d.createElement("script");

      e.type = "text/javascript";
      e.async = true;
      e.src = "https://api.yadrocrm.ru/js/cache/"+ k +".js";
      n.parentNode.insertBefore(e, n);
  })(document, window, '2fffd5b1');
  </script>
  <!-- Yadro CRM -->

  <script>
  $(document).on('fbq-init', function() {
      $(document).on("click", "#bingc-passive-phone-form-button, .cerc_social.call.mobileVersion",function() {
        fbq('track', 'Lead');
      });
    });
  </script>

    <!-- New Chat -->

<script >

  $( document ).ready(
    function() {
         
      $('.__new_header_chat_container').on('click', function() {
      
        ( window.onload = function (a,m,o,c,r,m){a[m]={id:"266053",hash:"922df86c34f36724352aa8094c2a0400c767ac7438e4ddd4d96b134c191d38f9",locale:"ru",inline:false,setMeta:function(p){this.params=(this.params||[]).concat([p])}};a[o]=a[o]||function(){(a[o].q=a[o].q||[]).push(arguments)};var d=a.document,s=d.createElement('script');s.async=true;s.id=m+'_script';s.src='https://gso.amocrm.ru/js/button.js?1663017593';d.head&&d.head.appendChild(s)}(window,0,'amoSocialButton',0,20,'amo_social_button'));

          $('.__new_header_chat_container').off('click');
      });
      
     

    }
  );

</script>
  
   <!-- New Chat -->
  
  <!-- Custom Scrollbar -->
  <script defer src="catalog/view/smartv3/js/jquery.mCustomScrollbar.concat.min.js?v=1.0.4"></script>

  <!-- Slick Slider -->
  <script defer src="catalog/view/javascript/slick/slick/slick.min.js?v=0.0.1"></script>
  


  </body>
</html>
