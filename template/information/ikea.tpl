<?php echo $header; ?>

<link rel="stylesheet" href="catalog/view/smartv3/css/mobila.css?v=0.0.3">
<script defer="defer" type="text/javascript" src="catalog/view/smartv3/js/home.js?v=0.0.17"></script>

<div class="__new_content_home">
    <div class="__new_content_center_align">
      <div class="__new_search_home">
        <input type="text" name="new_input_search_home" class="__new_input_search_home" autocomplete="off" id="__new_input_search_home" placeholder="<?php echo $search_placeholder; ?>" onfocus="this.placeholder = ''" onblur="this.placeholder = '<?php echo $search_placeholder; ?>'">
        <span class="__new_search_button_home"><?php echo $result_cauta; ?></span>
        <svg class="new-svg-icon __new_icon_search_home" width="25" height="25"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-search"></use></svg>
        <i class="__new_icon_search_home_mobile">
          <svg class="new-svg-icon" width="24" height="24"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-search"></use></svg>
        </i>
        <span class="__new_clear_search">X</span>
      </div>
      <div class="__new_overlay_search"></div>
      <div class="__new_search_results_block">
          <div class="__new_search_results">
            <div class="__new_search_sucestii">
              <div class="__new_search_sugestii_part">
                <span class="__new_search_sugestii_part_title"><?php echo $sugestii; ?></span>
                <span class="__new_search_sugestii_part_option">Realme C2</span>
                <span class="__new_search_sugestii_part_option">Note 8</span>
                <span class="__new_search_sugestii_part_option">iPhone 11</span>
                <span class="__new_search_sugestii_part_option">A51</span>
                <span class="__new_search_sugestii_part_option">Realme XT</span>
                <span class="__new_search_sugestii_part_option">Redmi 8</span>
                <span class="__new_search_sugestii_part_option">Note 9s</span>
                <span class="__new_search_sugestii_part_option">S20</span>
                <span class="__new_search_sugestii_part_option">Note 8 pro</span>
                <span class="__new_search_sugestii_part_option">IHunt p13000</span>
              </div>
              <div class="__new_search_sugestii_part">
                <a href="" class="__new_search_sugestii_part_title"><?php echo $direct_categorii; ?></a>
                <a href="" class="__new_search_sugestii_part_option"><?php echo $menu_smartphones_title; ?></a>
                <a href="" class="__new_search_sugestii_part_option"><?php echo $menu_category_0; ?></a>
                <a href="" class="__new_search_sugestii_part_option"><?php echo $menu_tv_title; ?></a>
                <a href="" class="__new_search_sugestii_part_option"><?php echo $menu_category_1; ?></a>
                <a href="" class="__new_search_sugestii_part_option"><?php echo $menu_category_2; ?></a>
                <a href="" class="__new_search_sugestii_part_option"><?php echo $menu_category_3; ?></a>
                <a href="" class="__new_search_sugestii_part_option"><?php echo $menu_category_4; ?></a>
                <a href="" class="__new_search_sugestii_part_option"><?php echo $menu_category_5; ?></a>
                <a href="" class="__new_search_sugestii_part_option"><?php echo $menu_notebook_title; ?></a>
              </div>
            </div>
            <div class="__new_search_results_products">
            </div>
            <div class="__new_search_results_categories">
              <span class="__new_search_categories_title"><?php echo $result_cauta; ?> <b class="__new_search_kw"><span></span></b> <?php echo $result_in_categor; ?></span>
            </div>

            <div class="__new_search_not_found"><?php echo $nu_a_gasit; ?>
              <!-- <form method="POST" onsubmit="return false;">
                <input type="hidden" name="tip_comanda" value="Nu a gasit (Search)">
                <input type="text" name="roistat_visit" value="<?php echo $_COOKIE['roistat_visit']; ?>" style="display: none;">
                <input type="text" name="new_responsible_by_route" value="1" style="display: none;">
                <input type="text" name="cerere_apel_cta" style="display: none" value="Cerere apel Nu a gasit Search">
                <input type="hidden" name="categ-produs" value="Ikea Lading">
                <div class="__new_search_action_container">
                  <input type="text" class="__new_phone_from_search" introdu-telefon name="Telefon">
                  <button type="submit" class="__new_send_cta_from_search" text-succes="<?= $thank_you_message; ?>"><?= $button_send_phone; ?></button>
                </div>
              </form> -->
            </div>
            
            <div class="__new_search_loader"></div>
          </div>
      </div>

      <div class="__new_categories_home">
        <div class="__new_categories_home_block1">

          <a href="scaune-pentru-sufragerie-scaune-ikea" not-menu="yes" id="__new_open_smartphone" class="__new_category_home __new_category_ikea">
            <div class="__new_categories_image_container">
              <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_ikea/scaun.png">
            </div>
            <span class="__new_category_home_name" menu_lv="<?= $menu_items[6]['level']; ?>" menu_id="<?= $menu_items[6]['menu_id']; ?>"><?php echo $new_scaune_ikea; ?></span>

            <div class="__new_main_categories_menu"></div>
          </a>

          <a href="sisteme-solutii-de-depozitare-depozitare-ikea" not-menu="yes" id="__new_open_laptop" class="__new_category_home __new_category_ikea">
            <div class="__new_categories_image_container">
              <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_ikea/mobilier.png">
            </div>
            <span class="__new_category_home_name" menu_lv="<?= $menu_items[7]['level']; ?>" menu_id="<?= $menu_items[7]['menu_id']; ?>"><?php echo $new_depozitare_ikea; ?></span>

            <div class="__new_main_categories_menu"></div>
          </a>

          <a href="masute-de-cafea-si-auxiliare-mese-ikea" not-menu="yes" id="__new_open_electrocasnice" class="__new_category_home __new_category_ikea">
            <div class="__new_categories_image_container">
              <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_ikea/mese.png">
            </div>
            <span class="__new_category_home_name" menu_lv="<?= $menu_items[9]['level']; ?>" menu_id="<?= $menu_items[9]['menu_id']; ?>"><?php echo $new_mese_ikea; ?></span>

            <div class="__new_main_categories_menu"></div>
          </a>

          <a href="paturi-ikea" not-menu="yes" id="__new_open_mobilier" class="__new_category_home __new_category_ikea">
            <div class="__new_categories_image_container">
              <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_ikea/paturi.png">
            </div>
            <span class="__new_category_home_name" menu_lv="<?= $menu_items[10]['level']; ?>" menu_id="<?= $menu_items[10]['menu_id']; ?>"><?php echo $new_paturi_ikea; ?></span>

            <div class="__new_main_categories_menu"></div>
          </a>

          <a href="canapele-si-fotolii-canapele-ikea" not-menu="yes" id="__new_open_tv" class="__new_category_home __new_category_ikea">
            <div class="__new_categories_image_container">
              <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_ikea/canapele.png">
            </div>
            <span class="__new_category_home_name"  menu_lv="<?= $menu_items[11]['level']; ?>" menu_id="<?= $menu_items[11]['menu_id']; ?>"><?php echo $new_canapele_ikea; ?></span>

            <div class="__new_main_categories_menu"></div>
          </a>

          <a href="taburete-si-banci-mobilier-pentru-copii-ikea" not-menu="yes" id="__new_open_gadget" class="__new_category_home __new_category_ikea __new_desktop_only">
            <div class="__new_categories_image_container">
              <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_ikea/pentru-copii.png">
            </div>
            <span class="__new_category_home_name" menu_lv="<?= $menu_items[12]['level']; ?>" menu_id="<?= $menu_items[12]['menu_id']; ?>"><?php echo $new_baby_ikea; ?></span>

            <div class="__new_main_categories_menu"></div>
          </a>

          <div id="__new_open_all_categories_mobile" class="__new_category_home __new_category_ikea __new_mobile_only">
            <div class="__new_categories_image_container">
              <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_home/Toate-Catgoriile.png">
            </div>
            <span class="__new_category_home_name" menu_lv="<?= $menu_items[8]['level']; ?>" menu_id="<?= $menu_items[8]['menu_id']; ?>"><?php echo $new_toate_categ; ?></span>
          </div>

        </div>
        <div class="__new_categories_home_block2">

          <div id="__new_open_all_categories" class="__new_category_home __new_desktop_only">
            <div class="__new_categories_image_container">
              <img class="__new_category_home_image" src="catalog/view/smartv3/img/__new_home/Toate-Catgoriile.png">
            </div>
            <span class="__new_category_home_name" menu_lv="<?= $menu_items[8]['level']; ?>" menu_id="<?= $menu_items[8]['menu_id']; ?>"><?php echo $new_toate_categ; ?></span>

            <div class="__new_main_categories_all"></div>
          </div>

          <?php if(!empty($banners)) { ?>
            <div class="__new_atuuri_home_container">
              <svg class="new-svg-icon __new_icon-left"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg>
              <div class="__new_atuuri_home">
                <?php foreach ($banners as $banner) { ?>
                  <div <?php if($banner['background']) { echo 'style="background-color: '. $banner['background'] .';"'; } ?> >
                    <?php if($banner['link']) { ?>
                      <a href="<?= $banner['link'] ?>">
                        <img src="<?= $banner['image'] ?>" alt="<?= $banner['title']; ?>" title="<?= $banner['title']; ?>" />
                      </a>
                    <?php } else { ?>
                      <img src="<?= $banner['image'] ?>" alt="<?= $banner['title']; ?>" title="<?= $banner['title']; ?>" />
                    <?php } ?>
                  </div>
                <? } ?>
              </div>
              <svg class="new-svg-icon __new_icon-right"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg>
            </div>
          <?php } ?>
          
        </div>
      </div>

      <div class="__new_chats_home">
        <div class="__new_chats_container">
          <div class="__new_chats_block1">
            <span class="__new_chats_title"><?php echo $hai_sa_vorbim; ?></span>
            <img src="catalog/view/smartv3/img/__new_chats/Megafon.png">
          </div>
          <div class="__new_chats_block2">
            <a href="viber://pa?chatURI=smartclick">
              <img src="catalog/view/smartv3/img/__new_chats/Viber.png">
            </a>
            <a href="https://m.me/smart.md.moldova">
              <img src="catalog/view/smartv3/img/__new_chats/Messenger.png">
            </a>
            <a href="https://t.me/Smart_md_Bot">
              <img src="catalog/view/smartv3/img/__new_chats/Telegram.png">
            </a>
            <!-- <a onclick="MeTalk('openSupport');  return false;">
              <img src="catalog/view/smartv3/img/__new_chats/Scrie.png">
            </a> -->
          </div>
        </div>
      </div>

      <section id="__new_motive" class="__new_mobile_new_version __new_mobile_only">
        <h2 class="__new_three_motif"><?php echo $three_motif ?></h2>
        <div class="__new_container_motif">
          <div class="__new_each_motif"><?php echo $three_motif_1; ?></div>
          <div class="__new_each_motif"><?php echo $three_motif_2; ?></div>
          <div class="__new_each_motif"><?php echo $three_motif_3; ?></div>
        </div>
      </section>

      <div class="__new_block_ieftin">
        <span class="__new_title_ieftin"><?php echo $three_motif; ?></span>
        <span class="__new_motiv_ieftin">
          <?php echo $three_motif_1; ?>
        </span>
        <span class="__new_motiv_ieftin">
          <?php echo $three_motif_2; ?>
        </span>
        <span class="__new_motiv_ieftin">
          <?php echo $three_motif_3; ?>
        </span>
      </div>

  </div>
</div>

<style type="text/css">
  .__new_categories_home_block1 a.__new_category_home:nth-of-type(3),
  .__new_categories_home_block1 a.__new_category_home:nth-of-type(5) {
    margin-left: 0;
    margin-right: 15px;
  }
  .__new_categories_home_block1 a.__new_category_home:nth-of-type(4),
  .__new_categories_home_block1 a.__new_category_home:nth-of-type(6) {
    margin-left: 15px;
    margin-right: 0;
  }
  @media screen and (max-width: 1366px)
  {
    .__new_categories_home_block1 a.__new_category_home:nth-of-type(3),
    .__new_categories_home_block1 a.__new_category_home:nth-of-type(5) {
      margin-left: 0;
      margin-right: 5px;
    }
  }
  @media screen and (max-width: 900px)
  {
    #__new_open_all_categories_mobile {
      margin-left: 15px;
      margin-right: 0;
    }
  }
</style>

<?php echo $footer; ?>
