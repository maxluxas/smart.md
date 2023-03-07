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
      <link href="//www.smart.md/image/data/logo/favico.gif" rel="icon" height="16" width="16" />
    <?endif; ?>
    <? foreach ($links as $link): ?>
      <link href="<?=$link['href']?>" rel="<?=$link['rel']?>" />
    <?endforeach; ?>
    <!-- Autofill search -->
<script type="text/javascript" data-cfasync="false" defer="defer" src="catalog/view/javascript/jquery/livesearch-hh.js"></script>
<!-- Autofill search END-->
    <!-- SMART THEME -->
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">
    <link rel="stylesheet" href="catalog/view/smartv3/css/smart.css">
    <link rel="shortcut icon" type="image/x-icon" href="catalog/view/smartv3/img/smart.md_favicon.png" />
    <link rel="stylesheet" type="text/css" href="catalog/view/smartv3/font/icons_font.css" />
    <link rel="stylesheet" href="catalog/view/smartv3/css/imports.css" />
    <link rel="stylesheet" href="catalog/view/smartv3/css/query.css" />
    <link href="//fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- jQuery -->
    <script type="text/javascript" src="//code.jquery.com/jquery-1.9.1.min.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- smart_root ********************************************************* -->
   
    <link href='//fonts.googleapis.com/css?family=Roboto:400,300,700&subset=latin,cyrillic-ext,cyrillic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="catalog/view/smart_root/stylesheet/smart_stylesheet.css" media="all" />
    <link rel="stylesheet" type="text/css" href="catalog/view/smart_root/stylesheet/skin/smart_summer.css" media="all" />
    <link rel="stylesheet" type="text/css" href="catalog/view/smart_root/stylesheet/smart_responsive_mobile.css" media="all" />

    <link rel="stylesheet" type="text/css" href="<?=$base?>catalog/view/smart_root/fontawesome/css/font-awesome.css" media="all" />
    <link type="text/css" rel="stylesheet" href="catalog/view/smart_root/material/css/materialize.min.css"  media="screen,projection"/>
    <link href="//fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <? if($this->config->get('tranda_responsive') == '0'): ?>
    <link rel="stylesheet" type="text/css" href="catalog/view/smart_root/stylesheet/smart_static.css" media="all" />
    <? endif; ?>
    
    <!-- CSS // Bootstrap, Nivo Slider, jCarousel, fancyBox, Cloud Zoom, colorbox -->
    <link rel="stylesheet" type="text/css" href="catalog/view/smart_root/bootstrap/css/bootstrap-tooltip.css" media="all" />
    <link rel="stylesheet" type="text/css" href="catalog/view/smart_root/nivo-slider/css/nivo-slider.css" media="all" />
    <link rel="stylesheet" type="text/css" href="catalog/view/smart_root/jcarousel/css/smart-jcarousel.css" />
    <link rel="stylesheet" type="text/css" href="catalog/view/smart_root/fancybox/css/jquery.fancybox-1.3.4.css" media="all" />
    <link rel="stylesheet" type="text/css" href="catalog/view/smart_root/cloud-zoom/css/cloud-zoom.css" media="all" />
    <link rel="stylesheet" type="text/css" href="catalog/view/smart_root/colorbox/css/colorbox.css" media="all" />
    <!-- CSS // Bootstrap, Nivo Slider, jCarousel, fancyBox, Cloud Zoom, colorbox -->

    <!-- JAVASCRIPT // SMART, Bootstrap, Nivo Slider, jCarousel, fancyBox, Cloud Zoom, colorbox -->
    <script type="text/javascript" data-cfasync="false" defer="defer" src="catalog/view/smart_root/nivo-slider/js/jquery.nivo.slider.js"></script>

    <script type="text/javascript" data-cfasync="false" src="admin/view/javascript/jquery/ui/2jquery-ui-1.8.16.custom.min.js"></script>
    <script type="text/javascript" src="catalog/view/smart_root/jcarousel/js/jquery.jcarousel.min.js"></script>
    <script type="text/javascript" data-cfasync="false" src="catalog/view/smart_root/javascript/common.js"></script>

    <script type="text/javascript" defer="defer" src="catalog/view/smart_root/fancybox/js/jquery.fancybox-1.3.4.js"></script>
    <script type="text/javascript" defer="defer" src="catalog/view/smart_root/cloud-zoom/js/cloud-zoom.1.0.2.js"></script>
    <script type="text/javascript" defer="defer" src="catalog/view/smart_root/colorbox/js/jquery.colorbox-min.js"></script>


    <!-- Scroll Update -->

    <!-- Scroll Update end -->
    <!-- JAVASCRIPT // SMART, Bootstrap, Nivo Slider, jCarousel, fancyBox, Cloud Zoom, colorbox -->
    <!-- FILE -->
  </head>
  <body>
  <a href="https://plus.google.com/110517861930753027084?rel=author"></a>
