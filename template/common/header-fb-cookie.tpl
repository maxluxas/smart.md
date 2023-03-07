<?php
  $actual_link = ''.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
?>
<!DOCTYPE html>
<html dir="<?=$direction?>" lang="<?=$lang?>">


  <head>
    <base href="<?=$base?>" />
    <meta charset="utf-8">
    <title><?=$title?></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="theme-color" content="#ffcc33" />
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="#ffcc33">
    <meta name="msapplication-navbutton-color" content="#ffcc33">
    <meta name="robots" content="INDEX,FOLLOW">
    <meta name="author" content="Smart Click SRL">

    <? if($description): ?>
      <meta name="description" content="<?=$description?>" />
    <? endif; ?>
    <? if($keywords): ?>
      <meta name="keywords" content="<?=$keywords?>" />
    <? else: ?>
      <meta name="keywords" content="<?=$keywords_hp?>" />
    <? endif; ?> 
    
    <link rel="canonical" href="//www.smart.md" />
    <? if($icon): ?>
      <link href="//www.smart.md/catalog/view/smartv3/img/favicon_smart.png" rel="icon" />
    <?endif; ?>
    <? foreach ($links as $link): ?>
      <link href="<?=$link['href']?>" rel="<?=$link['rel']?>" />
    <?endforeach; ?>
    <!-- Autofill search -->
    <script type="text/javascript" data-cfasync="false" defer="defer" src="catalog/view/javascript/jquery/livesearch-hh.js"></script>
    
    

    <!-- Autofill search END-->
    <!-- SMART THEME -->
    <!-- Materialize CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">
    <link rel="stylesheet" href="catalog/view/smartv3/css/smart.css" />
    <link rel="shortcut icon" type="image/x-icon" href="catalog/view/smartv3/img/favicon_smart.png" />
    <link rel="stylesheet" type="text/css" href="catalog/view/smartv3/font/icons_font.css" />
    <link rel="stylesheet" href="catalog/view/smartv3/css/imports.css" />
    <link rel="stylesheet" href="catalog/view/smartv3/css/query.css" />
    <link href="//fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- smart_root ********************************************************* -->
   
    <link href='https://fonts.googleapis.com/css?family=Oswald:300,400|Roboto+Slab:300,400|Roboto:300,400,500,700|Roboto+Condensed:400' rel='stylesheet' type='text/css'>
    <!-- CSS // Bootstrap, Nivo Slider, jCarousel, fancyBox, Cloud Zoom, colorbox -->
    <script type="text/javascript" data-cfasync="false" defer="defer" src="catalog/view/smartv3/js/emojione.js"></script>
    <script type="text/javascript" data-cfasync="false" src="//code.jquery.com/jquery-1.9.1.min.js"></script>
    <script data-cfasync="false" src="//code.jquery.com/jquery-migrate-1.1.1.min.js"></script>
  </head>

  <body>
<!-- COOKIE -->

<?php
  $ref=$_SERVER['HTTP_REFERER'];
  $ref_site = parse_url($ref, PHP_URL_HOST);
  $query_string=$_SERVER['QUERY_STRING'];

    if (preg_match("/gclid/i" , $query_string)) {
        setcookie('contact_adwords', 'contact_adwords', time() + 86400, '/');
    } elseif ($_GET['utm_source']=='google_display') {
        setcookie('contact_display', 'contact_display', time() + 86400, '/');
    } elseif ($_GET['utm_source']=='facebook_ads') {
        setcookie('contact_facebook', 'contact_facebook', time() + 86400, '/');
    } elseif ($_GET['utm_source']=='facepost') {
        setcookie('facebook_post', 'facebook_post', time() + 86400, '/');
    } elseif ($_GET['utm_source']=='banner_numbers') {
        setcookie('contact_email', 'contact_email', time() + 86400, '/');
    } elseif ($_GET['utm_source']=='anunt_999') {
        setcookie('contact_999', 'contact_999', time() + 86400, '/');
    }
  
?>
<!-- .COOKIE -->
<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-TLNFFZ"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-TLNFFZ');</script>
<!-- End Google Tag Manager -->
<a href="https://plus.google.com/110517861930753027084?rel=author"></a>
<a href="https://plus.google.com/110517861930753027084" rel="publisher"></a>
  <script type="text/javascript" data-cfasync="false">
