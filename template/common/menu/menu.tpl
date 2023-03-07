    <div id="menu_2Column" class="row meniu_table">
        <?php foreach ($menu_2 as $menu2_item) { ?>

          <?php
            $existChild_2 = false;
            foreach ($menu_3 as $key => $val) {
              if ($val['parent'] === $menu2_item['id']) {
                $existChild_2 = true;
              }
            }
          ?>
          <a option-id="<?php echo $menu2_item['id']; ?>" parent-id="<?php echo $menu2_item['parent']; ?>" <?php if(array_key_exists('url',$menu2_item)) { ?> href="<?php echo $menu2_item['url']; ?>" <?php } ?> class="<?php if($existChild_2) { echo "menu_has-children "; } ?>option-link menus-hidden">
            <div class="interactive-menu_2 element-Menu" <?php if($menu2_item['color']) { echo 'style="color: '.$menu2_item['color'].'"'; } ?>><?php echo $menu2_item['title']; if($existChild_2) { echo '<svg class="new-svg-icon"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg>'; } ?></div>
          </a>

          <?php } ?>
    </div>

