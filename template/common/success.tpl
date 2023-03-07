<?php echo $header; ?>
<link rel="stylesheet" href="catalog/view/smartv3/css/success-checkout.css?v=0.0.25">
<script defer src="catalog/view/smartv3/js/success-checkout.js?v=0.0.2"></script>
<div class="__new_checkout_container">
  <div class="__new_succes_checkout_content">
    <div class="heading_checkout"><?= $text_customer; ?></div>
    <div class="nrcom_checkout"><?= $nr_comenzii; ?></div>
    <?php if(!$order_info || $order_info['payment_method'] != 'Precomanda') { ?>
      <div class="sumtot_checkout"><?= $suma_totala; ?></div>
    <?php } ?>
    <div class="orderinfo_checkout"><?= $order_text_info; ?></div>
  </div>
  <?= $delivery; ?>
  <!-- <div class="__new_content_home">
    <h3 class="descopera_checkout"><?= $descopera_categoriile; ?></h3>
      <div class="__new_content_center_align"> -->

          <!-- Custom banners -->

          <?php $custom__banners = false; ?>

          <?php if ($custom__banners) { ?>
            <style type="text/css">
              .__new_categories_home {
                display: none !important;
              }

              .custom__banners_desk {
                position: absolute;
                left: 180px;
                right: 120px;
                margin-top: 20px;
              }
            </style>

            <a href="https://www.smart.md/#" class="custom__banners_desk">
                <img src="https://www.smart.md/image/data/results-photos/banners/visadecdesk.png">
            </a>

            <a href="https://www.smart.md/#" class="custom__banners_mob">
                <img src="https://www.smart.md/image/data/results-photos/banners/visadecmob.png">
            </a>
          <?php } ?>

          <!-- Custom banners -->

          <!--<div class="__new_categories_home">
              <div class="__new_categories_home_block1 __new_categories_home_block1_new">
                  <a href="smartphone" id="__new_open_smartphone" not-menu="yes" class="__new_category_home __new_left_categories">
                      <div class="__new_categories_image_container">
                          <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_home/new-categories/Phone.png" alt="Cumpără un telefon nou" />
                      </div>
                      <span class="__new_category_home_name"><?php echo $new_smartphone; ?></span>

                      <div class="__new_main_categories_menu"></div>
                  </a>

                  <a href="ikea" id="__new_open_gadget" not-menu="yes" class="__new_category_home __new_center_categories">
                      <div class="__new_categories_image_container">
                          <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_home/new-categories/ikea-image-new.png" alt="ikea chisinau" />
                      </div>
                      <span class="__new_category_home_name" menu_lv="1" menu_id="9">IKEA</span>

                      <div class="__new_main_categories_menu"></div>
                  </a>

                  <a href="mobila" id="__new_open_mobilier" not-menu="yes" class="__new_category_home __new_right_categories">
                      <div class="__new_categories_image_container">
                          <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_home/new-categories/Mobilier.png" alt="Cumpara ikea" />
                      </div>
                      <span class="__new_category_home_name" menu_lv="1" menu_id="6"><?php echo $new_mobilier; ?></span>

                      <div class="__new_main_categories_menu"></div>
                  </a>

                  <div class="__new_category_home __new_category_tv __new_desktop_only __new_left_categories">
                      <div class="__new_categories_image_container">
                          <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_home/new-categories/tv_laptop.png" alt="Cumpara TV, Laptop" />
                      </div>
                      <span class="__new_category_home_name" menu_lv="1" menu_id="3"><?php echo $tv_lap; ?></span>

                      <div class="__new_main_categories_menu"></div>
                  </div>

                  <div id="__new_open_electrocasnice" class="__new_category_home __new_desktop_only __new_open_all_categories __new_center_categories">
                      <div class="__new_categories_image_container">
                          <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_home/new-categories/Electrocasnice.png" alt="Cumpara Electrocasnice" />
                      </div>
                      <span class="__new_category_home_name" menu_lv="1" menu_id="4"><?php echo $new_electrocasnice; ?></span>

                      <div class="__new_main_categories_menu"></div>
                  </div>

                  <div class="__new_category_home __new_open_all_categories __new_category_grad __new_desktop_only __new_right_categories">
                      <div class="__new_categories_image_container">
                          <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_home/new-categories/gradina.png" alt="Cumpara instrumente" />
                      </div>
                      <span class="__new_category_home_name" menu_lv="1" menu_id="17"><?php echo $gradinarit; ?></span>

                      <div class="__new_main_categories_menu"></div>
                  </div>

                  <div class="__new_category_home __new_category_sport __new_desktop_only __new_left_categories">
                      <div class="__new_categories_image_container">
                          <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_home/new-categories/sport.png" alt="Cumpara echipament sport" />
                      </div>
                      <span class="__new_category_home_name" menu_lv="1" menu_id="14"><?php echo $sport; ?></span>

                      <div class="__new_main_categories_menu"></div>
                  </div>

                  <a class="__new_category_home __new_center_categories __new_category_jocuri" not-menu="no">
                      <div class="__new_categories_image_container">
                          <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_home/new-categories/jucarii.png" alt="Jucarii" />
                      </div>
                      <span class="__new_category_home_name" menu_lv="1" menu_id="20"><?php echo $jucarii; ?></span>

                      <div class="__new_main_categories_menu"></div>
                  </a>
                  
                  <div id="__new_open_all_categories" class="__new_open_all_categories __new_category_home __new_category_home2 __new_desktop_only __new_right_categories">
                      <div class="__new_categories_image_container">
                          <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_home/Toate-Catgoriile.png" alt="menu categorie" />
                      </div>
                      <span class="__new_category_home_name" menu_lv="0" menu_id="all"><?php echo $new_toate_categ; ?></span>

                      <div class="__new_main_categories_all"></div>
                  </div>

                  <div id="__new_open_electrocasnice" class="__new_category_home __new_mobile_only __new_open_all_categories">
                      <div class="__new_categories_image_container">
                          <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_home/new-categories/Electrocasnice.png" alt="Cumpara Electrocasnice" />
                      </div>
                      <span class="__new_category_home_name" menu_lv="1" menu_id="4"><?php echo $new_electrocasnice; ?></span>

                      <div style="top: 0;" class="__new_main_categories_menu"></div>
                  </div>

                  <div class="__new_category_home __new_category_tv __new_mobile_only">
                      <div class="__new_categories_image_container">
                          <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_home/new-categories/tv_laptop.png" alt="Cumpara TV, Laptop" />
                      </div>
                      <span class="__new_category_home_name" menu_lv="1" menu_id="3"><?php echo $tv_lap; ?></span>

                      <div class="__new_main_categories_menu"></div>
                  </div>

                  <div class="__new_category_home __new_category_sport __new_mobile_only">
                      <div class="__new_categories_image_container">
                          <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_home/new-categories/sport.png" alt="Cumpara echipament sport" />
                      </div>
                      <span class="__new_category_home_name" menu_lv="1" menu_id="14"><?php echo $sport; ?></span>

                      <div class="__new_main_categories_menu"></div>
                  </div>

                  <div class="__new_category_home __new_open_all_categories __new_category_grad __new_mobile_only">
                      <div class="__new_categories_image_container">
                          <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_home/new-categories/gradina.png" alt="Cumpara instrumente" />
                      </div>
                      <span class="__new_category_home_name" menu_lv="1" menu_id="18"><?php echo $gradinarit; ?></span>

                      <div class="__new_main_categories_menu"></div>
                  </div>

                  <div class="__new_category_home __new_mobile_only">
                      <div class="__new_categories_image_container" style="width: 90px; display: flex; justify-content: center;">
                          <img style="min-width: 60px;" class="__new_category_home_image" src="catalog/view/smartv3/img/__new_home/new-categories/pentru-casa.png" alt="menu categorie" />
                      </div>
                      <span class="__new_category_home_name" menu_lv="1" menu_id="15"><?php echo $pentru_casa; ?></span>

                      <div class="__new_main_categories_all"></div>
                  </div>

                  <div class="__new_category_home __new_mobile_only">
                      <div class="__new_categories_image_container">
                          <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_home/new-categories/ingrijire-personala.png" alt="menu categorie" />
                      </div>
                      <span class="__new_category_home_name" menu_lv="1" menu_id="19"><?php echo $ingrijire; ?></span>

                      <div class="__new_main_categories_all"></div>
                  </div>

                  <div class="__new_category_home __new_mobile_only">
                      <div class="__new_categories_image_container">
                          <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_home/new-categories/accesorii-1.png" alt="menu categorie" />
                      </div>
                      <span class="__new_category_home_name" menu_lv="1" menu_id="13"><?php echo $acc; ?></span>

                      <div class="__new_main_categories_all"></div>
                  </div>

                  <div class="__new_category_home __new_mobile_only">
                      <div class="__new_categories_image_container">
                          <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_home/new-categories/gadgets-1.png" alt="menu categorie" />
                      </div>
                      <span class="__new_category_home_name" menu_lv="1" menu_id="8"><?php echo $gadg; ?></span>

                      <div class="__new_main_categories_all"></div>
                  </div>

                  <div class="__new_category_home __new_mobile_only">
                      <div class="__new_categories_image_container">
                          <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_home/new-categories/info.png" alt="menu categorie" />
                      </div>
                      <span class="__new_category_home_name" menu_lv="1" menu_id="12"><?php echo $info; ?></span>

                      <div class="__new_main_categories_all"></div>
                  </div>
              </div>
          </div>-->
      </div>
  </div>
