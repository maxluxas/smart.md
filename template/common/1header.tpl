<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<!-- CSS // Font Awesome -->
<link rel="stylesheet" type="text/css" href="<?php echo $base; ?>catalog/view/smart_root/fontawesome/css/font-awesome.css" media="all" />
<!-- CSS // Font Awesome -->
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<meta name="robots" content="INDEX,FOLLOW">
<meta name="viewport" content="width=device-width, initial-scale=0.75, maximum-scale=0.75">
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<meta name="author" content="Smart Click SRL">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<!-- SMART THEME -->
<link href="//fonts.googleapis.com/css?family=Dosis:300,500&amp;subset=latin,latin-ext" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="catalog/view/theme/smart/stylesheet/set.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/smart/stylesheet/carousel.css" />


<link rel="stylesheet" type="text/css" href="catalog/view/smart_root/stylesheet/smart_stylesheet.css" media="all" />
<?php if($this->config->get('tranda_set_skin') == '') { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/smart_root/stylesheet/skin/smart_summer.css" media="all" />
<?php } else { ?>
<?php } ?>
<?php if($this->config->get('tranda_set_skin') == '5') { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/smart_root/stylesheet/skin/smart_summer.css" media="all" />
<?php } ?>
<?php if($this->config->get('tranda_responsive') == '') { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/smart_root/stylesheet/smart_responsive.css" media="all" />
<?php } else { ?>
<?php if($this->config->get('tranda_responsive') == '1') { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/smart_root/stylesheet/smart_responsive.css" media="all" />
<?php } ?>
<?php } ?>
<?php if($this->config->get('tranda_responsive') == '0') { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/smart_root/stylesheet/smart_static.css" media="all" />
<?php } ?>
<!-- SMART THEME -->
<!-- CSS // Bootstrap, Nivo Slider, jCarousel, fancyBox, Cloud Zoom, colorbox -->
<link rel="stylesheet" type="text/css" href="catalog/view/smart_root/bootstrap/css/bootstrap-tooltip.css" media="all" />
<link rel="stylesheet" type="text/css" href="catalog/view/smart_root/nivo-slider/css/nivo-slider.css" media="all" />
<link rel="stylesheet" type="text/css" href="catalog/view/smart_root/jcarousel/css/smart-jcarousel.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/smart_root/fancybox/css/jquery.fancybox-1.3.4.css" media="all" />
<link rel="stylesheet" type="text/css" href="catalog/view/smart_root/cloud-zoom/css/cloud-zoom.css" media="all" />
<link rel="stylesheet" type="text/css" href="catalog/view/smart_root/colorbox/css/colorbox.css" media="all" />
<!-- CSS // Bootstrap, Nivo Slider, jCarousel, fancyBox, Cloud Zoom, colorbox -->
<!-- JAVASCRIPT // SMART, Bootstrap, Nivo Slider, jCarousel, fancyBox, Cloud Zoom, colorbox -->
<script type="text/javascript" src="catalog/view/smart_root/javascript/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/smart_root/nivo-slider/js/jquery.nivo.slider.js"></script>
<script type="text/javascript" src="catalog/view/smart_root/jcarousel/js/jquery.jcarousel.min.js"></script>
<script type="text/javascript" src="catalog/view/smart_root/fancybox/js/jquery.fancybox-1.3.4.js"></script>
<script type="text/javascript" src="catalog/view/smart_root/cloud-zoom/js/cloud-zoom.1.0.2.js"></script>
<script type="text/javascript" src="catalog/view/smart_root/colorbox/js/jquery.colorbox-min.js"></script>
<script type="text/javascript" src="catalog/view/smart_root/javascript/jbmenu.js"></script>
<script type="text/javascript" src="catalog/view/smart_root/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/smart_root/javascript/bootstrap-typeahead.js"></script>
<!-- Scroll Update -->
<script type="text/javascript" src="catalog/view/smart_root/javascript/scroll_update.min.js"></script>
<!-- Scroll Update end -->
<!-- JAVASCRIPT // SMART, Bootstrap, Nivo Slider, jCarousel, fancyBox, Cloud Zoom, colorbox -->
<!-- FILE -->
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>

