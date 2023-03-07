<span class="__new_title_categories_menu"><?php echo $name; ?></span>
<div class="__new_main_categories_menu_1">

  <?php foreach ($menu as $key => $item) { ?>
    
    <?php if(!isset($item['submenu'])) { ?>
      <a class="__new_container_cat_2" <?php if($item['color']) { echo 'style="color: '.$item['color'].'"'; } ?> href="<?php echo $item['url']; ?>"><span><?php echo $item['title']; ?></span></a>
    <?php } else { ?>
      <div class="__new_cat_containers __new_container_cat_2" <?php if($item['color']) { echo 'style="color: '.$item['color'].'"'; } ?>>
        <span><?php echo $item['title']; ?></span>
        <svg class="new-svg-icon"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg>
        <div class="__new_main_categories_menu_2">
          
          <?php foreach ($item['submenu'] as $key1 => $item1) { ?>
            
            <?php if(!isset($item1['submenu'])) { ?>
              <a class="__new_container_cat_3" <?php if($item1['color']) { echo 'style="color: '.$item1['color'].'"'; } ?> href="<?php echo $item1['url']; ?>"><span><?php echo $item1['title']; ?></span></a>
            <?php } else { ?>
              <div class="__new_cat_containers __new_container_cat_3" <?php if($item1['color']) { echo 'style="color: '.$item1['color'].'"'; } ?>>
                <span><?php echo $item1['title']; ?></span>
                <svg class="new-svg-icon"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg>
                <div class="__new_main_categories_menu_3">

                  <?php foreach ($item1['submenu'] as $key2 => $item2) { ?> 

                    <?php if(!isset($item2['submenu'])) { ?>
                      <a class="__new_container_cat_4" <?php if($item2['color']) { echo 'style="color: '.$item2['color'].'"'; } ?> href="<?php echo $item2['url']; ?>"><span><?php echo $item2['title']; ?></span></a>
                    <?php } else { ?>
                      <div class="__new_cat_containers __new_container_cat_4" <?php if($item2['color']) { echo 'style="color: '.$item2['color'].'"'; } ?>>
                        <span><?php echo $item2['title']; ?></span>
                        <svg class="new-svg-icon"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg>
                        <div class="__new_main_categories_menu_4">

                          <?php foreach ($item2['submenu'] as $key3 => $item3) { ?>
                            <a <?php if($item3['color']) { echo 'style="color: '.$item3['color'].'"'; } ?> href="<?php echo $item3['url']; ?>"><span><?php echo $item3['title']; ?></span></a>
                          <?php } ?>

                        </div>
                      </div>
                    <?php } ?>
                  <?php } ?>
                </div>
              </div>
            <?php } ?>
          <?php } ?>
        </div>
      </div>
    <?php } ?>
  <?php } ?>