(function($) {
  var oldHTML = $.fn.html;
  $.fn.formhtml = function() {
    if (arguments.length) return oldHTML.apply(this,arguments);
    $("input,button", this).each(function() {
      this.setAttribute('value',this.value);
    });
    $("textarea", this).each(function() {
      this.innerHTML = this.value;
    });
    $("input:radio,input:checkbox", this).each(function() {
      if (this.checked) this.setAttribute('checked', 'checked');
      else this.removeAttribute('checked');
    });
    $("option", this).each(function() {
      if (this.selected) this.setAttribute('selected', 'selected');
      else this.removeAttribute('selected');
    });
    return oldHTML.apply(this);
  };
})(jQuery);

    $(document).ready(function(){
      var intRegex = /[0-9 -()+]+$/;
      $('.buy_one_click').live('click', function() {
        
        var form = $(this).parents('form');
        form.find('.phone_error').html('');
        phone = form.find('input[name="tAP_CA_Mobile"]').val();

        if((phone.length < 4) || (!intRegex.test(phone))){
          form.find('.phone_error').html('<?php echo $this->language->get('text_one_click_wrong'); ?>');
          return;
        }

        post_data = form.serialize();
        $.ajax({
          type:'post',
          url:'index.php?route=module/oneclick/order',
          data:post_data,
          dataType:'json',
          success:function(data){
            form.html(data);
          }
        });
      });

      //getcall
$("#bingc-passive-get-phone-form-input").attr("placeholder", "Numărul tău de telefon");
    });

  </script>
<a class="bingc-action-open-passive-form produs-v3" data-getcall-title-in-working-hours="Vrei să te sunăm în 30 de secunde?" data-getcall-description="Solicitare de apel" style="position: fixed;bottom: 105px;right: 32px;z-index: 99;">
  <div class="cerc_social call waves-effect waves-light" style="border:2px solid #fff !important;background: #ffcc33;margin: 0 auto;width: 50px;height: 50px;position: fixed;right: 25px;bottom: 90px;border-radius: 50%;border: 2px solid #fff;box-shadow: 0px 5px 15px 0px rgba(0, 0, 0, .15);cursor: pointer;">
 <i class="icon-phone iicon-ic_phone_black_24px" style="color:#fff;padding: 9px;font-size: 29px;top: 8px;"></i>
  </div>
  <p class="descript_func" style="display:none;">Solicită Apel</p>
  </a>

<div class="filter-item-bg" style="display:none;"></div>
<?php if (isset($_GET['unsub'])) { ?>
<a class="btn unsub-click" style="display:none;" onclick="Materialize.toast('Vă multumim că ați rămas cu noi!', 400)">Toast!</a>
<script type="text/javascript">
$( document ).ready(function() {
  jQuery(function(){
   jQuery('.unsub-click').click();
  });
});
  </script>
<style>.toast{position: fixed;width: 250px;left: 40%;margin-top: 10%;}</style>
<?php } ?>
<!-- START HEADER -->
  <div id="overlayh"></div>

    <header id="top_bar" class="mobile_serch_br">
      <div class="cont_header_info">

      <? if($logo): ?>
        <a href="<?=$home?>" title="<?=$name?>">
          <img src="<?=$logo?>" id="top_logo" width="210" height="41" alt="Telefoane mobile" />
        </a>
      <? endif; ?>
        <?=$language?>


<div style="display:none">