<style>
.typeahead {margin-top: 2px;-webkit-border-radius: 4px;-moz-border-radius: 4px;border-radius: 4px;}
.dropdown-menu {position: absolute;top: 100%;left: 0;z-index: 1000;display: none;float: left;min-width: 356px;padding: 4px 0;margin: 1px 0 0;list-style: none;background-color: #ffffff;border: 1px solid #ccc;border: 1px solid rgba(0,0,0,0.2);-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;-webkit-box-shadow: 0 5px 10px rgba(0,0,0,0.2);-moz-box-shadow: 0 5px 10px rgba(0,0,0,0.2);box-shadow: 0 5px 10px rgba(0,0,0,0.2);-webkit-background-clip: padding-box;-moz-background-clip: padding;background-clip: padding-box;}
.dropdown-menu a {display: block;padding: 3px 15px;clear: both;font-weight: normal;line-height: 18px;color: #333333;white-space: nowrap;}
.dropdown-menu a:hover {background:#ffcc33; color:#333;}
</style>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<!-- FILE -->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
$('.typeahead').typeahead()
});
//--></script>
<?php } ?>

<?php echo $google_analytics; ?>
<?php if($this->config->get('tranda_adjustment_skin') == '1') { ?>
<!-- START Adjustment Skin -->
<style type="text/css">
<?php if($this->config->get('bg_html_banner') != '') { ?>
html {<?php if($this->config->get('bg_html_color') != '') { ?> background-color:#<?php echo $this->config->get('bg_html_color'); ?>;<?php } ?> background-image:url(image/<?php echo $this->config->get('bg_html_banner'); ?>);<?php if($this->config->get('bg_html_repeat')!= '') { ?> background-repeat:<?php echo $this->config->get('bg_html_repeat'); ?>;<?php } ?><?php if($this->config->get('bg_html_attachment')!= '') { ?> background-attachment:<?php echo $this->config->get('bg_html_attachment'); ?>;<?php } ?><?php if($this->config->get('bg_html_position')!= '') { ?> background-position:<?php echo $this->config->get('bg_html_position'); ?>;<?php } ?><?php if($this->config->get('bg_html_paddingbottom') != '') { ?> padding-bottom:<?php echo $this->config->get('bg_html_paddingbottom'); ?>px;<?php } ?><?php if($this->config->get('bg_html_paddingtop') != '') { ?> padding-top:<?php echo $this->config->get('bg_html_paddingtop'); ?>px;<?php } ?>}
<?php } ?>
<?php if($this->config->get('transparent_container_top') == '1') { ?>
body { background-color:transparent !important;}
.container { background-color:transparent !important;}
.container-top { background-color:transparent !important;}
<?php } ?>
<?php if($this->config->get('heading_page')!= '') { ?>
.content-top .page_title { color:#<?php echo $this->config->get('heading_page'); ?>;}
<?php } ?>
<?php if($this->config->get('breadcrumb_text')!= '') { ?>
.breadcrumb h2 { color:#<?php echo $this->config->get('breadcrumb_text'); ?>;}
<?php } ?>
<?php if($this->config->get('breadcrumb_link')!= '') { ?>
.breadcrumb h2 a { color:#<?php echo $this->config->get('breadcrumb_link'); ?>;}
<?php } ?>
<?php if($this->config->get('breadcrumb_link_hover')!= '') { ?>
.breadcrumb h2 a:hover { color:#<?php echo $this->config->get('breadcrumb_link_hover'); ?>;}
<?php } ?>

</style>
<!-- END Adjustment Skin -->
<?php } ?>
<style>
.bg_active_cat {background-color: #666;color: #ffc900 !important;}
</style>
</head>
<body data-spy="scroll" data-target="#navbar" data-offset="0">
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=133669810175036";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<!-- START HEADER -->
<div id="header" class="header">
    <!-- start top header -->
	<div class="toph">
        <!-- START TOP RESPONSIVE -->
        <div class="top-responsive">
            <?php if (!$logged) { ?>
            <p class="welcome"><?php echo $text_welcome; ?></p>
            <?php } else { ?>
            <p class="welcome"><?php echo $text_logged; ?></p>
            <?php } ?>
            
            <?php echo $currency; ?>
        </div>
        <!-- END TOP RESPONSIVE -->
    	<div id="menu" class="gpc">
        	<div class="logo">
            	<?php if ($logo) { ?>
                <?php if (preg_match('/(?i)msie [1-9]/',$_SERVER['HTTP_USER_AGENT'])) { ?>
				<a href="<?php echo $home; ?>" title="<?php echo $name; ?>"><img src="<?php echo $logo; ?>" width="210" height="41" alt="<?php echo $name; ?>" /></a>
   				<?php } else { ?>
                <a href="<?php echo $home; ?>" title="<?php echo $name; ?>"><img src="image/data/logo/logo-header.svg" width="210" height="41" alt="<?php echo $name; ?>" /></a>
                <?php } ?>
                
            	
                <?php } ?>
            </div>
            
            
            <?php echo $language; ?>
            
            <?php if ($categories) { ?>
            <!-- START menu -->

        	<div class="top-menu">
              <ul>
                <?php foreach ($categories as $category) { ?>
                
                <?php if ($category['category_id'] == $category_id) { ?>
                <li><a style="cursor:default" class="bg_active_cat"><?php echo $category['name']; ?></a>
                <?php } else { ?>
                <li><a style="cursor:default"><?php echo $category['name']; ?></a>
                <?php } ?>
                  <?php if ($category['children']) { ?>
                  <div>
                     
                    <?php for ($i = 0; $i < count($category['children']);) { ?>
                    <ul>
                      <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                      <?php for (; $i < $j; $i++) { ?>
                      <?php if (isset($category['children'][$i])) { ?>
                      
                      
                      <?php if ($category['children'][$i]['href'] == '//smart.md/telefoane/accesorii-gsm') { ?>
                      <li><a  style="cursor:default"><i class="<?php if($this->config->get('tranda_icon_submenu') != '') { ?><?php echo $this->config->get('tranda_icon_submenu'); ?><?php } else { ?>icon-chevron-right<?php } ?>" style="float: right;margin-right: 12px;margin-top: 1px;"></i><?php echo $category['children'][$i]['name']; ?></a>
                      <?php if(isset($category['children'][$i]['level'][$i])){ ?>
						<div id="result_height">
							<?php for($x = 0; $x < count($category['children'][$i]['level']);){ ?>
							<ul>
                            <?php $z = $x + ceil(count($category['children'][$i]['level']) / $category['column']); ?>
                            <?php for(; $x < $z; $x++){ ?>
                            <li><a href="<?php echo $category['children'][$i]['level'][$x]['href']; ?>" onclick="ga('send', 'event', {
    eventCategory: 'Menu',
      eventAction: '<?php echo $category['name']; ?>',
       eventLabel: '<?php echo $category['children'][$i]['name']; ?>',
       eventValue: '<?php echo $category['children'][$i]['level'][$x]['name'] ?>'
});"><?php echo $category['children'][$i]['level'][$x]['name'] ?></a></li>
                            <?php } ?>
							</ul>
							<?php } ?>
						</div>
						<?php } ?>
                      </li>
                      <?php } elseif ($category['children'][$i]['href'] == '//smart.md/laptopuri/accesorii-it') { ?>
                        <li><a  style="cursor:default"><i class="<?php if($this->config->get('tranda_icon_submenu') != '') { ?><?php echo $this->config->get('tranda_icon_submenu'); ?><?php } else { ?>icon-chevron-right<?php } ?>" style="float: right;margin-right: 12px;margin-top: 1px;"></i><?php echo $category['children'][$i]['name']; ?></a>
                      	<?php if(isset($category['children'][$i]['level'][$i])){ ?>
						<div>
							<?php for($x = 0; $x < count($category['children'][$i]['level']);){ ?>
							<ul>
                            <?php $z = $x + ceil(count($category['children'][$i]['level']) / $category['column']); ?>
                            <?php for(; $x < $z; $x++){ ?>
                            <li><a href="<?php echo $category['children'][$i]['level'][$x]['href']; ?>" onclick="ga('send', 'event', {
    eventCategory: 'Menu',
      eventAction: '<?php echo $category['name']; ?>',
       eventLabel: '<?php echo $category['children'][$i]['name']; ?>',
       eventValue: '<?php echo $category['children'][$i]['level'][$x]['name'] ?>'
});"><?php echo $category['children'][$i]['level'][$x]['name'] ?></a></li>
                            <?php } ?>
							</ul>
							<?php } ?>
						</div>
						<?php } ?>
                      </li>
                      <?php } else { ?>
                      
                      
                      <li><a href="<?php echo $category['children'][$i]['href']; ?>" onclick="ga('send', 'event', {
    eventCategory: 'Menu',
      eventAction: '<?php echo $category['name']; ?>',
       eventLabel: '<?php echo $category['children'][$i]['name']; ?>'
});"><?php echo $category['children'][$i]['name']; ?></a></li>
                      	<?php } ?>
                      <?php } ?>
                      <?php } ?>
                    </ul>
                    <?php } ?>
                  </div>
                  <?php } ?>
                </li>
                <?php } ?>
              </ul>
            </div>
            <!-- END menu -->
            <!-- START mini menu -->
            <div id="jbmenu" class="jbmenu">
              <div class="jbtitle"><span><i class="icon-plus first-icon"></i><i class="icon-minus second-icon"></i></span><?php if($this->config->get('tranda_text_category') != '') { ?><?php echo $this->config->get('tranda_text_category'); ?><?php } else { ?><?php } ?></div>
              <div class="jbcontent">
              <ul>
                <?php foreach ($categories as $category) { ?>
                <li><a style="cursor:default"><?php echo $category['name']; ?></a><?php if ($category['children']) { ?><span class="jbchildren"><i class="icon-plus first-icon"></i><i class="icon-minus second-icon"></i></span><?php } ?>
                  <?php if ($category['children']) { ?>
                  <ul class="jbchildrenlist">
                  <?php for ($i = 0; $i < count($category['children']);) { ?>
                    <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                    <?php for (; $i < $j; $i++) { ?>
                    <?php if (isset($category['children'][$i])) { ?>
                    <li><a href="<?php echo $category['children'][$i]['href']; ?>" onclick="ga('send', 'event', {
    eventCategory: 'Menu',
      eventAction: '<?php echo $category['name']; ?>',
       eventLabel: '<?php echo $category['children'][$i]['name']; ?>'
});">- <?php echo $category['children'][$i]['name']; ?></a></li>
                    <?php } ?>
                    <?php } ?>
                  <?php } ?>
                  </ul>
                  <?php } ?>
                </li>
                <?php } ?>
              </ul>
              </div>
            </div>
            <!-- END mini menu -->
            <?php } ?>
            <?php if($this->config->get('tranda_display_header_info_h') == '1') { ?>
            <div class="customer-support">
            	<table>
                	<tbody>
                    	<tr>
                            <td class="icon"><i class="<?php echo $this->config->get('tranda_header_info_icon'); ?>"></i></td>
                            <td class="info">
                                <span class="title"><?php echo $this->config->get('tranda_header_info_title'); ?></span>
                                <span><?php echo $this->config->get('tranda_header_info_info'); ?></span>
                            </td>
                        </tr>
                    </tbody>
                </table>            
            </div>
            <?php } ?>
        </div>
    </div>
    <!-- end top header -->
    <!-- start bottom header -->
	<div<?php if($this->config->get('tranda_header_bar') == '1') { ?> id="bottomh"<?php } ?> class="bottomh">
    	<div class="gpc">
            <!-- START SHOP MENU -->
        	<div class="shop-menu">
            	<ul class="links">
                	<li class="links_home">
                    	<a href="<?php echo $home; ?>" id="links_home">
                        	<i class="<?php if($this->config->get('tranda_icon_hometab') != '') { ?><?php echo $this->config->get('tranda_icon_hometab'); ?><?php } else { ?>icon-home<?php } ?>"></i>
                            
                        </a>
                        <div class="top-shop-content" id="home_content_links">
                        	<ul class="list-top-shop home-list-top-shop">
                            	<!--<li><a href="<?php echo $home; ?>"><i class="icon-refresh"></i><?php echo $text_home; ?></a></li>-->
                                <li><a href="//smart.md/about-us.html"><img style="margin: 0px 21px 0 2px;" src="image/data/logo/favico.png" alt="magazin online"/><?php echo $text_despre_noi; ?></a></li>
                                <li style="display:none;"><a href="//smart.md/showroom.html"><i class="icon-building"></i><?php echo $text_showroom; ?></a></li>
                                <li><a href="//smart.md/index.php?route=information/contact"><i class="icon-map-marker"></i><?php echo $text_contacte; ?></a></li>
                                
                                <?php if($this->config->get('tranda_display_facebook_h') == '1') { ?>
                                <li><a target="_blank" href="//<?php echo $this->config->get('tranda_facebook_url'); ?>"><i class="<?php echo $this->config->get('tranda_facebook_icon'); ?>"></i><?php echo $this->config->get('tranda_facebook_title'); ?></a></li>
                                <?php } ?>
                                <?php if($this->config->get('tranda_display_twitter_h') == '1') { ?>
                                <li><a href="//<?php echo $this->config->get('tranda_twitter_url'); ?>"><i class="<?php echo $this->config->get('tranda_twitter_icon'); ?>"></i><?php echo $this->config->get('tranda_twitter_title'); ?></a></li>
                                <?php } ?>
                                <?php if($this->config->get('tranda_display_google_h') == '1') { ?>
                                <li><a href="//<?php echo $this->config->get('tranda_google_url'); ?>"><i class="<?php echo $this->config->get('tranda_google_icon'); ?>"></i><?php echo $this->config->get('tranda_google_title'); ?></a></li>
                                <?php } ?>
                                <?php if($this->config->get('tranda_display_github_h') == '1') { ?>
                                <li><a href="//<?php echo $this->config->get('tranda_github_url'); ?>"><i class="<?php echo $this->config->get('tranda_github_icon'); ?>"></i><?php echo $this->config->get('tranda_github_title'); ?></a></li>
                                <?php } ?>
                                <?php if($this->config->get('tranda_display_linkedin_h') == '1') { ?>
                                <li><a href="//<?php echo $this->config->get('tranda_linkedin_url'); ?>"><i class="<?php echo $this->config->get('tranda_linkedin_icon'); ?>"></i><?php echo $this->config->get('tranda_linkedin_title'); ?></a></li>
                                <?php } ?>
                                <?php if($this->config->get('tranda_display_pinterest_h') == '1') { ?>
                                <li><a href="//<?php echo $this->config->get('tranda_pinterest_url'); ?>"><i class="<?php echo $this->config->get('tranda_pinterest_icon'); ?>"></i><?php echo $this->config->get('tranda_pinterest_title'); ?></a></li>
                                <?php } ?>
                                <?php if($this->config->get('tranda_display_myicon1_h') == '1') { ?>
                                <li><a href="//<?php echo $this->config->get('tranda_myicon1_url'); ?>"><img class="myicon" src="image/<?php echo $this->config->get('tranda_myicon1'); ?>" alt="" /><?php echo $this->config->get('tranda_myicon1_title'); ?></a></li>
                                <?php } ?>
                                <?php if($this->config->get('tranda_display_myicon2_h') == '1') { ?>
                                <li><a href="//<?php echo $this->config->get('tranda_myicon2_url'); ?>"><img class="myicon" src="image/<?php echo $this->config->get('tranda_myicon2'); ?>" alt="" /><?php echo $this->config->get('tranda_myicon2_title'); ?></a></li>
                                <?php } ?>
                                <?php if($this->config->get('tranda_display_myicon3_h') == '1') { ?>
                                <li><a href="//<?php echo $this->config->get('tranda_myicon3_url'); ?>"><img class="myicon" src="image/<?php echo $this->config->get('tranda_myicon3'); ?>" alt="" /><?php echo $this->config->get('tranda_myicon3_title'); ?></a></li>
                                <?php } ?>

                            </ul> 
                            <ul class="global-contact">
                                <?php if($this->config->get('tranda_display_phone_h') == '1') { ?>
                                <li>
                                    <i class="<?php echo $this->config->get('tranda_phone_icon'); ?>"></i>
                                    <p>
                                        <b><?php echo $tranda_phone_title; ?></b><br />
                                        <?php echo $this->config->get('tranda_phone_info_1'); ?>
                                        <?php if($this->config->get('tranda_phone_info_2') != '') { ?><br /><?php echo $this->config->get('tranda_phone_info_2'); ?><?php } ?>
                                        <?php if($this->config->get('tranda_phone_info_3') != '') { ?><br /><?php echo $this->config->get('tranda_phone_info_3'); ?><?php } ?>
                                    </p>
                                </li>
                                <?php } ?>
                                <?php if($this->config->get('tranda_display_email_h') == '1') { ?>
                                <li>
                                    <i class="<?php echo $this->config->get('tranda_email_icon'); ?>"></i>
                                    <p>
                                        <b><?php echo $tranda_email_title; ?></b><br />
                                        <a href="mailto:<?php echo $this->config->get('tranda_email_info_1'); ?>"><?php echo $this->config->get('tranda_email_info_1'); ?></a>
                                        <?php if($this->config->get('tranda_email_info_2') != '') { ?><br /><a href="mailto:<?php echo $this->config->get('tranda_email_info_2'); ?>"><?php echo $this->config->get('tranda_email_info_2'); ?></a><?php } ?>
                                        <?php if($this->config->get('tranda_email_info_3') != '') { ?><br /><a href="mailto:<?php echo $this->config->get('tranda_email_info_3'); ?>"><?php echo $this->config->get('tranda_email_info_3'); ?></a><?php } ?>
                                    </p>
                                </li>
                                <?php } ?>
                                <?php if($this->config->get('tranda_display_address_h') == '1') { ?>
                                <li>
                                    <i class="<?php echo $this->config->get('tranda_address_icon'); ?>"></i>
                                    <p>
                                        <b style="font-size:18px;"><?php echo $tranda_address_title; ?></b><br />
                                        <?php echo $tranda_address_info; ?>
                                    </p>
                                </li>
                                <?php } ?>
                                <?php if($this->config->get('tranda_display_gps_h') == '1') { ?>
                                <li>
                                    <i class="<?php echo $this->config->get('tranda_gps_icon'); ?>"></i>
                                    <p>
                                        <b><?php echo $this->config->get('tranda_gps_title'); ?></b><br />
                                        <?php echo $this->config->get('tranda_gps_latitude'); ?>
                                        <br /><?php echo $this->config->get('tranda_gps_longitude'); ?>
                                    </p>
                                </li>
                                <?php } ?>
                                <?php if($this->config->get('tranda_display_schedule_h') == '1') { ?>
                                <li>
                                    <i class="<?php echo $this->config->get('tranda_schedule_icon'); ?>"></i>
                                    <p>
                                        <b><?php echo $tranda_schedule_title; ?></b><br />
                                        
                                        <?php echo $tranda_schedule_day; ?>
                                        <?php if($this->config->get('tranda_schedule_more_info') != '') { ?><span class="infotext"><?php echo $this->config->get('tranda_schedule_more_info'); ?></span><?php } ?>
                                    </p>
                                </li>
                                <?php } ?>
                                <?php if($this->config->get('tranda_display_shipping_h') == '1') { ?>
                                <li>
                                    <i class="<?php echo $this->config->get('tranda_shipping_icon'); ?>"></i>
                                    <p>
                                        <b><?php echo $this->config->get('tranda_shipping_title'); ?></b><br />
                                        <?php echo $this->config->get('tranda_shipping_info'); ?>
                                    </p>
                                </li>
                                <?php } ?>
                                <li><i class="<?php echo $this->config->get('tranda_schedule_icon'); ?>"></i><div class="txt-global-contact"><?php echo $tranda_schedule_day; ?><br><span style="font-size:14px;"><?php echo $tranda_schedule_title; ?></span></div></li>
                            </ul>
                        </div>
                    </li>
                <!-- ACCOUNT -->	
             
             <li class="links_my_account">
             
                    	<a class="contact_header" id="links_my_account">
                        	<i class="<?php if($this->config->get('tranda_icon_accounttab') != '') { ?><?php echo $this->config->get('tranda_icon_accounttab'); ?><?php } else { ?>icon-comments-alt<?php } ?>"></i></a>
                        
                       <div class="top-shop-content" id="my_account_content_links">
                        	<ul class="list-top-shop home-list-top-shop">     
                            	<li><a href="//smart.md/livrare.html"><i class="icon-truck"></i><?php echo $text_livrare; ?></a></li>
                                <li><a href="//smart.md/garantie.html"><i class="icon-ok-circle"></i><?php echo $text_garantie; ?></a></li>
                 <!--           <li><a href="<?php echo $home; ?>"><i class="icon-wrench"></i><?php echo $text_service_centru; ?></a></li> -->
                                <li><a href="//smart.md/index.php?route=account/return/insert"><i class="icon-refresh"></i><?php echo $text_retur; ?></a></li>
                                <li><a href="//smart.md/credit.html"><i class="icon-money"></i><?php echo $text_credit; ?></a></li>
                            </ul>
                            
                             <ul class="global-contact">
                             <li><i class="<?php echo $this->config->get('tranda_phone_icon'); ?>"></i><div class="txt-global-contact"><?php echo $tranda_phone_title; ?></div></li>
                             <li><i class="<?php echo $this->config->get('tranda_schedule_icon'); ?>"></i><div class="txt-global-contact"><?php echo $tranda_schedule_day; ?><br><span style="font-size:14px;"><?php echo $tranda_schedule_title; ?></span></div></li>
                             </ul>
						</div>
           </li>             
           <li>                     
             <div id="customer_care">
             <?php echo $text_customer_care_hidden; ?>
             </div>
           </li>
            <!-- END -->
                    <?php if ($categories) { ?>
                	<li class="links_category">
                    	<a id="links_category">
                        	<i style="float:left;" class="<?php if($this->config->get('tranda_icon_menutab') != '') { ?><?php echo $this->config->get('tranda_icon_menutab'); ?><?php } else { ?>icon-folder-open-alt<?php } ?>"></i>
                            <div style="padding-left: 40px;padding-top: 10px;"><?php if($this->config->get('tranda_text_category') != '') { ?><?php echo $this->config->get('tranda_text_category'); ?><?php } else { ?><?php echo $head_menu_all; ?><?php } ?></div>
                        </a>
                        <div class="top-shop-content" id="category_content_links">
                            <div class="category-shop">
                                <ul class="list-top-shop">
                                    <?php foreach ($categories as $category) { ?>
                                    <li><a style="cursor:default"><?php echo $category['name']; ?>
                                              <i style="float:right; font-size:16px;" class="<?php if($this->config->get('tranda_icon_submenu') != '') { ?><?php echo $this->config->get('tranda_icon_submenu'); ?><?php } else { ?>icon-chevron-right<?php } ?>"></i>
                                              </a>
                                      <?php if ($category['children']) { ?>
                                      <div>
                                        <?php for ($i = 0; $i < count($category['children']);) { ?>
                                        <ul style="padding-top:5px;">
                                          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                                          <?php for (; $i < $j; $i++) { ?>
                                          <?php if (isset($category['children'][$i])) { ?>
                                          <?php if ($category['children'][$i]['href'] == '//smart.md/telefoane/accesorii-gsm') { ?>
                                              <li><a style="cursor:default"><?php echo $category['children'][$i]['name']; ?>
                                              <i style="float:right; font-size:16px;" class="<?php if($this->config->get('tranda_icon_submenu') != '') { ?><?php echo $this->config->get('tranda_icon_submenu'); ?><?php } else { ?>icon-chevron-right<?php } ?>"></i>
                                             
                                              </a>
                                              <?php if(isset($category['children'][$i]['level'][$i])){ ?>
                                                <div>
                                                    <?php for($x = 0; $x < count($category['children'][$i]['level']);){ ?>
                                                    <ul>
                                                    <?php $z = $x + ceil(count($category['children'][$i]['level']) / $category['column']); ?>
                                                    <?php for(; $x < $z; $x++){ ?>
                                                    <li><a href="<?php echo $category['children'][$i]['level'][$x]['href']; ?>" onclick="ga('send', 'event', {
    eventCategory: 'Menu',
      eventAction: '<?php echo $category['name']; ?>',
       eventLabel: '<?php echo $category['children'][$i]['name']; ?>',
       eventValue: '<?php echo $category['children'][$i]['level'][$x]['name'] ?>'
});"><?php echo $category['children'][$i]['level'][$x]['name'] ?></a></li>
                                                    <?php } ?>
                                                    </ul>
                                                    <?php } ?>
                                                </div>
                                                <?php } ?>
                                              </li>
                                              <?php } elseif ($category['children'][$i]['href'] == '//smart.md/laptopuri/accesorii-it') { ?>
                                                <li><a style="cursor:default"><i style="float:right;" class="<?php if($this->config->get('tranda_icon_submenu') != '') { ?><?php echo $this->config->get('tranda_icon_submenu'); ?><?php } else { ?>icon-chevron-right<?php } ?>"></i><?php echo $category['children'][$i]['name']; ?></a>
                                                <?php if(isset($category['children'][$i]['level'][$i])){ ?>
                                                <div>
                                                    <?php for($x = 0; $x < count($category['children'][$i]['level']);){ ?>
                                                    <ul>
                                                    <?php $z = $x + ceil(count($category['children'][$i]['level']) / $category['column']); ?>
                                                    <?php for(; $x < $z; $x++){ ?>
                                                    <li><a href="<?php echo $category['children'][$i]['level'][$x]['href']; ?>" onclick="ga('send', 'event', {
    eventCategory: 'Menu',
      eventAction: '<?php echo $category['name']; ?>',
       eventLabel: '<?php echo $category['children'][$i]['name']; ?>',
       eventValue: '<?php echo $category['children'][$i]['level'][$x]['name'] ?>'
});"><?php echo $category['children'][$i]['level'][$x]['name'] ?></a></li>
                                                    <?php } ?>
                                                    </ul>
                                                    <?php } ?>
                                                </div>
                                                <?php } ?>
                                              </li>
                                              <?php } else { ?>
                                              
                                              
                                              <li><a href="<?php echo $category['children'][$i]['href']; ?>" onclick="ga('send', 'event', {
    eventCategory: 'Menu',
      eventAction: '<?php echo $category['name']; ?>',
       eventLabel: '<?php echo $category['children'][$i]['name']; ?>'
});">
                                              <?php if(isset($category['children'][$i]['level'][$i])){ ?>
                                              <i style="float:right; font-size:16px;" class="<?php if($this->config->get('tranda_icon_submenu') != '') { ?><?php echo $this->config->get('tranda_icon_submenu'); ?><?php } else { ?>icon-chevron-right<?php } ?>"></i>
                                              <?php } ?>
                                              <?php echo $category['children'][$i]['name']; ?></a></li>
                                                <?php } ?>
                                          <?php } ?>
                                          <?php } ?>
                                        </ul>
                                        <?php } ?>
                                      </div>
                                      <?php } ?>
                                    </li>
                                    <?php } ?>
                                </ul>            
                            </div>
                        </div>
                    </li>
                    <?php } ?>
                    <?php if (!$logged) { ?>
                	<li class="tablet_menu tablet_menu_account">
                    	<a href="<?php echo $account; ?>">
                        	<i class="icon-lock"></i>
                            <span><?php echo $text_account; ?></span>
                        </a>
                    </li>
                    <?php } else { ?>
                	<li class="tablet_menu tablet_menu_account">
                    	<a href="<?php echo $account; ?>">
                        	<i class="icon-unlock"></i>
                            <span><?php echo $text_account; ?></span>
                        </a>
                    </li>
                    <?php } ?>
                	<li class="tablet_menu tablet_menu_wishlist">
                    	<a href="<?php echo $wishlist; ?>">
                        	<i class="<?php if($this->config->get('tranda_icon_wishlist') != '') { ?><?php echo $this->config->get('tranda_icon_wishlist'); ?><?php } else { ?>icon-file-alt<?php } ?>"></i>
                            <span><?php echo $text_wishlist; ?></span>
                        </a>
                    </li>
                	<li class="tablet_menu tablet_menu_shopping_cart">
                    	<a href="<?php echo $shopping_cart; ?>">
                        	<i class="<?php if($this->config->get('tranda_icon_cart') != '') { ?><?php echo $this->config->get('tranda_icon_cart'); ?><?php } else { ?>icon-shopping-cart<?php } ?>"></i>
                            <span><?php echo $text_shopping_cart; ?></span>
                        </a>
                    </li>
                	<li class="tablet_menu tablet_menu_checkout">
                    	<a href="<?php echo $checkout; ?>">
                        	<i class="<?php if($this->config->get('tranda_icon_checkout') != '') { ?><?php echo $this->config->get('tranda_icon_checkout'); ?><?php } else { ?>icon-credit-card<?php } ?>"></i>
                            <span><?php echo $text_checkout; ?></span>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- END SHOP MENU -->
            <!-- START SEARCH -->
            
            <div class="shop-search">
            	<div id="search" class="box">

                
                
                	<input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
                  <a class="button button-search" onClick="ga('send', 'event', {
    eventCategory: 'Cautare',
      eventAction: 'Header',
       eventLabel: '<?php echo $search; ?>'
});"><i class="<?php if($this->config->get('tranda_icon_search') != '') { ?><?php echo $this->config->get('tranda_icon_search'); ?><?php } else { ?>icon-search<?php } ?>"></i></a>
                </div>
            </div>
            <!-- END SEARCH -->
            <!-- START CART -->
            

            
            
            <div class="shop-cart">
                <?php echo $cart; ?>
            </div>
            <!-- END CART -->
            
            <!-- START COMPARE -->
            <div class="shop-compare">
            
    <a title="<?php echo $compare_text; ?>" class="product-compare" onclick="ga('send', 'event', {
    eventCategory: 'Header',
      eventAction: 'Link pagina Comparare',
       eventLabel: '<?php echo $search; ?>'
});" href="<?php echo $compare; ?>"><i class="<?php if($this->config->get('tranda_icon_compare') != '') { ?><?php echo $this->config->get('tranda_icon_compare'); ?><?php } else { ?>icon-exchange<?php } ?>"></i></a><span id="compare-total"><?php echo $text_compare; ?></span>
    		
            </div>
            <!-- END COMPARE -->
            
            
        </div>
    </div>
    <!-- end bottom header -->
</div>
<!-- END HEADER -->
<div class="notification" id="notification"></div>
<!-- START CONTAINER -->
<div<?php if($this->config->get('tranda_header_bar') == '1') { ?> id="container"<?php } ?> class="container"></div>