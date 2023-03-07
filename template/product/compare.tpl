<?php echo $header; ?>
<script>
  function addToCart(product_id) {
    $.ajax({
      url: 'index.php?route=checkout/cart/add',
      type: 'post',
      data: 'product_id=' + product_id,
      dataType: 'json',
      success: function(json) {
        if (json['redirect']) {
          location = json['redirect'];
        }
        if (json['success']) {
          window.location.href='index.php?route=checkout/simplecheckout';
        }
      }
    });
  }

  function removeCart(key) {
    $.ajax({
      url: 'index.php?route=checkout/cart/update',
      type: 'post',
      data: 'remove=' + key,
      dataType: 'json',
      success: function(json) {
        $('.success, .warning, .attention, .information').remove();

        if (json['output']) {
          $('#cart_total').html(json['total']);

          $('#cart .content').html(json['output']);
        }
      }
    });
  }
</script>
<link rel="stylesheet" href="catalog/view/smartv3/css/compare.css?v=1.0.0">
<?php if ($products) { ?>
  <?php if (count($products) == 1) { ?>
    <div style="min-height: 300px;" id="one_item"><?php echo $text_need; ?></div>
  <?php } else { ?>

<section id="compare_section">
      <div class="container content_in_main">
        <div class="row top_side">
          <div class="col s3 filtre_comparare compare_buttons">
            <span class="heading_title_style">
              <?php echo $heading_title; ?>
            </span>
            <p><?php echo $info_txt; ?></p>
              <?php if ($success) { ?>
              <div class="success"><i class="icon-warning-sign info_icon"></i><?php echo $success; ?></div>
              <?php } ?>

            <div onclick="compare.all();" class="button_com_all filter_block waves-effect filtre_active">
              <span><?php echo $button_show_all; ?> </span>
            </div>
            <div onclick="compare.differens();" class="button_com_diff filter_block waves-effect">
              <span><?php echo $button_show_different; ?> </span>
            </div>
            <div onclick="compare.equal();" class="button_com_sim filter_block waves-effect ">
              <span><?php echo $button_show_similar; ?> </span>
            </div>
          </div>
          <?php foreach ($products as $product) { ?>
          <div class="col m3 s6 produs">
            <div class="container_prod">
               <a href="<?php echo $products[$product['product_id']]['href']; ?>">
               <img src="<?php echo $products[$product['product_id']]['thumb']; ?>" alt="<?php echo $products[$product['product_id']]['name']; ?>" /></a>
              <h4><?php echo $products[$product['product_id']]['name']; ?></h4>

              <hr class="custom_compare_prod_hr">
              <div class="row credit_txt">
                <div class="col m6 s12">
                 <h6>
                  <span class="disp"><?php echo $button_cart; ?></span>
                  <?php if ($products[$product['product_id']]['price']) { ?>
                      <?php if (!$products[$product['product_id']]['special']) { ?>
                      <?php echo $products[$product['product_id']]['price']; ?> <small><?php echo $currency; ?></small>
                      <?php } else { ?>
                      <div>
                      <span class="price-old" style="text-decoration:line-through;"><?php echo $products[$product['product_id']]['price']; ?><small> <?php echo $currency; ?></small></span>
                      <?php echo $products[$product['product_id']]['special']; ?><small> <?php echo $currency; ?></small>
                      </div>
                      <?php } ?>
                  <?php } ?>
                  </h6>
                </div>

                <div class="col m6 s6 price_container cred">
                <div style="display: none;"><?php echo $product['price2']; ?></div>
                                <?php if (!$product['special']) { ?>
                                  <h4 class="price_prod" style="float: right; padding-left: 0 !important;">

                                    <?php if ($product['credit'] == 1) { ?>

                                    <?php } elseif ($product['credit'] == 2) { ?>
                                    <!-- Samsung S4 mini -->
                                      <?php $price_lunar = ceil($product['price2']/6); ?>
                                        <div class="old_price"><small><?php echo $month_t_4 ?></small></div>
                                        <span><?php echo $price_lunar; ?><small><?php echo $leiluna; ?></small></span>
                                    <?php } elseif ($product['credit'] == 3) { ?>
                                    <!-- Lenovo Smartphone 0 0 4 -->
                                      <?php $price_lunar = ceil($product['price2']/4); ?>
                                      <div class="old_price"><small><?php echo $month_t_4 ?></small></div>
                                      <span><?php echo $price_lunar; ?><small><?php echo $leiluna; ?></small></span>
                                    <?php } elseif ($product['credit'] == 4) { ?>
                                    <!-- 24 luni -->
                                      <?php $price_lunar = ceil((($product['price2']*0.6027)+$product['price2'])/36); ?>
                                      <div class="old_price"><small><?php echo $month_t_4 ?></small></div>
                                      <span><?php echo $price_lunar; ?><small><?php echo $leiluna; ?></small></span>
                                    <?php } elseif (isset($credit_10)) { ?>
                                      <!-- <div id="new_price" > <span><?php echo $credit_10_price_lunar; ?></span> <span><small><?php echo $leiluna; ?></small></span> </div>
                                    <div class="old_price middle_txt"><small> <?php echo $timpde; ?></small> <?php echo $credit_10_avans; ?> <small><?php echo $product_currency; ?> <?php echo $avans_0p_txt; ?></small></div> -->
                                    <?php } ?>
                  </h4>
                                  <?php } else { ?>
                  <h4 class="price_prod" style="float: right; padding-left: 0 !important;">

                                    <?php if ($product['credit'] == 1) { ?>

                                    <?php } elseif ($product['credit'] == 2) { ?>
                                    <!-- Samsung S4 mini -->
                                      <?php $price_lunar = ceil($product['price2']/6); ?>
                                      <div class="old_price"><small><?php echo $month_t_4 ?></small></div>
                                      <span><?php echo $price_lunar; ?><small><?php echo $leiluna; ?></small></span>
                                    <?php } elseif ($product['credit'] == 3) { ?>
                                    <!-- Lenovo Smartphone 0 0 4 -->
                                      <?php $price_lunar = ceil($product['special2']/4); ?>
                                      <div class="old_price"><small><?php echo $month_t_4 ?></small></div>
                                      <span><?php echo $price_lunar; ?><small><?php echo $leiluna; ?></small></span>
                                    <?php } elseif ($product['credit'] == 4) { ?>
                                    <!-- 24 luni -->
                                      <?php $price_lunar = ceil((($product['special2']*0.6027)+$product['special2'])/36); ?>
                                      <div class="old_price"><small><?php echo $month_t_4 ?></small></div>
                                      <span><?php echo $price_lunar; ?><small><?php echo $leiluna; ?></small></span>
                                    <?php } elseif (isset($credit_10)) { ?>
                                      <!-- <div id="new_price" > <span><?php echo $credit_10_price_lunar; ?></span> <span><small><?php echo $leiluna; ?></small></span> </div>
                                    <div class="old_price middle_txt"><small> <?php echo $timpde; ?></small> <?php echo $credit_10_avans; ?> <small><?php echo $product_currency; ?> <?php echo $avans_0p_txt; ?></small></div> -->
                                    <?php } ?>
                  </h4>
                                  <?php } ?>
                </div>

              </div>
              <div class="close_butt_C_container waves-effect waves-light">
                <a href="<?php echo $product['remove']; ?>">
                  <svg class="new-svg-icon close_compare"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-close"></use></svg>
                </a>
              </div>

            </div>
          </div>
          <?php } ?>
          <?php if (count($products) ==2) { ?>
          <div class="col m3 s6 produs"></div>
          <?php } ?>
        </div>
      </div>
    </section>
    <section id="specification_section">
      <div class="container content_in_main all_specification">
        <!-- Tabel Cu toate specificatiile -->
        <table class="bordered Specificatii_table">
          <tbody>
            <?php $index = 1; ?>
            <?php foreach ($attribute_groups as $attribute_group) { ?>
            <!-- row that display_just on Mobile -->
                <tr class="disable_on_desktop headings_type_mob" <?php if ($attribute_group['name']=='culoare_new') { ?>style="display:none"<?php } ?>>
                  <td class="heading_type" colspan="<?php echo count($products) + 1; ?>"><?php echo $attribute_group['name']; ?></td>
                </tr>
                <tr class="disable_on_desktop">
                <?php foreach ($products as $product) { ?>
                  <td class="<?php echo $attribute_group['attribute_group_id']; ?>">
                    <?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
                    <?php $index++; ?>
                    <?php if (isset($products[$product['product_id']]['attribute'][$key])) { ?>
                      <?php $index = $index++; ?>
                    <div id="specificatii attribute_options_<?php echo $key.'_'.$index++; ?>" class="attribute_options_<?php echo $key; ?>" <?php if ($key=='17'){ ?>style="display:none;"<?php } ?>><?php echo $products[$product['product_id']]['attribute'][$key]; ?></div>
                    <?php } else { ?>
                    <div id="specificatii attribute_options_<?php echo $key.'_'.$index++; ?>" class="attribute_options_<?php echo $key; ?>"></div>
                    <?php } ?>
                    <?php } ?>

                  </td>
                <?php } ?>
                </tr>
                <?php if (count($products) >2) { ?><?php } ?>
            <?php } ?>

            <!-- end row thatdisplay_just on Mobile -->

            <?php foreach ($attribute_groups as $attribute_group) { ?>
            <tr>
              <?php $index = 1; ?>
              <td class="heading_type desk_head" <?php if ($attribute_group['name']=='culoare_new') { ?>style="display:none"<?php } ?>><?php echo $attribute_group['name']; ?></td>
              <?php foreach ($products as $product) { ?>
                  <td class="desk_head prod_compare <?php echo $attribute_group['attribute_group_id']; ?>">
                    <?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>

                    <?php if (isset($products[$product['product_id']]['attribute'][$key])) { ?>
                    <div id="attribute_options_<?php echo $key.'_'.$index++; ?>" class="attribute_options_<?php echo $key; ?>" <?php if ($key=='17'){ ?>style="display:none;"<?php } ?>><?php echo $products[$product['product_id']]['attribute'][$key]; ?></div>
                    <?php } else { ?>
                    <div id="attribute_options_<?php echo $key.'_'.$index++; ?>" class="attribute_options_<?php echo $key; ?>"></div>
                    <?php } ?>
                    <?php } ?>
                  </td>
                <?php } ?>
                <?php if (count($products) ==2) { ?><td class="desk_head"></td><?php } ?>
            </tr>
            <?php } ?>
          </tbody>
        </table>
      </div>
    </section>
    <div id="background_hr">
      <hr id="hr_divider">
    </div>
    <section id="bottom_section_compare">
      <div class="container content_in_main bottom_content" id="disp_desktop">
        <div class="row">
          <div class="col m3 disable_on_mobile"></div>
          <?php foreach ($products as $product) { ?>
          <div class="btns_compare">
            <div class="col m3 s6 buy_lnk">
              <a class="waves-effect waves-light btn by_on_compare" onclick="addToCart('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></a>
            </div>
            <div class="col m3 s6 credit_lnk">
              <a href="<?php echo $products[$product['product_id']]['href']; ?>" class="link_go_credit"><?php echo $credit_options; ?></a>
            </div>
          </div>
          <?php } ?>
          <?php if (count($products) ==2) { ?>
          <div class="col m3 s6"></div>
          <?php } ?>
        </div>
      </div>
      <div class="container content_in_main bottom_content" style="display: none;" id="disp_mobile">
        <div class="row">
          <div class="col m3 disable_on_mobile"></div>
          <?php foreach ($products as $product) { ?>
          <div class="col m3 s6 buy_lnk">
            <a class="waves-effect waves-light btn by_on_compare" onclick="addToCart('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></a>
            <a href="<?php echo $products[$product['product_id']]['href']; ?>" class="link_go_credit"><?php echo $credit_options; ?></a>
          </div>
          <?php } ?>
          <?php if (count($products) ==2) { ?>
          <div class="col m3 s6"></div>
          <?php } ?>
        </div>
      </div>
    </section>
    <section id="intrebari_section">
      <h2 class="intrebari_title"><?php echo $sapte_intrebari; ?></h2>
      <form id="intrebari_form" onsubmit="return false;" method="POST">

        <div style="text-align:center;margin-top:110px;">
          <span class="step">
            <span class="first_span"><span><?php echo $parcurs; ?></span> 12.5%</span>
          </span>
          <span class="step">
            <span class="first_span"><span><?php echo $parcurs; ?></span> 25%</span>
          </span>
          <span class="step">
            <span class="first_span"><span><?php echo $parcurs; ?></span> 37.5%</span>
          </span>
          <span class="step">
            <span class="first_span"><span><?php echo $parcurs; ?></span> 50%</span>
          </span>
          <span class="step">
            <span class="first_span"><span><?php echo $parcurs; ?></span> 62.5%</span>
          </span>
          <span class="step">
            <span class="first_span"><span><?php echo $parcurs; ?></span> 75%</span>
          </span>
          <span class="step">
            <span class="first_span"><span><?php echo $parcurs; ?></span> 87.5%</span>
          </span>
          <span class="step">
            <span class="first_span"><span><?php echo $parcurs; ?></span> 100%</span>
          </span>
        </div>

        <div class="tab_intrebari">
          <span class="question"><?php echo $intrebare_1; ?></span>
          <div class="question_container">
            <input class="question_radio" type="radio" name="question 1" id="q1-a1" value="<?php echo $intrebare_1_r1; ?>" oninput="this.className = ''" checked>
            <label for="q1-a1"><?php echo $intrebare_1_r1; ?></label>
          </div>

          <div class="question_container">
            <input class="question_radio" type="radio" name="question 1" id="q1-a2" value="<?php echo $intrebare_1_r2; ?>" oninput="this.className = ''">
            <label for="q1-a2"><?php echo $intrebare_1_r2; ?></label>
          </div>

          <div class="question_container">
            <input class="question_radio" type="radio" name="question 1" id="q1-a3" value="<?php echo $intrebare_1_r3; ?>" oninput="this.className = ''">
            <label for="q1-a3"><?php echo $intrebare_1_r3; ?></label>
          </div>

          <div class="question_container">
            <input class="question_radio" type="radio" name="question 1" id="q1-a4" value="<?php echo $intrebare_1_r4; ?>" oninput="this.className = ''">
            <label for="q1-a4"><?php echo $intrebare_1_r4; ?></label>
          </div>
        </div>

        <div class="tab_intrebari">
          <span class="question"><?php echo $intrebare_2; ?></span>
          <div class="question_container">
            <input class="question_radio" type="radio" name="question 2" id="q2-a1" value="<?php echo $intrebare_2_r1; ?>" oninput="this.className = ''" checked>
            <label for="q2-a1"><?php echo $intrebare_2_r1; ?></label>
          </div>

          <div class="question_container">
            <input class="question_radio" type="radio" name="question 2" id="q2-a2" value="<?php echo $intrebare_2_r2; ?>" oninput="this.className = ''">
            <label for="q2-a2"><?php echo $intrebare_2_r2; ?></label>
          </div>

          <div class="question_container">
            <input class="question_radio" type="radio" name="question 2" id="q2-a3" value="<?php echo $intrebare_2_r3; ?>" oninput="this.className = ''">
            <label for="q2-a3"><?php echo $intrebare_2_r3; ?></label>
          </div>

          <div class="question_container">
            <input class="question_radio" type="radio" name="question 2" id="q2-a4" value="<?php echo $intrebare_2_r4; ?>" oninput="this.className = ''">
            <label for="q2-a4"><?php echo $intrebare_2_r4; ?></label>
          </div>
        </div>

        <div class="tab_intrebari">
          <span class="question"><?php echo $intrebare_3; ?></span>
          <div class="question_container">
            <input class="question_radio" type="radio" name="question 3" id="q3-a1" value="<?php echo $intrebare_3_r1; ?>" oninput="this.className = ''" checked>
            <label for="q3-a1"><?php echo $intrebare_3_r1; ?></label>
          </div>

          <div class="question_container">
            <input class="question_radio" type="radio" name="question 3" id="q3-a2" value="<?php echo $intrebare_3_r2; ?>" oninput="this.className = ''">
            <label for="q3-a2"><?php echo $intrebare_3_r2; ?></label>
          </div>

          <div class="question_container">
            <input class="question_radio" type="radio" name="question 3" id="q3-a3" value="<?php echo $intrebare_3_r3; ?>" oninput="this.className = ''">
            <label for="q3-a3"><?php echo $intrebare_3_r3; ?></label>
          </div>

          <div class="question_container">
            <input class="question_radio" type="radio" name="question 3" id="q3-a4" value="<?php echo $intrebare_3_r4; ?>" oninput="this.className = ''">
            <label for="q3-a4"><?php echo $intrebare_3_r4; ?></label>
          </div>
        </div>

        <div class="tab_intrebari">
          <span class="question"><?php echo $intrebare_4; ?></span>
          <div class="question_container">
            <input class="question_radio" type="radio" name="question 4" id="q4-a1" value="<?php echo $intrebare_4_r1; ?>" oninput="this.className = ''" checked>
            <label for="q4-a1"><?php echo $intrebare_4_r1; ?></label>
          </div>

          <div class="question_container">
            <input class="question_radio" type="radio" name="question 4" id="q4-a2" value="<?php echo $intrebare_4_r2; ?>" oninput="this.className = ''">
            <label for="q4-a2"><?php echo $intrebare_4_r2; ?></label>
          </div>

          <div class="question_container">
            <input class="question_radio" type="radio" name="question 4" id="q4-a3" value="<?php echo $intrebare_4_r3; ?>" oninput="this.className = ''">
            <label for="q4-a3"><?php echo $intrebare_4_r3; ?></label>
          </div>

          <div class="question_container">
            <input class="question_radio" type="radio" name="question 4" id="q4-a4" value="<?php echo $intrebare_4_r4; ?>" oninput="this.className = ''">
            <label for="q4-a4"><?php echo $intrebare_4_r4; ?></label>
          </div>
        </div>

        <div class="tab_intrebari">
          <span class="question"><?php echo $intrebare_5; ?></span>
          <div class="question_container">
            <input class="question_radio" type="radio" name="question 5" id="q5-a1" value="<?php echo $intrebare_5_r1; ?>" oninput="this.className = ''" checked>
            <label for="q5-a1"><?php echo $intrebare_5_r1; ?></label>
          </div>

          <div class="question_container">
            <input class="question_radio" type="radio" name="question 5" id="q5-a2" value="<?php echo $intrebare_5_r2; ?>" oninput="this.className = ''">
            <label for="q5-a2"><?php echo $intrebare_intrebari5_r2; ?></label>
          </div>

          <div class="question_container">
            <input class="question_radio" type="radio" name="question 5" id="q5-a3" value="<?php echo $intrebare_5_r3; ?>" oninput="this.className = ''">
            <label for="q5-a3"><?php echo $intrebare_5_r3; ?></label>
          </div>

          <div class="question_container">
            <input class="question_radio" type="radio" name="question 5" id="q5-a4" value="<?php echo $intrebare_5_r4; ?>" oninput="this.className = ''">
            <label for="q5-a4"><?php echo $intrebare_5_r4; ?></label>
          </div>
        </div>

        <div class="tab_intrebari">
          <span class="question"><?php echo $intrebare_6; ?></span>
          <div class="question_container">
            <input class="question_radio" type="radio" name="question 6" id="q6-a1" value="<?php echo $intrebare_6_r1; ?>" oninput="this.className = ''" checked>
            <label for="q6-a1"><?php echo $intrebare_6_r1; ?></label>
          </div>

          <div class="question_container">
            <input class="question_radio" type="radio" name="question 6" id="q6-a2" value="<?php echo $intrebare_6_r2; ?>" oninput="this.className = ''">
            <label for="q6-a2"><?php echo $intrebare_6_r2; ?></label>
          </div>

          <div class="question_container">
            <input class="question_radio" type="radio" name="question 6" id="q6-a3" value="<?php echo $intrebare_6_r3; ?>" oninput="this.className = ''">
            <label for="q6-a3"><?php echo $intrebare_6_r3; ?></label>
          </div>

          <div class="question_container">
            <input class="question_radio" type="radio" name="question 6" id="q6-a4" value="<?php echo $intrebare_6_r4; ?>" oninput="this.className = ''">
            <label for="q6-a4"><?php echo $intrebare_6_r4; ?></label>
          </div>
        </div>

        <div class="tab_intrebari">
          <span class="question"><?php echo $intrebare_7; ?></span>
          <div class="question_container">
            <input class="question_radio" type="radio" name="question 7" id="q7-a1" value="<?php echo $intrebare_7_r1; ?>" oninput="this.className = ''" checked>
            <label for="q7-a1"><?php echo $intrebare_7_r1; ?></label>
          </div>

          <div class="question_container">
            <input class="question_radio" type="radio" name="question 7" id="q7-a2" value="<?php echo $intrebare_7_r2; ?>" oninput="this.className = ''">
            <label for="q7-a2"><?php echo $intrebare_7_r2; ?></label>
          </div>

          <div class="question_container">
            <input class="question_radio" type="radio" name="question 7" id="q7-a3" value="<?php echo $intrebare_7_r3; ?>" oninput="this.className = ''">
            <label for="q7-a3"><?php echo $intrebare_7_r3; ?></label>
          </div>

          <div class="question_container">
            <input class="question_radio" type="radio" name="question 7" id="q7-a4" value="<?php echo $intrebare_7_r4; ?>" oninput="this.className = ''">
            <label for="q7-a4"><?php echo $intrebare_7_r4; ?></label>
          </div>
        </div>

        <div class="tab_intrebari">
          <?php echo $lasa_telefon; ?>
          <div class="question_container1">
            <input class="phone_user_question" type="number" name="phone_user_question" id="phone_user_question" placeholder="+373 XX XXX XXX" required>
          </div>
        </div>

        <div class="telefon_intrebari tel_mobile">
          <span>In dependenta de cit de des faceti poze cu smartphone-ul va putem recomanda anumite modele de telefon.</span>
          <span>sau suna +373 68 345870</span>
        </div>

        <div>
          <div class="intrebari_buttons">
            <?php echo $inapoi_button; ?>
            <?php echo $inainte_button; ?>
            <?php echo $trimite_button; ?>
          </div>
        </div>
        <div class="mesaj_succes_intrebari" id="mesaj_succes_intrebari">
          <span class="succes_intrebari">Solicitare trimisa!<br>Va vom contacta in cel mai scurt timp cu detalii.</span>
        </div>
      </form>
      <div class="telefon_intrebari">
        <span>In dependenta de cit de des faceti poze cu smartphone-ul va putem recomanda anumite modele de telefon.</span>
        <span>sau suna +373 68 345870</span>
      </div>

      <script type="text/javascript">
        jQuery(document).ready(function(){
          jQuery(".telefon_intrebari").height(jQuery("#intrebari_form").height());
        });
      </script>

      <script type="text/javascript">
          var currentTab = 0; // Current tab is set to be the first tab (0)
          showTab(currentTab); // Display the current tab

          function showTab(n) {
            // This function will display the specified tab of the form ...
            var x = document.getElementsByClassName("tab_intrebari");
            x[n].style.display = "block";
            // ... and fix the Previous/Next buttons:
            if (n == 0) {
              document.getElementById("prevBtn").style.display = "none";
            } else {
              document.getElementById("prevBtn").style.display = "inline";
            }
            if (n == (x.length - 1)) {
              document.getElementById("nextBtn").innerHTML = '<svg class="new-svg-icon" width="18" height="18"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-check"></use></svg>Trimite';
              $("#nextBtn").css("display", "none");
              $("#nextBtn1.nextBtn").css("display", "inline");
            } else {
              document.getElementById("nextBtn").innerHTML = '<svg class="new-svg-icon" width="18" height="18"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-check"></use></svg><?php echo $inainte_text ?>';
              $("#nextBtn").css("display", "inline");
              $("#nextBtn1.nextBtn").css("display", "none");
            }
            // ... and run a function that displays the correct step indicator:
            fixStepIndicator(n)
          }

          function nextPrev(n) {
            // This function will figure out which tab to display
            var x = document.getElementsByClassName("tab_intrebari");
            // Exit the function if any field in the current tab is invalid:
            if (n == 1 && !validateForm()) return false;
            // Hide the current tab:
            x[currentTab].style.display = "none";
            // Increase or decrease the current tab by 1:
            currentTab = currentTab + n;
            // if you have reached the end of the form... :
            if (currentTab >= x.length) {
              //...the form gets submitted:
              // document.getElementById("intrebari_form").submit();
            }
            // Otherwise, display the correct tab:
            showTab(currentTab);
          }

          function validateForm() {
            var x, y, i, valid = true;
            x = document.getElementsByClassName("tab_intrebari");
            y = x[currentTab].getElementsByTagName("input");
            if (valid) {
              document.getElementsByClassName("step")[currentTab].className += " finish";
            }
            return valid;
          }

          function fixStepIndicator(n) {
            // This function removes the "active" class of all steps...
            var i, x = document.getElementsByClassName("step");
            for (i = 0; i < x.length; i++) {
              x[i].className = x[i].className.replace(" active", "");
            }
            //... and adds the "active" class to the current step:
            x[n].className += " active";
          }
          $(".submit_questions").click(function(){
            if ($("#phone_user_question").val() !='') {
              $("#mesaj_succes_intrebari").css("display", "flex");
              return false;
            }
          });

        </script>
        <script src="/catalog/view/smartv3/js/compare.js" charset="utf-8"></script>
    </section>

