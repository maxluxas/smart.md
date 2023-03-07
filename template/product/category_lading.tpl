<link rel="stylesheet" href="catalog/view/smartv3/css/category-landing.css?v=0.0.54"/>
<script defer="defer" type="text/javascript" src="catalog/view/smartv3/js/home.js?v=0.0.19"></script>

<h1 class="hidd_s_elements"><?php echo $h1_txt_first; ?></h1>
<div class="__new_content_home __categories_landing">
    <div class="__new_content_center_align">
        <div class="__new_search_home">
            <input type="text" name="new_input_search_home" class="__new_input_search_home" autocomplete="off" id="__new_input_search_home" placeholder="<?php echo $search_placeholder; ?>" onfocus="this.placeholder = ''" onblur="this.placeholder = '<?php echo $search_placeholder; ?>'"/>
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
                        <span class="__new_search_sugestii_part_option">XIAOMI MI A3</span>
                        <span class="__new_search_sugestii_part_option">Samsung Galaxy A50 6/128GB</span>
                        <span class="__new_search_sugestii_part_option">Xiaomi REDMI NOTE 8 PRO</span>
                        <span class="__new_search_sugestii_part_option">Apple iPhone 7</span>
                        <span class="__new_search_sugestii_part_option">Xiaomi Redmi 7A</span>
                        <span class="__new_search_sugestii_part_option">Samsung Galaxy Note 10 Plus</span>
                        <span class="__new_search_sugestii_part_option">Apple iPhone Xs</span>
                        <span class="__new_search_sugestii_part_option">Xiaomi Mi 9T Pro</span>
                        <span class="__new_search_sugestii_part_option">SAMSUNG Galaxy S10</span>
                        <span class="__new_search_sugestii_part_option">Samsung Galaxy A10s</span>
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
                <div class="__new_search_results_products"></div>
                <div class="__new_search_results_categories">
                    <span class="__new_search_categories_title"><?php echo $result_cauta; ?>
                        <b class="__new_search_kw">
                            <span></span>
                        </b>
                        <?php echo $result_in_categor; ?></span>
                </div>

                 <div class="__new_search_not_found" style="margin-top: 20px;"><?php echo $nu_a_gasit; ?>
                  <!-- <form method="POST" onsubmit="return false;">
                    <input type="hidden" name="tip_comanda" value="Nu a gasit (Search)">
                    <input type="text" name="roistat_visit" value="<?php echo $_COOKIE['roistat_visit']; ?>" style="display: none;">
                    <input type="text" name="new_responsible_by_route" value="1" style="display: none;">
                    <input type="text" name="cerere_apel_cta" style="display: none" value="Cerere apel Nu a gasit Search">
                    <input type="hidden" name="categ-produs" value="<?= $categ_produs; ?>">
                    <div class="__new_search_action_container">
                      <input type="text" class="__new_phone_from_search" introdu-telefon name="Telefon">
                      <button type="submit" class="__new_send_cta_from_search" text-succes="<?= $thank_you_message; ?>"><?= $button_send_phone; ?></button>
                    </div>
                  </form> -->
                </div>
            
                <div class="__new_search_loader"></div>
            </div>
        </div>

        <h3 class="hidd_s_elements"><?php echo $h3_txt_1; ?></h3>

        <div class="__new_categories_home">
            
            <div class="demumire">
                <?php echo $content_bottom; ?>
                <!-- BREADCRUMB -->
                <div class="breadcrumb">
                    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                        <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a><?php echo $breadcrumb['separator']; ?>
                    <?php } ?>
                </div>
                <!-- BREADCRUMB -->
                <div id="title_cat"></div>

                <h1 id="lading_title" class="heading_title_style heading_title_cat">
                    <?php echo $heading_title; ?>
                </h1>
            </div>
            <div class="__new_categories_home_block1 __new_categories_home_block1_laptop" <?php if(!isset($has_products)) { ?> style="margin-bottom: 100px;" <?php } ?>>
               <?php foreach ($childs as $index => $child) { ?> 
                    <a href="<?= $child['href']; ?>" class="__new_category_home_category">
                        <?php if($child['image']) { ?>
                            <div class="__new_categories_image_container">
                                <img class="__new_category_home_category_image" src="<?= $child['image']; ?>" alt="<?= $child['name']; ?>" />
                            </div>
                        <?php } ?>
                        <h2 class="__new_category_home_category_name"><?= $child['name']; ?></h2>
                    </a>
                <?php } ?>
            </div>

            <div id="lading_description" class="__new_description_category">
                <?php if($description ) { ?>
                <span class="__new_heading_descriere_category"><?php echo $descriere_categorie; ?></span>
                <?php } ?>
                <div class="__new_description_category_content">
                    <?php echo $description; ?>
                </div>
            </div>

        </div>

    </div>
</div>