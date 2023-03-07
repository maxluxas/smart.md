<?php
$actual_link = ''.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
?>
<!DOCTYPE html>
<html dir="<?=$direction?>" lang="<?=$lang?>">

<head>

	<base href="<?=$base?>"/>

	<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
	<title><?=$title?></title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="theme-color" content="#ffcc33"/>
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="#ffcc33">
	<meta name="msapplication-navbutton-color" content="#ffcc33">
	<meta name="robots" content="INDEX,FOLLOW">
	<meta name="author" content="Smart Click SRL">
	<meta property="og:title" content="<?php echo $title; ?>">
	<?php if ($thumb || $images) { ?>
		<meta property="og:image" content="<?php echo $thumb; ?>">
	<?php } else { ?>
		<meta property="og:image" content="<?php echo $logo; ?>">
	<?php } ?>

	<? if($description): ?>
		<meta property="og:description" content="<?=$description?>">
		<meta name="description" content="<?=$description?>"/>
	<? endif; ?>

	

		<?php $thisuri_parts = explode('?', $_SERVER['REQUEST_URI'], 2); ?>
		<meta property="og:url" content="<?php echo rtrim($_SERVER['HTTP_HOST'] . $thisuri_parts[0], '/'); ?>">
		
		<? if(!empty($canonical_link)): ?>
			<link rel="canonical" href="<?=$canonical_link ?>"/>
		<? else:?>
			<link rel="canonical" href="https://<?php echo rtrim($_SERVER['HTTP_HOST'] . $thisuri_parts[0], '/'); ?>"/>
		<?endif; ?>

		<? if($icon): ?>
			<link href="//www.smart.md/catalog/view/smartv3/img/favicon_smart-o.png" rel="icon"/>
			<?endif; ?>

			<? foreach ($links as $link): ?>
				<? if($link['rel'] != 'canonical'): ?>
					<link href="<?=$link['href']?>" rel="<?=$link['rel']?>"/>
					<?endif; ?>
					<?endforeach; ?>

					<script defer data-cfasync="false" src="catalog/view/javascript/jquery/livesearch-hh.js?v=1.0.22"></script>

					<link rel="alternate" href="<?php echo $xrefro; ?>" hreflang="ro-md"/>
					<link rel="alternate" href="<?php echo $xrefru; ?>" hreflang="ru-md"/>
					<link rel="shortcut icon" type="image/x-icon" href="catalog/view/smartv3/img/favicon_smart-o.png"/>

					<link rel="stylesheet" type="text/css" href="catalog/view/smartv3/css/header.css?v=1.1.16"/>
	

					<?php
					if(!in_array($this_route,$part_routes)) { ?>
						<link rel="stylesheet" type="text/css" href="catalog/view/smartv3/css/smart.css?v=1.3.24"/>
						<link media="print" onload="if(media!='all')media='all'" href="//fonts.googleapis.com/icon?family=Material+Icons" rel="preload" as="font">
						<link rel="stylesheet" type="text/css" media="print" onload="if(media!='all')media='all'" href="catalog/view/smartv3/css/query.css?v=1.1.51"/>
					<?php }
					?>

					<link rel="stylesheet" type="text/css" media="print" onload="if(media!='all')media='all'" href="catalog/view/javascript/slick/slick/slick.css?v=0.0.2"/>
					<link rel="stylesheet" type="text/css" media="print" onload="if(media!='all')media='all'" href="catalog/view/javascript/slick/slick/slick-theme.css?v=0.0.3"/>
					<?php
					if(!in_array($this_route,$part_routes)) { ?>
						<link rel="stylesheet" type="text/css" href="catalog/view/javascript/perfect-scrollbar/css/perfect-scrollbar.css?v=0.0.2"/>
					<?php }
					?>

					<script data-cfasync="false" src="catalog/view/smartv3/js/jquery/jquery1.9.1.min.js"></script>
					<script defer src="catalog/view/javascript/slick/slick/migrate.js"></script>
					<script defer src="catalog/view/smartv3/js/header.js?v=0.0.52"></script>

					<!-- Custom scrollbar -->
					<link
					rel="stylesheet" media="print" onload="if(media!='all')media='all'" href="catalog/view/smartv3/css/jquery.mCustomScrollbar.css?v=1.0.3">

					<!-- Google Tag Manager -->
					<script>
						(function (w, d, s, l, i) {
							w[l] = w[l] || [];
							w[l].push({'gtm.start': new Date().getTime(), event: 'gtm.js'});
							var f = d.getElementsByTagName(s)[0],
							j = d.createElement(s),
							dl = l != 'dataLayer' ? '&l=' + l : '';
							j.async = true;
							j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
							f.parentNode.insertBefore(j, f);
						})(window, document, 'script', 'dataLayer', 'GTM-PWKRK9S');
					</script>
					<!-- End Google Tag Manager -->

					


					<!-- Global site tag (gtag.js) - AdWords: 984413743 -->
					<script async src="https://www.googletagmanager.com/gtag/js?id=AW-984413743"></script>
					<script>
						window.dataLayer = window.dataLayer || [];
						function gtag() {
							dataLayer.push(arguments);
						}
						gtag('js', new Date());

						gtag('config', 'AW-984413743', {'send_page_view': true});
					</script>
					<!-- Global site tag (gtag.js) - AdWords: 984413743 -->

					<script>
						var fired = false;

						window.addEventListener('scroll', () => {
						    if (fired === false) {
						        fired = true;
						     
						        setTimeout(() => {
									!function (f, b, e, v, n, t, s) {
										if (f.fbq) 
											return;



										n = f.fbq = function () {
											n.callMethod ? n.callMethod.apply(n, arguments) : n.queue.push(arguments)
										};
										if (! f._fbq) 
											f._fbq = n;



										n.push = n;
										n.loaded = !0;
										n.version = '2.0';
										n.queue = [];
										t = b.createElement(e);
										t.async = !0;
										t.src = v;
										s = b.getElementsByTagName(e)[0];
										s.parentNode.insertBefore(t, s)
									}(window, document, 'script', 'https://connect.facebook.net/en_US/fbevents.js');
									fbq('init', '699360150198708');
									fbq('track', 'PageView');
									$(document).trigger('fbq-init');
								}, 1000)
    						}
						});
					</script>

				</head>

				<body>

					<!-- Roistat Counter Start -->
					<script>
					(function(w, d, s, h, id) {
						w.roistatProjectId = id; w.roistatHost = h;
						var p = d.location.protocol == "https:" ? "https://" : "http://";
						var u = /^.*roistat_visit=[^;]+(.*)?$/.test(d.cookie) ? "/dist/module.js" : "/api/site/1.0/"+id+"/init?referrer="+encodeURIComponent(d.location.href);
						var js = d.createElement(s); js.charset="UTF-8"; js.async = 1; js.src = p+h+u; var js2 = d.getElementsByTagName(s)[0]; js2.parentNode.insertBefore(js, js2);
					})(window, document, 'script', 'cloud.roistat.com', '1dc8baba8916679bba429e39975e406d');
					</script>
					<!-- Roistat Counter End -->

					<?php

					if(!empty($_SERVER['HTTP_CLIENT_IP'])){
						$ip_address_client = $_SERVER['HTTP_CLIENT_IP'];
					} else if(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
						$ip_address_client = $_SERVER['HTTP_X_FORWARDED_FOR'];
					} else {
						$ip_address_client = $_SERVER['REMOTE_ADDR'];
					}

					?>
					<script>
						var mouseX = 0;
						var mouseY = 0;
						var popupCounter = 0;

						document.addEventListener("mousemove", function (e) {
							mouseX = e.clientX;
							mouseY = e.clientY;
						});

						function lFadeIn() {
							if (localStorage.getItem("popupShow") == null || localStorage.getItem("popupShow") == undefined || localStorage.getItem("popupShow") == 'no') {
								$("#leave_popup, .leave_popup_back").fadeIn(200);
							}
						}
						var userIpAddress = '<?php echo $ip_address_client; ?>';
						if ($(window).width() > 768) {
							if ((userIpAddress != '212.56.203.142') && (userIpAddress != '188.237.161.84') && (userIpAddress != '212.56.203.143') && (userIpAddress != '95.65.46.230')) {
								if (popupCounter < 1) {
									setTimeout(lFadeIn, 60000);
								}
								popupCounter++;
							}
						}

