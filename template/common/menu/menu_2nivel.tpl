    <div id="menu_3Column" class="row meniu_table">
        <?php foreach ($menu_3 as $menu3_item) { ?>

          <?php
            $existChild_3 = false;
            foreach ($menu_4 as $key => $val) {
              if ($val['parent'] === $menu3_item['id']) {
                $existChild_3 = true;
              }
            }
          ?>
          <a option-id="<?php echo $menu3_item['id']; ?>" parent-id="<?php echo $menu3_item['parent']; ?>" <?php if(array_key_exists('url',$menu3_item)) { ?> href="<?php echo $menu3_item['url']; ?>" <?php } ?> class="<?php if($existChild_3) { echo "menu_has-children "; } ?>option-link menus-hidden">
            <div class="interactive-menu_3 element-Menu" <?php if($menu3_item['color']) { echo 'style="color: '.$menu3_item['color'].'"'; } ?>><?php echo $menu3_item['title']; if($existChild_3) { echo '<svg class="new-svg-icon"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg>'; } ?></div>
          </a>

          <?php } ?>
    </div>

    <div id="menu_4Column" class="row meniu_table">
        <?php foreach ($menu_4 as $menu4_item) { ?>

          <a option-id="<?php echo $menu4_item['id']; ?>" parent-id="<?php echo $menu4_item['parent']; ?>" href="<?php echo $menu4_item['url']; ?>" class="option-link menus-hidden">
            <div class="interactive-menu_4 element-Menu" <?php if($menu4_item['color']) { echo 'style="color: '.$menu4_item['color'].'"'; } ?>><?php echo $menu4_item['title']; ?></div>
          </a>

          <?php } ?>
    </div>