<?php } } ?>

<script>
		$(document).ready(function(){
      function addToCart(product_id) {
        $.ajax({
          url: 'index.php?route=checkout/cart/add',
          type: 'post',
          data: 'product_id=' + product_id,
          dataType: 'json',
          success: function(json) {
            if (json['redirect']) {
              location = json['redirect'];
            }
            if (json['success']) {
              $('#cart_total').html(json['total']);
            }
          }
        });
      }
			if ($('#compare-total').html() == '(0)'){
				$('#remove_all').remove();
				$('.compare-info').remove();
				$('.button_com_all').addClass('button_diff');
				$('#compare_buttons').remove();
				$('#no_products').html('<div class="content"><span style="color: red"><?php echo $text_different_categories; ?></span></div>');
			}
		});
	</script>
  <script type="application/javascript">
  var colors = ['#CCCC00', '#996600', '#FF6600', '#FF0000', '#FF0066', '#FF0099', '#FF00FF', '#6600CC', '#3300FF', '#0099FF', '#33CCCC', '#00CC00', '#99CC00', '#999900'];
 $('.button_com_all').addClass('button_diff');

var compare = {

  equal: function() {
	$('.compare_buttons').each(function(){
	$('.button_com_all').removeClass('filtre_active');
	$('.button_com_sim').addClass('filtre_active');
	$('.button_com_diff').removeClass('filtre_active');
	});
    $('.compare-info .attribute_options span').css('color', '#ff3101');
	<?php foreach ($attribute_groups as $attribute_group) { ?>
		<?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
			quantity = $('.attribute_options_<?php echo $key; ?>').length;
					$('.attribute_options_<?php echo $key; ?>').each(function(){
						if ($(this).hasClass('different')) {
							$(this).removeClass('different');
						}
						if ($(this).hasClass('invis')) {
							$(this).removeClass('invis');
						}
					});

					for (var i = 1; i <= quantity; i++) {
							var compare_product_1 = $('#attribute_options_<?php echo $key; ?>_'+i);
							for (var j = 1; j < quantity; j++) {
							var compare_product_2 = $('#attribute_options_<?php echo $key; ?>_'+(j+i));
							if (compare_product_1.text() == compare_product_2.text()) {
								compare_product_1.addClass('equal');
								compare_product_2.addClass('equal');
								}
							}
						}
						$('.attribute_options_<?php echo $key; ?>').each(function(){
							if ($(this).hasClass('equal') == false) {
								$(this).addClass('invis');
							}
						});
		<?php } ?>
	<?php } ?>
  },
  differens: function() {
	$('.compare_buttons').each(function(){
	$('.button_com_all').removeClass('filtre_active');
	$('.button_com_sim').removeClass('filtre_active');
	$('.button_com_diff').addClass('filtre_active');
	});
    $('.compare-info .attribute_options span').css('color', '#ff3101');
	<?php foreach ($attribute_groups as $attribute_group) { ?>
		<?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
			quantity = $('.attribute_options_<?php echo $key; ?>').length;
					$('.attribute_options_<?php echo $key; ?>').each(function(){
						if ($(this).hasClass('equal')) {
							$(this).removeClass('equal');
						}
						if ($(this).hasClass('invis')) {
							$(this).removeClass('invis');
						}
					});
					for (var i = 1; i <= quantity; i++) {
							var compare_product_1 = $('#attribute_options_<?php echo $key; ?>_'+i);
							for (var j = 1; j < quantity; j++) {
							var compare_product_2 = $('#attribute_options_<?php echo $key; ?>_'+(i+j));
							if (compare_product_1.text() == compare_product_2.text()) {
								compare_product_1.addClass('invis');
								compare_product_2.addClass('invis');
								}
							}
						}
						$('.attribute_options_<?php echo $key; ?>').each(function(){
							if ($(this).hasClass('invis') == false) {
								$(this).addClass('different');
							}
						});
		<?php } ?>
	<?php } ?>
  },
  all: function() {
	$('.compare_buttons').each(function(){
	$('.button_com_all').addClass('filtre_active');
	$('.button_com_sim').removeClass('filtre_active');
	$('.button_com_diff').removeClass('filtre_active');
	});

    $('.compare-info .attribute_options span').css('color', '#ff3101');
	<?php foreach ($attribute_groups as $attribute_group) { ?>
		<?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
			$('.attribute_options_<?php echo $key; ?>').each(function(){
				if ($(this).hasClass('equal')) {
					$(this).removeClass('equal');
				}
				if ($(this).hasClass('invis')) {
					$(this).removeClass('invis');
				}
				if ($(this).hasClass('different')) {
					$(this).removeClass('different');
				}
			});
		<?php } ?>
	<?php } ?>
  },
  rand: function (min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
  }
}
  </script>

<?php echo $footer; ?>