// ================
$(window).load(function (event) {
	validNavigation = false;
	$(document).bind('keypress', function (e) {
		if (e.keyCode == 116) {
			validNavigation = true;
		}
	});

	$("a").bind("click", function () {
		validNavigation = true;
	});

	$("form").bind("submit", function () {
		validNavigation = true;
	});

	$("input[type=submit]").bind("click", function () {
		validNavigation = true;
	});

	function endSession() {
		localStorage.setItem('popupShow', 'no');
	}

	function wireUpEvents() {
		$(window).unload(function (e) {
			if (validNavigation === false) {
				endSession();
			}
		});
	}
	wireUpEvents();
});
// ===========================================
$(document).ready(function () {
	$('#leave_number, #precomanda_telefon, #numar_popup_abonament, #checkout_customer_main_telephone, input[introdu-telefon]').keydown(function (e) {
		var oldvalue = $(this).val();
		var field = this;
		setTimeout(function () {
			if (field.value.indexOf('0') !== 0) {
				$(field).val(0);
			}
			if (field.value.length >= 2 && field.value.length<= 9) {
				if(field.value.indexOf('6') !== 1 && field.value.indexOf('7') !== 1) {
					$(field).val(0);
				}
			} else if(field.value.length> 9) {
				$(field).val(oldvalue);
			}
		}, 0);
	});
});
</script>

