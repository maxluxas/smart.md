<aside id="floating_meniu" class="floating floating_meniu">
    <div class="fl_meniu_content mCustomScrollbar" data-mcs-axis="y" data-mcs-theme="minimal">
    <div class="menu_arrow"></div>

    <span class="menu-title_extended">
      <div id="previousMenu">
        <svg class="new-svg-icon"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg>
      </div>
      <span class="manu_title_changeable"><?=$menu_title?></span>
      <svg class="new-svg-icon end_icon mobverile-close" onclick="close__new_mobile_menu()"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-close2"></use></svg>
      <span style="display: none;" class="mobile_lang"><?=$language?></span>
    </span>

    <div id="menu_1Column" class="row meniu_table" menu-title="<?=$menu_title?>">

      <?//=HTTP_SERVER?>

        <?php foreach ($menu_1 as $menu1_item) { ?>

          <?php
            $existChild_1 = false;
            foreach ($menu_2 as $key => $val) {
              if ($val['parent'] === $menu1_item['id']) {
                $existChild_1 = true;
              }
            }
          ?>
          <a option-id="<?php echo $menu1_item['id']; ?>" <?php if(array_key_exists('url',$menu1_item)) { ?> href="<?php echo $menu1_item['url']; ?>" <?php } ?> class="<?php if($existChild_1) { echo "menu_has-children "; } ?>option-link">
            <div class="interactive-menu_1 element-Menu" <?php if($menu1_item['color']) { echo 'style="color: '.$menu1_item['color'].'"'; } ?>><?php echo $menu1_item['title']; if($existChild_1) { echo '<svg class="new-svg-icon"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg>'; } ?></div>
          </a>

        <?php } ?>
    </div>
  </div>
</aside>