</div>

        <form id="search_bar_form" autocomplete="off">
        <div class="mobile_gradient" style=""></div>
        <div id="search" class="box">
          
          <i class="iicon-ic_search_black_24px"></i>
          <input id="cautare_input" onClick="this.setSelectionRange(0, this.value.length)" class="search_m form-control seach_bar" name="search" type="text" placeholder="<?php echo $cauta_printre; ?>" value="">
          <span class="iicon-close close_search"></span>

          <aside id="box_info_after_search">
            <div class="row">
              <div class="col s12 m6 l6 cels_info cleli1">
                <div class="nu_a_gasit" style="display:none;font-size: 16px;font-weight: bold;"><?php echo $nu_a_gasit; ?>
                   <?php
  $ref=$_SERVER['HTTP_REFERER'];
  $ref_site = parse_url($ref, PHP_URL_HOST);
  $query_string=$_SERVER['QUERY_STRING'];

    if (preg_match("/gclid/i" , $query_string)) {

        setcookie('contact_display', 'contact_display', time() - 1, '/');
        setcookie('contact_facebook', 'contact_facebook', time() - 1, '/');
        setcookie('facebook_post', 'facebook_post', time() - 1, '/');
        setcookie('contact_email', 'contact_email', time() - 1, '/');
        setcookie('contact_999', 'contact_999', time() - 1, '/');
        echo "<span class='roistat-phone068693820-number'>068 693 820</span>";

    } elseif ($_GET['utm_source']=='google_display') {

        setcookie('contact_adwords', 'contact_adwords', time() - 1, '/');
        setcookie('contact_facebook', 'contact_facebook', time() - 1, '/');
        setcookie('facebook_post', 'facebook_post', time() - 1, '/');
        setcookie('contact_email', 'contact_email', time() - 1, '/');
        setcookie('contact_999', 'contact_999', time() - 1, '/');
        echo "069 931 008";

    } elseif ($_GET['utm_source']=='facebook_ads') {

        setcookie('contact_adwords', 'contact_adwords', time() - 1, '/');
        setcookie('contact_display', 'contact_display', time() - 1, '/');
        setcookie('facebook_post', 'facebook_post', time() - 1, '/');
        setcookie('contact_email', 'contact_email', time() - 1, '/');
        setcookie('contact_999', 'contact_999', time() - 1, '/');
        echo "069 931 022";

    } elseif ($_GET['utm_source']=='facepost') {

        setcookie('contact_adwords', 'contact_adwords', time() - 1, '/');
        setcookie('contact_display', 'contact_display', time() - 1, '/');
        setcookie('contact_facebook', 'contact_facebook', time() - 1, '/');
        setcookie('contact_email', 'contact_email', time() - 1, '/');
        setcookie('contact_999', 'contact_999', time() - 1, '/');
        echo "060 892 579";

    } elseif ($_GET['utm_source']=='banner_numbers') {

        setcookie('contact_adwords', 'contact_adwords', time() - 1, '/');
        setcookie('contact_display', 'contact_display', time() - 1, '/');
        setcookie('contact_facebook', 'contact_facebook', time() - 1, '/');
        setcookie('facebook_post', 'facebook_post', time() - 1, '/');
        setcookie('contact_999', 'contact_999', time() - 1, '/');
        echo "060 300 905";

    } elseif ($_GET['utm_source']=='anunt_999') {

        setcookie('contact_adwords', 'contact_adwords', time() - 1, '/');
        setcookie('contact_display', 'contact_display', time() - 1, '/');
        setcookie('contact_facebook', 'contact_facebook', time() - 1, '/');
        setcookie('facebook_post', 'facebook_post', time() - 1, '/');
        setcookie('contact_email', 'contact_email', time() - 1, '/');
        echo "068 693 822";

    } else {

        if (isset($_COOKIE['contact_adwords'])) {
              echo "<span class='roistat-phone068693820-number'>068 693 820</span>";
          } elseif (isset($_COOKIE['contact_display'])) {
              echo "069 931 008";
          } elseif (isset($_COOKIE['contact_facebook'])) {
              echo "069 931 022";
          } elseif (isset($_COOKIE['facebook_post'])) {
              echo "060 892 579";
          } elseif (isset($_COOKIE['contact_email'])) {
              echo "060 300 905";
          } elseif (isset($_COOKIE['contact_999'])) {
              echo "068 693 822";
          } else {
              echo "<span class='roistat-phone069181718-number'>069 18 17 18</span>";
          }

        }
  
  ?>
                    
                </div>
                <ul id="sugestii_list" class="firs_lst">
                  <li><h4 class="title_sectio"><?php echo $sugestii; ?></h4></li>
                  <li class="opi_tel"><a id="sugestii_a" for="search">Samsung J5</a></li>
                  <li class="opi_tel"><a id="sugestii_a" for="search">iPhone 7</a> </li>
                  <li class="opi_tel"><a id="sugestii_a" for="search">Samsung J3</a></li>
                  <li class="opi_tel"><a id="sugestii_a" for="search">iPhone 6s</a> </li>
                  <li class="opi_tel"><a id="sugestii_a" for="search">Samsung S7</a></li>
                  <li class="opi_tel"><a id="sugestii_a" for="search">Samsung J7</a></li>
                  <li class="opi_tel"><a id="sugestii_a" for="search">Dell Inspiron</a></li>
                </ul>
              </div>
              <div class="col s12 m6 l6 cels_info celio2">
                <ul id="categ_list" class="firs_lst" style="display:block !important;padding-left: 20px;font-size: 18px;color:#000;">
                  <li><h4 class="title_sectio"><?php echo $direct_categorii; ?></h4></li>
                  <li ><a href="//www.smart.md/telefoane/smartphones"><?=$menu_smartphones_title?></a> </li>
                  <!-- <li ><a href="//www.smart.md/telefoane/telefoane-clasice"><?=$menu_tel_clasice_title?></a></li> -->
                  <li ><a href="//www.smart.md/laptopuri/notebook"><?=$menu_notebook_title?> </a></li>
                  <li ><a href="//www.smart.md/tablete-1/tablete"><?=$menu_tablets_title?> </a></li>
                  <li ><a href="//www.smart.md/alte-categorii/tv"><?=$menu_tv_title?> </a></li>
                  <li ><a href="//www.smart.md/telefoane/foto"><?=$menu_foto_title?> </a></li> 
                </ul>
                <ul class="second_lst cel_categ_gasit">
                  <li><h4 class="title_sectio"><?=$result_cauta?> <b class="search_kw"></b> <?=$result_in_categor?></h4></li>
                  <li id="rezultate_categ">
                    
                  </li>
                </ul>
              </div>
            </div>
          </aside>
        </div>
        </form>

        <div id="butons">
          <span class="iicon-menu meniu_btn">
          <span class="menu-title"><?=$menu_title?></span></span>
            <a class="iicon-ic_compare_arrows_black_24px compare count_opt_compare <?php if ($text_compare==0) { ?>hide-count<?php } ?>" title="<?=$compare_text?>" href="<?=$compare?>">
                  <span id="compare-total" class="count_opt cnt_1"><?=$text_compare?></span></a>
           <!-- START CART -->
              <?=$cart?>
          <!-- END CART -->
        </div>      
      </div>
          
    </header>
    <aside id="floating_meniu">
        <div class="fl_meniu_content">
        <i id="close_meniu" class="iicon-close"></i>
          <div class="row meniu_table">
          <?//=HTTP_SERVER?>
            <div class="col l4 m12 men_boxes bm1">
              <div class="row">
                <div class="col m5 s12 mobclick1">
                  <img class="men_rep_img" src="catalog/view/smartv3/img/meniu/el1.png" alt="">
                  <h2 id="titlu_categ" class="tt1"><?=$menu_tel_title?></h2>
                </div>
                <div class="col m7 s12">
                  <ul class="Meniu_options M1">
                  <style>.indicator_options li a {color:#000;}</style>
                    <div class="indicator_options"><div class="srrll_box"></div></div>
                    <li><a href="/telefoane/smartphones" class="op1"><?=$menu_smartphones_title?></a></li>
                    <!-- <li><a href="/telefoane/telefoane-clasice" class="op2"><?=$menu_tel_clasice_title?></a></li> -->
                    <li><a href="/telefoane/telefoane-dect" class="op2"><?=$menu_tel_dect_title?></a></li>
                    <li><a href="/telefoane/accesorii-gsm" class="op3"><?=$menu_accesorii_title?></a></li>
                    <li><a href="/resigilate/smartphone-resigilate" class="op4"><?=$menu_tablete_resigilate?></a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col l4 m12 men_boxes bm2">
              <div class="row">
                <div class="col m5 s12 mobclick2">
                  <img class="men_rep_img" src="catalog/view/smartv3/img/meniu/el2.png" alt="">
                  <h2 id="titlu_categ" class="tt2"><?=$menu_laptops_title?></h2>
                </div>
                <div class="col m7 s12">
                  <ul class="Meniu_options M2">
                    <div class="indicator_options indc2"><div class="srrll_box"></div></div>
                    <li><a href="/laptopuri/notebook" class="op1"><?=$menu_notebook_title?></a></li>
                    <li><a href="/laptopuri/accesorii-notebook" class="op2"><?=$menu_accesorii_notebook_title?></a></li>
                    <li><a href="/laptopuri/componente-pc" class="op3"><?=$menu_componente_title?></a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col l4 m12 men_boxes bm3">
              <div class="row">
                <div class="col m5 s12 mobclick3">
                  <img class="men_rep_img" src="catalog/view/smartv3/img/meniu/el3.png" alt="">
                  <h2 id="titlu_categ" class="tt3"><?=$menu_tv_title?></h2>
                </div>
                <div class="col m7 s12">
                  <ul class="Meniu_options M3">
                    <div class="indicator_options indc2"><div class="srrll_box"></div></div>
                    <li><a href="alte-categorii/tv" class="op1"><?=$menu_tv_title?></a></li>
                    <li><a href="alte-categorii/tv/accesorii-tv" class="op2"><?=$menu_tv_accesorii?></a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col l4 m12 men_boxes bm4">
              <div class="row">
                <div class="col m5 s12 mobclick4">
                  <img class="men_rep_img" src="catalog/view/smartv3/img/meniu/el4.png" alt="">
                  <h2 id="titlu_categ"><?=$menu_other_categories_title?></h2>
                </div>
                <div class="col m7 s12">
                  <ul class="Meniu_options M4">
                    <div class="indicator_options"><div class="srrll_box"></div></div>
                    <li><a href="tablete-1/tablete" class="op1"><?=$menu_tablets_title?></a></li>
                    <li><a href="alte-categorii/foto" class="op2"><?=$menu_foto_title?></a></li>
                    <li><a href="alte-categorii/it" class="op3"><?=$menu_it_title?></a></li>
                    <li><a href="alte-categorii/gadgets" class="op4"><?=$menu_gadgets_title?></a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col l4 m12 men_boxes bm5">
              <div class="row">
                <div class="col m5 s12 mobclick5">
                  <img class="men_rep_img" src="catalog/view/smartv3/img/meniu/el5.png" alt="">
                  <h2 id="titlu_categ"><?=$menu_promo_title?></h2>
                </div>
                <div class="col m7 s12">
                  <ul class="Meniu_options M5">
                    <div class="indicator_options indc5"><div class="srrll_box"></div></div>
                    <li><a href="/promo" class="op1"><?=$menu_all_promo_title?></a></li>
                    <?php if(!empty($oferte_speciale)){ ?>
                    <?php for($i = 1; $i <= count($oferte_speciale); $i++){ ?>
                        <li><a href="<?php echo $oferte_speciale[$i-1]['link']; ?>" class="opEx<?php echo ($i + 1); ?>"><?php echo $oferte_speciale[$i-1]['title']; ?></a></li>
                      <?php } ?>
                    <?php } ?>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col l4 m12 men_boxes bm6">
              <div class="row">
                <div class="col m5 s12 mobclick6">
                  <img class="men_rep_img" src="catalog/view/smartv3/img/meniu/el6.png" alt="">
                  <h2 id="titlu_categ"><?=$menu_info_title?></h2>
                </div>
                <div class="col m7 s12">
                  <ul class="Meniu_options M6">
                    <div class="indicator_options"><div class="srrll_box"></div></div>
                    <li><a href="opinii_companie" class="opEx1"><?=$opinii_companie?></a></li>
                    <li><a href="jobs" class="opEx2"><?=$text_cariere?></a></li>
                    <li><a href="despre" class="opEx3"><?=$text_despre_noi?></a></li>
                    <li><a href="servicii" class="opEx4"><?=$menu_servicii_title?></a></li>
                     <li><a href="contacte" class="opEx5"><?=$text_contacte?></a></li>
                  <!--   <li><a href="garantie" class="opEx6"><?=$text_garantie?></a></li>
                    <li><a href="achitari" class="opEx7"><?=$text_credit?></a></li>              -->       
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
    </aside>
<div class="notification" id="notification"></div>
<!-- START CONTAINER -->
<div<?php if($this->config->get('tranda_header_bar') == '1') { ?> id="container"<?php } ?> class="container"></div>