<script>
	function leave_fadein() {
		$("#leave_popup, .leave_popup_back").fadeIn(200)
	}

	var userIpAddress = '<?php echo $ip_address_client; ?>';

	if ($(window).width() < 768) {
		if ((userIpAddress != '212.56.203.142') && (userIpAddress != '188.237.161.84') && (userIpAddress != '212.56.203.143')) {
			setTimeout(leave_fadein, 60000);
		}
	}
	$(document).on('click', "#close_leave_popup, .leave_overlay, #close_leave_popup_ab", function () {
		$("#leave_popup").fadeOut(300);
	});
	$(document).on('click', ".leave_button", function () {
		if (($("#leave_number").val() != '') && ($("#leave_number").val().length == 9)) {

			$("#leave_popup1 *").css("display", "none");
			$("#leave_popup1 span:last-of-type").css("display", "block");
			$("#close_leave_popup").css("display", "block");

		} else {
			if (($("#leave_number").val() == '') || ($("#leave_number").val().length < 9) || ($("#leave_number").val().length > 9)) {
				$("#leave_number").css("border-bottom", "2px solid red");
				$(this).parent().find('.nota-informare').html('<span class="nota-error">   <?php echo $popup_notaclient; ?></span>');
			}
		}
	});

	$(document).on('click', ".leave_button", function () {
		if (($("#numar_popup_abonament").val() != '') && ($("#numar_popup_abonament").val().length == 9)) {

			$("#leave_popup1 *").css("display", "none");
			$("#leave_popup1 span:last-of-type").css("display", "block");
			$("#close_leave_popup_ab").css("display", "block");

		} else {
			if (($("#numar_popup_abonament").val() == '') || ($("#numar_popup_abonament").val().length < 9) || ($("#numar_popup_abonament").val().length > 9)) {
				$("#numar_popup_abonament").css("border-bottom", "2px solid red");
			}
		}
	});
</script>

<script data-cfasync="false">
	$(document).ready(function () {
		var intRegex = /[0-9 -()+]+$/;
		$('.buy_one_click').live('click', function () {

			var form = $(this).parents('form');

			form.find('.phone_error').html('');
			phone = form.find('input[name="tAP_CA_Mobile"]').val();

			if (phone.length != 9 || phone.slice(0, 1) != 0) {
				form.find('.nota-informare span').show();
			} else {
				form.find('.nota-informare span').hide();
			}

			if ((phone.length < 4) || (! intRegex.test(phone))) {
				form.find('.phone_error').html('<?php echo $this->language->get('text_one_click_wrong'); ?>');
				return;
			}

			post_data = form.serialize();
			$.ajax({
				type: 'post',
				url: 'index.php?route=module/oneclick/order',
				data: post_data,
				dataType: 'json',
				success: function (data) {
					form.html(data);
				}
			});
		});

});
</script>

<script>
	var windowOnloadAdd = function (event) {
		if ( window.onload ){
			window.onload = window.onload + event;
		} else {
			window.onload = event;
		};
	};

	windowOnloadAdd(function() {
		for (let i=0; i < $('input[name="roistat_visit"]').length; i++) {
			$('input[name="roistat_visit"]').eq(i).val(roistat.visit);
		}
	});