</div>
<?php
  $username = $this->session->data["simple"]["checkout_customer"]["main_lastname"];
  $telephone = $this->session->data["simple"]["checkout_customer"]["main_telephone"];
?>


    <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-41587863-1']);
        _gaq.push(['_set', 'currencyCode', 'lei']);

        _gaq.push(['_trackPageview']);


        _gaq.push(['_addTrans',
          '<?php echo $order_id; ?>',           			// transaction ID - required
          '',
          '<?php echo $order_info["total"]; ?>',           	// total - required
          '<?php echo $tax; ?>',           					// tax
          '',
          '<?php echo $order_info["shipping_zone"]; ?>',    // city
          '<?php echo $order_info["shipping_zone"]; ?>',    // state or province
          '<?php echo $order_info["shipping_country"]; ?>'  // country
        ]);

        /*dataLayer.push({
          'event', 'purchase'
          'google_tag_params': {
            'dynx_totalvalue': '<?php echo number_format(str_replace(" ", "", $order_info["total"]), 0, ".", ""); ?>'
          }
        });*/

        <?php $increment_prod = 1; ?>

        <?php 
          $this->load->model('catalog/product'); 
          $forGtag = [];
        ?>

        <?php foreach ($order_products as $row) { ?>
          _gaq.push(['_addItem',
            '<?php echo $order_id; ?>',           // transaction ID - required
            '<?php echo $row["model"]; ?>',           // SKU/code - required
            '<?php echo $row["name"]; ?>',        // product name
			      'Pagina Succes Cos',   // category or variation
            '<?php echo $row["price"]; ?>',          // unit price - required
            '<?php echo $row["quantity"]; ?>'               // quantity - required
          ]);

          /*dataLayer.push({
              'google_tag_params': {
                'dynx_itemid<?php if ($increment_prod == 1) { echo "2"; } else { echo $increment_prod; }; ?>': '',
                'dynx_pagetype': 'conversion'
              }
          });*/

          <?php $increment_prod++; ?>

          <?php 
            $product_info = $this->model_catalog_product->getProduct($row['product_id']);
            $forGtag[] = "'".$product_info["sku"]."'";
          ?>

        <?php } ?>

         _gaq.push(['_trackTrans']); //submits transaction to Analytics

        (function() {
          var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
          ga.src = ('https:' == document.location.protocol ? 'https://ssl' : '//www') + '.google-analytics.com/ga.js';
          var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

    </script>
<script>
	window.dataLayer = window.dataLayer || [];
	window.dataLayer.push({
		'section_of_website' : 'purchase'
	});
</script>
	<script>
    $(document).ready(function() {
        window.scrollTo(window.scrollX, window.scrollY - 1);
        window.scrollTo(window.scrollX, window.scrollY + 1);
    });
	 var ids =[<?php echo implode(',', $forGtag); ?>];
	 gtag('event', 'purchase', {'send_to': 'AW-984413743',
	    'dynx_itemid': ids,
	    'dynx_pagetype':'conversion',
	    'dynx_totalvalue':<?= number_format(str_replace(" ", "", $order_info["total"]), 0, ".", "") ?? 0 ?>,
	    'google_business_vertical': 'custom',
		'page_type': 'purchase'
	 });
	</script> 

	<?php $increment = 1; ?>

	<script type="text/javascript">
  		window.dataLayer = window.dataLayer || [];
      dataLayer.push({
        'transactionId': '<?php echo $order_id; ?>',
        'transactionTotal': <?php echo $order_info["total"]; ?>,
        'transactionTax': 0,
        'transactionShipping': 0,
        'transactionProducts': [
          <?php foreach ($order_products as $row) { ?>
            <?php if ($increment != 1) { echo ','; } ?> {
              <?php
                $product_info = $this->model_catalog_product->getProduct($row['product_id']);
              ?>
              'sku': '<?php echo $product_info["sku"]; ?>',
              'name': '<?php echo $row["name"]; ?>',
              'price': <?php echo $row["price"]; ?>,
              'quantity': <?php echo $row["quantity"]; ?>
            }
            <?php $increment++; ?>
          <?php } ?>
        ]
      });
      <?php $increment = 1; ?>
      gtag('event','purchase', {
        'value': <?php echo $order_info["total"]; ?>,
        'items': [
          <?php foreach ($order_products as $row) { ?>
            <?php
              $product_info = $this->model_catalog_product->getProduct($row['product_id']);
            ?>
            <?php if ($increment != 1) { echo ','; } ?> {
            'id': <?php echo $product_info["sku"]; ?>, 
            'google_business_vertical': 'retail'
            }
            <?php $increment++; ?>
          <?php } ?>
        ]
      });
      $(document).on('fbq-init', function() {
        fbq('track', 'Purchase', {
          value: <?php echo $order_info["total"]; ?>,
          currency: 'USD',
          <?php foreach ($order_products as $row) { ?>
            <?php
              $product_info = $this->model_catalog_product->getProduct($row['product_id']);
            ?>
            contents: [{
              id: <?php echo $product_info["sku"]; ?>, 
              quantity: <?php echo $row["quantity"]; ?>
            }],
          <?php } ?>
          content_type: 'product'
        });
      });
	</script>
<?php if(isset($order_id) && $order_id) { ?>
  <div id="ccx_tr_fda79ffa4631ff02e7f8f532c7480322"></div>
  <?php 
    $omnifeed = array();
    foreach ($order_products as $row) {
      $omnifeed[] = array("id" => $row['product_id'], "price" => round($row['price']), "in_basket" => $row['quantity']);
    }
    $omnifeedjson = json_encode($omnifeed);
  ?>
  <script type="text/javascript">
    /* PUT YOUR VARIABLES HERE */
    var W2T_vars = ''
    + '/' + 'products_ordered'
    + '/' + '<?= $order_info["total"]; ?>'
    + '/' + '<?= $order_id; ?>'
    + '/' + '<?= $omnifeedjson; ?>'
    ;
    /* END OF VARIABLES STRING */
    var tr_scr = document.createElement("script");
    tr_scr.type = "text/javascript";
    tr_scr.src = "//delivery.clickonometrics.pl/tracker=5867/track/shoppers"+W2T_vars+"/track.js";
    document.getElementById("ccx_tr_fda79ffa4631ff02e7f8f532c7480322").appendChild(tr_scr);
  </script>

  <script>
      var mktzCustom = { 
        'orderId': '<?= $order_id; ?>'
      };
    
      var _mktz = _mktz || [];
      _mktz.push(['_Goal','sale','<?= round($row['price']); ?>', {transaction:'<?= $order_id; ?>'}]);
  </script>

<?php } ?>




<?php echo $footer; ?>