<a href="https://plus.google.com/110517861930753027084" rel="publisher"></a>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=133669810175036";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<style type="text/css">
    .one-click-order, .buy_one_click, #button-oneclick {
      cursor: pointer;
      text-decoration: none;
    }
  </style>
  <script type="text/javascript">(function(d,n){var s,a,p;s=document.createElement("script");s.type="text/javascript";s.async=true;s.src=(document.location.protocol==="https:"?"https:":"http:")+"//cdn.nudgespot.com"+"/nudgespot.js";a=document.getElementsByTagName("script");p=a[a.length-1];p.parentNode.insertBefore(s,p.nextSibling);window.nudgespot=n;n.init=function(t){function f(n,m){var a=m.split('.');2==a.length&&(n=n[a[0]],m=a[1]);n[m]=function(){n.push([m].concat(Array.prototype.slice.call(arguments,0)))}}n._version=0.1;n._globals=[t];n.people=n.people||[];n.params=n.params||[];m="track register unregister identify set_config people.delete people.create people.update people.create_property people.tag people.remove_Tag".split(" ");for(var i=0;i<m.length;i++)f(n,m[i])}})(document,window.nudgespot||[]);nudgespot.init("fe5e9a6e4e27a9af9b807895953a2b52");</script>
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
  <a class="bingc-action-open-passive-form desktop-view produs-v3" data-getcall-title-in-working-hours="Vrei să te sunăm în 30 de secunde?" data-getcall-description="Solicitare de apel" style="position: fixed;bottom: 105px;right: 24px;z-index: 99;">
  <div class="cerc_social call waves-effect waves-light" style="border:2px solid #fff !important;background: #ffcc33;margin: 0 auto;width: 60px;height: 60px;border-radius: 50%;border: 2px solid #fff;box-shadow: 0px 5px 15px 0px rgba(0, 0, 0, .15);cursor: pointer;">
 <i class="icon-phone" style="color:#fff;padding: 17px;font-size: 32px;"></i>
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




        <form id="search_bar_form" autocomplete="off">
        <div id="search" class="box">
          
          <i class="iicon-ic_search_black_24px"></i>
          <input id="cautare_input" class="search_m form-control seach_bar" name="search" type="text" placeholder="<?php echo $cauta_printre; ?>">
          <span class="iicon-close close_search"></span>

          <aside id="box_info_after_search">
            <div class="row">
              <div class="col s12 m6 l6 cels_info cleli1">
                <ul id="sugestii_list" class="firs_lst">
                  <li><h4 class="title_sectio"><?php echo $sugestii; ?></h4></li>
                  <li class="opi_tel"><a for="search" href="">iPhone 6s</a> </li>
                  <li class="opi_tel"><a for="search" href="">Samsung J5</a></li>
                  <li class="opi_tel"><a for="search" href="">iPhone SE</a></li>
                  <li class="opi_tel"><a for="search" href="">Samsung J7</a></li>
                  <li class="opi_tel"><a for="search" href="">Macbook Pro</a></li>
                </ul>
              </div>
              <div class="col s12 m6 l6 cels_info celio2">
                <ul id="categ_list" class="firs_lst" style="display:block !important;    padding-left: 20px;
    font-family: RobotoRegular;
    font-size: 18px;color:#000;">
                  <li><h4 class="title_sectio"><?php echo $direct_categorii; ?></h4></li>
                  <li ><a href="//www.smart.md/telefoane/smartphones"><?=$menu_smartphones_title?></a> </li>
                  <li ><a href="//www.smart.md/telefoane/telefoane-clasice"><?=$menu_tel_clasice_title?></a></li>
                  <li ><a href="//www.smart.md/laptopuri/notebook"><?=$menu_notebook_title?> </a></li>
                  <li ><a href="//www.smart.md/tablete-1/tablete"><?=$menu_tablets_title?> </a></li>
                  <li ><a href="//www.smart.md/tablete-1/ebooks"><?=$menu_ebooks_title?> </a></li>
                  <li ><a href="//www.smart.md/telefoane/tv"><?=$menu_tv_title?> </a></li>
                  <li ><a href="//www.smart.md/telefoane/foto"><?=$menu_foto_title?> </a></li>
                </ul>
                <ul class="second_lst cel_categ_gasit">
                  <li><h4 class="title_sectio">Caută <b class="search_kw"></b> în categoriile</h4></li>
                  <li id="rezultate_categ">
                    
                  </li>
                </ul>
              </div>
            </div>
          </aside>
        </div>
        </form>

        <div id="butons">
          <span class="iicon-menu meniu_btn"></span>
            <a href="<?=$compare?>" class="iicon-ic_compare_arrows_black_24px compare" title="<?=$compare_text?>">
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
                    <li><a href="/telefoane/telefoane-clasice" class="op2"><?=$menu_tel_clasice_title?></a></li>
                    <li><a href="/telefoane/telefoane-dect" class="op3"><?=$menu_tel_dect_title?></a></li>
                    <li><a href="/telefoane/accesorii-gsm" class="op4"><?=$menu_accesorii_title?></a></li>
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
                  </ul>
                </div>
              </div>
            </div>
            <div class="col l4 m12 men_boxes bm3">
              <div class="row">
                <div class="col m5 s12 mobclick3">
                  <img class="men_rep_img" src="catalog/view/smartv3/img/meniu/el3.png" alt="">
                  <h2 id="titlu_categ" class="tt3"><?=$menu_tablets_title?></h2>
                </div>
                <div class="col m7 s12">
                  <ul class="Meniu_options M3">
                    <div class="indicator_options indc2"><div class="srrll_box"></div></div>
                    <li><a href="/tablete-1/tablete" class="op1"><?=$menu_tablets_title?></a></li>
                    <li><a href="/tablete-1/ebooks" class="op2"><?=$menu_ebooks_title?></a></li>
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
                    <li><a href="/tv" class="op1"><?=$menu_tv_title?></a></li>
                    <li><a href="/foto" class="op2"><?=$menu_foto_title?></a></li>
                    <li><a href="/it" class="op3"><?=$menu_it_title?></a></li>
                    <li><a href="/gadgets" class="op4"><?=$menu_gadgets_title?></a></li>
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
                  </ul>
                </div>
              </div>
            </div>
            <div class="col l4 m12 men_boxes bm6">
              <div class="row">
                <div class="col m5 s12 mobclick6">
                  <img class="men_rep_img" src="catalog/view/smartv3/img/meniu/el5.png" alt="">
                  <h2 id="titlu_categ"><?=$menu_info_title?></h2>
                </div>
                <div class="col m7 s12">
                  <ul class="Meniu_options M6">
                    <div class="indicator_options"><div class="srrll_box"></div></div>
                    <li><a href="/about-us.html" class="op1"><?=$text_despre_noi?></a></li>
                    <li><a href="/showroom.html" class="op2">Showroom</a></li>
                    <li><a href="/jobs" class="op3"><?=$text_cariere?></a></li>
                    <li><a href="/index.php?route=information/contact" class="op4"><?=$text_contacte?></a></li>
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