</script>


<!--
<?php if(in_array(7032, $categories)) { ?>
	<div class="popup_18plus_cond">
		<div class="popup_18plus_overlay"></div>
		<div class="popup_18plus_container">
			<div class="popup_18plus_content">
				<div class="popup_18plus_text">Ai peste 18 ani?</div>
				<div class="popup_18plus_actions">
					<button class="popup_18plus_accept" onclick="popup_accept_18plus();">Da</button>
					<button class="popup_18plus_ignore" onclick="popup_ignore_18plus();">Nu</button>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(document).ready(function(){
			var is18plus = getSmartCookie('is18plus');
			if(is18plus == null) {
				$(".popup_18plus_cond").fadeIn(300);
				$('html').css('overflow', 'hidden');
			}
		});
	</script>
<?php } ?> -->

<div class="popup_addcart_cond">
	<div class="popup_addcart_content">
		<svg class="new-svg-icon icon_close_popup_cart_added" onclick="popup_close_cart_succes()"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-close2"></use></svg>
		<img class="__new_add_to_cart_basket_popup" src="catalog/view/smartv3/img/icons/cart-white.png" alt="" title="">
		<span><?=$add_to_cart_popup?></span>
	</div>
</div>

<div id="overlayh" onclick="close__menu__elements()"></div>
<header id="__new_desktop_header" class="__new_desktop_header">
	<a href="/" title="<?=$name?>">
		<div id="__new_logo_header" class="__new_logo_header __new_header_elements">
			<div class="__new_logo_header_container">
				<img width="53" height="53" src='catalog/view/smartv3/img/suricat_msg_sfat-o.png' alt="online store smart" title="" class="__new_header_logo_btn">
				<span class="__new_header_logo_name">
					<span>SMART</span>.MD</span>
				</div>
			</div>
		</a>

		<div id="__new_search_button" class="__new_search_button __new_header_elements" onclick="open__new__search()">
			<div class="__new_search_header_container">
				<img class="__new_start_icon" src="catalog/view/smartv3/img/__new_header/cauta.png" alt="cauta in site" title="">
				<svg class="new-svg-icon __new_end_icon"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-close2"></use></svg>
				<span class="__new_search-title"><?=$result_cauta?></span>
			</div>
		</div>

		<div id="__new_menu" class="__new_menu __new_header_elements" onclick="open__new__menu()">
			<div class="__new_menu_header_container">
				<img class="__new_start_icon" src="catalog/view/smartv3/img/__new_header/hamburger.png" alt="menu" title="">
				<svg class="new-svg-icon __new_end_icon"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-close2"></use></svg>
				<span class="__new_menu-title"><?=$menu_title?></span>
			</div>
		</div>

		<div id="__new_cart_compare" class="__new_cart_compare __new_header_elements">
			<div class="__new_cart_compare_container">
				<div id="__new_cart" class="__new_cart">
					<?=$cart?>
				</div>
				<div id="__new_compare" class="__new_compare">
					<div class="__new_mobile_back_color">
						<a class="__new_compare_btn __new_count_opt_compare <?php if ($text_compare==0) { ?>hide-count<?php } ?>" href="<?=$compare?>">
							<img src="catalog/view/smartv3/img/__new_header/Compare.png" alt="găsiti mai ieftin" title="">
							<span id="__new_compare-total" class="__new_count_opt __new_cnt_1"><?=$text_compare?></span>
						</a>
					</div>
				</div>
			</div>
		</div>


		<div id="__new_site_lang" class="__new_site_lang __new_header_elements <?php if($cart_count > 0) { ?> new_hide_on_mobile <?php } ?>">
			<div class="__new_language_container">
				<div class="__new_lang_container">
					<?=$language?>
				</div>
			</div>
		</div>

		<div id="__new_header_chat" onclick="MeTalk('openSupport');  return false;" class="__new_header_chat __new_header_elements <?php if($cart_count > 0) { ?> new_move_on_mobile <?php } ?>">
			<div class="__new_header_chat_container">
				<img src="catalog/view/smartv3/img/__new_header/scrie.png" alt="vom răspunde la întrebare">
				<span class="__new_chat-title"><?=$chat?></span>
			</div>
		</div>

	</header>
	<?php echo $menu; ?>

<!--<aside id="floating_search" class="floating_search floating">
		<div id="fl_search" style="height:100%;">
			<div class="row meniu_table">
				<form id="search_bar_form" autocomplete="off" method="POST" onsubmit="return false;">
					<div id="search" class="box">
						<div class="search_input_container">
							<i id="close-mobile-search" class="close_search" onclick="cls_search()">
								<svg class="new-svg-icon search-arrow-left"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-keyboard_arrow_left"></use></svg>
							</i>
							<?php echo $search_placeholder; ?>
						</div>
						<div class="border_line"></div>
						<aside id="box_info_after_search">
							<div class="row">
								<div id="search-loader"></div>
								<div class="nu_a_gasit">
									<?php echo $nu_a_gasit; ?>
								</div>
								<div class="col s12 m12 l12 cels_info cleli1">

									<ul id="sugestii_list" class="firs_lst">
										<li>
											<div class="title_sectio"><?php echo $sugestii; ?></div>
										</li>
										<li class="opi_tel">
											<a id="sugestii_a" for="search">Realme C2</a>
										</li>
										<li class="opi_tel">
											<a id="sugestii_a" for="search">Note 8</a>
										</li>
										<li class="opi_tel">
											<a id="sugestii_a" for="search">iPhone 11</a>
										</li>
										<li class="opi_tel">
											<a id="sugestii_a" for="search">A51</a>
										</li>
										<li class="opi_tel">
											<a id="sugestii_a" for="search">Realme XT</a>
										</li>
										<li class="opi_tel">
											<a id="sugestii_a" for="search">Redmi 8</a>
										</li>
										<li class="opi_tel">
											<a id="sugestii_a" for="search">Note 9s</a>
										</li>
										<li class="opi_tel">
											<a id="sugestii_a" for="search">S20</a>
										</li>
										<li class="opi_tel">
											<a id="sugestii_a" for="search">Note 8 pro</a>
										</li>
										<li class="opi_tel">
											<a id="sugestii_a" for="search">IHunt p13000</a>
										</li>
									</ul>
								</div>
								<div class="col s12 m12 l12 cels_info celio2">
									<ul id="categ_list" class="firs_lst" style="display:block !important;padding-left: 20px;font-size: 18px;color:#000;">
										<li>
											<div class="title_sectio"><?php echo $direct_categorii; ?></div>
										</li>
										<li>
											<a href="//www.smart.md/telefoane/smartphones"><?=$menu_smartphones_title?></a>
										</li>
										<li>
											<a href="//www.smart.md/mobila"><?=$menu_category_0?></a>
										</li>
										<li>
											<a href="//www.smart.md/tv"><?=$menu_tv_title?>
										</a>
									</li>
									<li>
										<a href="//www.smart.md/ikea"><?=$menu_category_1?></a>
									</li>
									<li>
										<a href="//www.smart.md/frigidere"><?=$menu_category_2?></a>
									</li>
									<li>
										<a href="//www.smart.md/aspiratoare"><?=$menu_category_3?></a>
									</li>
									<li>
										<a href="//www.smart.md/power-bank"><?=$menu_category_4?></a>
									</li>
									<li>
										<a href="//www.smart.md/masini-de-spalat-rufe"><?=$menu_category_5?></a>
									</li>
									<li>
										<a href="//www.smart.md/laptopuri/notebook"><?=$menu_notebook_title?>
									</a>
								</li>
							</ul>
							<ul class="second_lst cel_categ_gasit">
								<li>
									<div class="title_sectio"><?=$result_cauta?>
									<b class="search_kw"></b>
									<?=$result_in_categor?></div>
								</li>
								<li id="rezultate_categ"></li>
							</ul>
						</div>
					</div>
				</aside>
			</div>
		</form>
	</div>
</div>
</aside> -->

<aside id="floating_call" class="floating_call floating" style="overflow:hidden;">
	<svg class="new-svg-icon end_icon close_call" onclick="cls_call()"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-close2"></use></svg>
	<div class="fl_meniu_content mCustomScrollbar" data-mcs-axis="y" data-mcs-theme="minimal">
		<div class="row meniu_table"></div>
	</div>
</aside>


<div class="notification" id="notification"></div>
