<script defer="defer" src="catalog/view/smartv3/js/nouislider.js?v=1.0.1"></script>
<script defer="defer" src="catalog/view/smartv3/js/wNumb.js?v=1.0.1"></script>
<?php 
  $openbydefault = ['brand','brend','производитель','бренд','брэнд','tip laptop','тип ноутбука', 'производители'];
?>
<?php  if ($category_options) {  ?>

<div class="tags_block_container tags_block_container_filter">
    <div class="row">
      <div class="col m2 fitre_afish_tag_ttl"><?php echo $added_filter_text; ?></div>
      <div class="col m12 s12 center_grid" for-label-filter>
        <!-- ######## Tag ######### -->

        <!--  //Sliders -->
        <?php foreach($values as $key => $val) { ?>
          <?php if($val['curent_min']) { ?>
            <style>.tags_block_container, section#category_section .col.m2.s6.sterge_col {display:block;}</style>
            <div class="chip tag_body">
              <a href="<?php echo $val['min_href']; ?>" filter-option="<?php echo $key; ?>_min" filter-value="<?php echo $val['curent_min']; ?>" ajax-filter label-filter><?php $thname = $val['name_ro'].'_de_la'; echo $$thname; ?> <?php echo number_format($val['curent_min'], 0, '', ' '); ?> <?= ($key == 'p') ? $lei : $cm; ?><i class="rm-filter"><svg class="new-svg-icon rm-filter-svg-icon"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-close2"></use></svg></i></a>
            </div>
          <?php } ?>
          <?php if($val['curent_max']) { ?>
            <style>.tags_block_container, section#category_section .col.m2.s6.sterge_col {display:block;}</style>
            <div class="chip tag_body">
              <a href="<?php echo $val['max_href']; ?>" filter-option="<?php echo $key; ?>_max" filter-value="<?php echo $val['curent_max']; ?>" ajax-filter label-filter><?php $thname = $val['name_ro'].'_pana_la'; echo $$thname; ?> <?php echo number_format($val['curent_max'], 0, '', ' '); ?> <?= ($key == 'p') ? $lei : $cm; ?><i class="rm-filter"><svg class="new-svg-icon rm-filter-svg-icon"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-close2"></use></svg></i></a>
            </div>
          <?php } ?>
        <?php } ?>
        <!-- Dimens slider -->
        <?php foreach ($category_options as $category_option) { ?>
          <?php if ($category_option['values']) { ?>
            <?php foreach ($category_option['values'] as $value) { ?>
              <?php if (in_array($value['value_id'], $filter_values_id)) { ?>
              <style>.tags_block_container, section#category_section .col.m2.s6.sterge_col {display:block;}</style>
                <div class="chip tag_body">
                  <a href="<?php echo $value['href']; ?>" filter-option="<?php echo $value['op_id']; ?>" filter-value="<?php echo $value['val_id']; ?>" ajax-filter label-filter><?php echo $value['name']; ?><i class="rm-filter"><svg class="new-svg-icon rm-filter-svg-icon"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-close2"></use></svg></i></a>
                </div>
              <?php } ?>
            <?php } ?>
          <?php } ?>
        <?php } ?>
        <!-- Dimens slider -->
        <!-- ######## End Tag ######### -->
      </div>
    </div>
</div>
<div class="row margin_row">
  <div class="filtre col m3">
    <div class="col m2 s6 sterge_col">
      <span><a href="<?php echo $reset_link; ?>" title="<?php echo $button_reset; ?>" reset-filter><?php echo $button_reset; ?><svg class="new-svg-icon __new_reset-filter-icon"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-close2"></use></svg></a></span>
    </div>
    <div class="row filtre_row">
    
    <div class="cautare_accesorii">
      <div style="background: #ededed;padding: 20px;margin-top:20px;">
        <input onkeydown = "if (event.keyCode == 13)
                        document.getElementById('btnSearch').click()" id="search_accesoriu" style="padding-left: 32px;width: 80%;" class="form-control" name="search" type="text" placeholder="<?php echo $introdu_telefon; ?>" value="<?php if ($_GET[skey]) { echo $_GET[skey]; } ?>">
        <button type="button" class="btn waves-effect waves-light search_accesoriu" id="btnSearch"><?php echo $cauta; ?></button>
      </div>
    </div>

  <?php if($exist_brand == false) { ?>
    <!-- Price filter -->
    <?php $val = $values['p'];
          $key = 'p';
    ?>
    <div class="col s12 hide_scroll" slider-filter id="<?php echo $val['name_ro'] ?>_container" filter-type="<?php echo $key; ?>">
      <ul class="collapsible <?php echo $val['name_ro'] ?>_filter" data-collapsible="accordion" style="border:none;box-shadow:none;margin:0;">
        <li>
          <div style="font-size: 16px;font-weight: 400;" class="collapsible-header">
            <span><?php echo $pret; ?></span>
            <i style="float: right;"><svg class="new-svg-icon" ><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg></i>
          </div>
          <div class="filters_container input_filter collapsible-body" id="<?php echo $val['name_ro'] ?>filter">
            <ul class="filter-scroll0">
              <div id="slider-<?php echo $val['name_ro'] ?>" class="<?php echo $val['name_ro'] ?>-filter-range" slider-element name="<?php echo $val['name_ro'] ?>Input"></div>
              <div class="<?php echo $val['name_ro'] ?>-flt">
                <input id="<?php echo $val['name'] ?>_min" slider-min filter-option="<?php echo $key; ?>_min" class="form-control <?php echo $val['name_ro'] ?>-range-field" value="<?php if ($val['curent_min']) { echo $val['curent_min']; } ?>" name="<?php echo $key; ?>_min" type="number" placeholder="<?php $phold = $val['name_ro'].'_de_placeholder'; echo $$phold; ?>" min="<?php if($val['min']) { echo $val['min']; } else { echo 0; } ?>" max="<?php if($val['max']) { echo $val['max']; } else { echo 999; } ?>">
                <input id="<?php echo $val['name'] ?>_max" slider-max filter-option="<?php echo $key; ?>_max" class="form-control <?php echo $val['name_ro'] ?>-range-field" value="<?php if ($val['curent_max']) { echo $val['curent_max']; } ?>" name="<?php echo $key; ?>_max" type="number" placeholder="<?php $phold = $val['name_ro'].'_pana_placeholder'; echo $$phold; ?>"  min="<?php if($val['min']) { echo $val['min']; } else { echo 0; } ?>" max="<?php if($val['max']) { echo $val['max']; } else { echo 999; } ?>">
              </div>
            </ul>
          </div>
        </li>
      </ul>
    </div>
    <!-- Price filter -->
  <?php } ?>

    <?php $sub_cat = array(411,407,373,446,453,413,441,541,535,462,417,552,384,375,517,378,421,432,374,409,406,1048,1054);?>
    <?php $hidescroll = 1; ?>
    <?php foreach ($sub_cat as $value) { 
      if ($value == $child_id)  { ?>
        <div class="col s12 hide_scroll mCustomScrollbar hide_scroll<?php echo $hidescroll++; ?>" data-mcs-axis="y" data-mcs-theme="minimal-dark">
          <ul class="collapsible" data-collapsible="accordion" style="border:none;box-shadow:none;margin:0;">
            <li class="active">
              <div style="font-size: 16px;font-weight: 400;" class="collapsible-header active">
                <span><?php echo $cat_name; ?></span><i style="float: right;"><svg class="new-svg-icon" ><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg></i>
              </div>
              <div class="filters_container collapsible-body">
                <ul style="margin: 10px 0;">
                  <?php foreach ($categories as $category) { ?>
                    <?php if ($category['category_id'] == $category_id) { ?>
                        <?php if ($category['children']) { ?>
                          <div class="cat_thrd" style="display:none;">
                              <ul class="tab">
                                  <!-- start 3rd -->
                                    <?php foreach ($category['children'] as $child) { ?>
                                        <?php if ($child['children']) { ?>

                                            <?php if ($child['category_id'] == $child_id) { ?>

                                                <?php foreach ($child['children'] as $ch3) { ?>

                                                    <?php if ($ch3['category_id'] == $ch3_id) { ?>

                                                        <li class="parent" style="cursor: pointer;min-height: 1rem;line-height: 2rem;padding: 0 1rem;">
                                                          <i class="filter_ic_done_black" style="margin-left: 0; margin-right: 12px;"><svg class="new-svg-icon" width="15" height="15"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-ic_done_black_24px"></use></svg></i>
                                                            <a class="active_sublevel3 filter_name clicker valign-wrapper subcategory"><?php echo $ch3['name']; ?></a>
                                                        </li>

                                                    <?php } else { ?>

                                                        <li class="parent check_if" style="cursor: pointer;min-height: 1rem;line-height: 2rem;padding: 0 1rem;">
                                                            <a class="neactiv_sublevel3 clicker valign-wrapper check_filt subcategory" href="<?php echo $ch3['href']; ?>"><?php echo $ch3['name']; ?></a>
                                                        </li>

                                                    <?php } ?>

                                                <?php } ?>

                                            <?php } ?>

                                        <?php } else { ?>

                                          <?php if ($child['category_id'] == $child_id) { ?>

                                              <li class="parent" style="cursor: pointer;min-height: 1rem;line-height: 2rem;padding: 0 1rem;">
                                                <i class="filter_ic_done_black" style="margin-left: 0; margin-right: 12px;"><svg class="new-svg-icon" width="15" height="15"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-ic_done_black_24px"></use></svg></i>
                                                  <a class="active_sublevel3 filter_name clicker valign-wrapper subcategory"><?php echo $child['name']; ?></a>
                                              </li>

                                          <?php } else { ?>

                                              <li class="parent check_if" style="cursor: pointer;min-height: 1rem;line-height: 2rem;padding: 0 1rem;">
                                                  <a class="neactiv_sublevel3 clicker valign-wrapper check_filt subcategory" href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
                                              </li>

                                          <?php } ?>

                                        <?php } ?>

                                    <?php } ?>
                              </ul>
                          </div>

                        <?php } ?>
                    <?php }
                  } ?>
                  <style type="text/css">.cat_thrd{display:block !important;}.heading_title_cat{display:block;}</style>
                </ul>
              </div>
            </li>
          </ul>
        </div>
      <?php  } ?>
    <?php } ?>
    <?php foreach ($category_options as $category_option) { ?>
    <?php if (!empty($category_option['values'])) { ?> 
    <?php $val = array();
          $key = '';
    foreach($values as $key2 => $val2) {
        if(in_array($category_option['option_id'],$val2['options']) && in_array($category_id,$val2['categories'])) {
          $val = $val2;
          $key = $key2;
        }
    }
    if($val) { ?>
    <!-- Dimens slider -->
      <div class="col s12 hide_scroll" slider-filter id="<?php echo $val['name_ro'] ?>_container" filter-type="<?php echo $key; ?>">
        <ul class="collapsible <?php echo $val['name_ro'] ?>_filter" data-collapsible="accordion" style="border:none;box-shadow:none;margin:0;">
          <li>
            <div style="font-size: 16px;font-weight: 400;" class="collapsible-header">
              <span><?php echo $category_option['name']; ?></span>
              <i style="float: right;"><svg class="new-svg-icon" ><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg></i>
            </div>
            <div class="filters_container input_filter collapsible-body" id="<?php echo $val['name_ro'] ?>filter">
              <ul class="filter-scroll0">
                <div id="slider-<?php echo $val['name_ro'] ?>" class="<?php echo $val['name_ro'] ?>-filter-range" slider-element name="<?php echo $val['name_ro'] ?>Input"></div>
                <div class="<?php echo $val['name_ro'] ?>-flt">
                  <input id="<?php echo $val['name'] ?>_min" slider-min filter-option="<?php echo $key; ?>_min" class="form-control <?php echo $val['name_ro'] ?>-range-field" value="<?php if ($val['curent_min']) { echo $val['curent_min']; } ?>" name="<?php echo $key; ?>_min" type="number" placeholder="<?php $phold = $val['name_ro'].'_de_placeholder'; echo $$phold; ?>" min="<?php if($val['min']) { echo $val['min']; } else { echo 0; } ?>" max="<?php if($val['max']) { echo $val['max']; } else { echo 999; } ?>">
                  <input id="<?php echo $val['name'] ?>_max" slider-max filter-option="<?php echo $key; ?>_max" class="form-control <?php echo $val['name_ro'] ?>-range-field" value="<?php if ($val['curent_max']) { echo $val['curent_max']; } ?>" name="<?php echo $key; ?>_max" type="number" placeholder="<?php $phold = $val['name_ro'].'_pana_placeholder'; echo $$phold; ?>"  min="<?php if($val['min']) { echo $val['min']; } else { echo 0; } ?>" max="<?php if($val['max']) { echo $val['max']; } else { echo 999; } ?>">
                </div>
              </ul>
            </div>
          </li>
        </ul>
      </div>

      <?php } else { ?>
        <div data-mcs-axis="y" data-mcs-theme="minimal-dark" class="col s12 hide_scroll mCustomScrollbar hide_scroll<?php echo $hidescroll++; ?>" <?php if ($category_option['actives'] == 0) { echo 'style="display: none;"'; } ?>>
          <ul class="collapsible" data-collapsible="accordion" style="border:none;box-shadow:none;margin:0;">
            <li <?php if (in_array(mb_strtolower($category_option['name']), $openbydefault)){ ?> class="active brand_collapsible" <?php } ?>>
              <div  style="font-size: 16px;font-weight: 400;" class="collapsible-header <?php if (in_array(mb_strtolower($category_option['name']), $openbydefault)){ ?> brand_header active<?php } ?>"><span><?php echo $category_option['name']; ?></span><i style="float: right;"><svg class="new-svg-icon" ><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg></i></div>
              <div class="filters_container collapsible-body">

                <ul style="margin: 10px 0;" class="filter-scroll">
                  <?php foreach ($category_option['values'] as $value) { ?>
                    <?php if (in_array($value['value_id'], $filter_values_id)) { ?>
                      <li class="parent" <?php if($value['products']) { echo 'f-active="true"'; } else { echo 'f-active="false"'; } ?> style="cursor: pointer;min-height: 1rem;line-height: 2rem;padding: 0 1rem;" class="check_if"><i class="filter_ic_done_black" style="margin-left: 0; margin-right: 12px;"><svg class="new-svg-icon" width="15" height="15"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-ic_done_black_24px"></use></svg></i>
                      <a class="filter_name clicker valign-wrapper" style="color:#000;" href="<?php echo $value['href']; ?>" filter-option="<?php echo $value['op_id']; ?>" filter-value="<?php echo $value['val_id']; ?>" filter-list ajax-filter><?php echo $value['name']; ?><span class="number_products" style="display: none;"> (<?php echo abs($value['products']); ?>) </span></a></li>
                    <?php } else {?>
                    
                      <li class="parent" <?php if($value['products']) { echo 'f-active="true"'; } else { echo 'f-active="false"'; } ?> style="cursor: pointer;min-height: 1rem;line-height: 2rem;padding: 0 1rem;"><a class="check_filt clicker valign-wrapper filter_with_number" style="color: #000;" href="<?php echo $value['href']; ?>" filter-option="<?php echo $value['op_id']; ?>" filter-value="<?php echo $value['val_id']; ?>" filter-list ajax-filter><?php echo $value['name']; ?><span class="number_products"> (<?php echo $value['products']; ?>)</span></a></li>
                      
                    <?php } ?>
                  <?php } ?>
                </ul>

                </div>
              </li>
            </ul>
          </div>
          <?php if (mb_strtolower($category_option['name']) == 'brand' || mb_strtolower($category_option['name']) == 'производитель' || mb_strtolower($category_option['name']) == 'бренд' || mb_strtolower($category_option['name']) == 'брэнд') { ?>
             <!-- Price filter -->
            <?php $val = $values['p'];
                  $key = 'p';
            ?>
            <div class="col s12 hide_scroll" slider-filter id="<?php echo $val['name_ro'] ?>_container" filter-type="<?php echo $key; ?>">
              <ul class="collapsible <?php echo $val['name_ro'] ?>_filter" data-collapsible="accordion" style="border:none;box-shadow:none;margin:0;">
                <li>
                  <div style="font-size: 16px;font-weight: 400;" class="collapsible-header">
                    <span><?php echo $pret; ?></span>
                    <i style="float: right;"><svg class="new-svg-icon" ><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg></i>
                  </div>
                  <div class="filters_container input_filter collapsible-body" id="<?php echo $val['name_ro'] ?>filter">
                    <ul class="filter-scroll0">
                      <div id="slider-<?php echo $val['name_ro'] ?>" class="<?php echo $val['name_ro'] ?>-filter-range" slider-element name="<?php echo $val['name_ro'] ?>Input"></div>
                      <div class="<?php echo $val['name_ro'] ?>-flt">
                        <input id="<?php echo $val['name'] ?>_min" slider-min filter-option="<?php echo $key; ?>_min" class="form-control <?php echo $val['name_ro'] ?>-range-field" value="<?php if ($val['curent_min']) { echo $val['curent_min']; } ?>" name="<?php echo $key; ?>_min" type="number" placeholder="<?php $phold = $val['name_ro'].'_de_placeholder'; echo $$phold; ?>" min="<?php if($val['min']) { echo $val['min']; } else { echo 0; } ?>" max="<?php if($val['max']) { echo $val['max']; } else { echo 999; } ?>">
                        <input id="<?php echo $val['name'] ?>_max" slider-max filter-option="<?php echo $key; ?>_max" class="form-control <?php echo $val['name_ro'] ?>-range-field" value="<?php if ($val['curent_max']) { echo $val['curent_max']; } ?>" name="<?php echo $key; ?>_max" type="number" placeholder="<?php $phold = $val['name_ro'].'_pana_placeholder'; echo $$phold; ?>"  min="<?php if($val['min']) { echo $val['min']; } else { echo 0; } ?>" max="<?php if($val['max']) { echo $val['max']; } else { echo 999; } ?>">
                      </div>
                    </ul>
                  </div>
                </li>
              </ul>
            </div>
            <!-- Price filter -->
          <?php } ?>
        <?php } ?>
      <?php } ?>
    <?php } ?>
    </div>
  </div>

<?php } else { ?>
  <div class="row margin_row">
    <div class="filtre col m3">
      <?php $category_cat = array(749,406,51,372,415,968,420,410,771,1054);?>
      <?php $sub_cat = array(611,462,446,453,411,413,441,535,541,771);?>
      <?php $child_ids = array(611,462,446,453,411,413,441,535,541,771);?>
      <?php $hidescroll = 1; ?>

      <?php foreach ($category_cat as $value) {
        if (!in_array($child_id, $child_ids)) {
          if ($value == $category_id) { ?>
            <div class="col s12 hide_scroll mCustomScrollbar hide_scroll<?php echo $hidescroll++; ?>" data-mcs-axis="y" data-mcs-theme="minimal-dark">
              <ul class="collapsible" data-collapsible="accordion" style="border:none;box-shadow:none;margin:0;">
                <li class="active">
                  <div style="font-size: 16px;font-weight: 400;" class="collapsible-header active">
                    <span><?php echo $cat_name; ?></span><i style="float: right;"><svg class="new-svg-icon" ><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg></i>
                  </div>
                  <div class="filters_container collapsible-body">
                    <ul style="margin: 10px 0;">
                      <?php foreach ($categories as $category) { ?>
                        <?php if ($category['category_id'] == $category_id) { ?>
                          <?php if ($category['children']) { ?>
                                <div class="cat_thrd" style="display:none;">
                                    <ul class="tab">
                                        <!-- start 3rd -->
                                          <?php foreach ($category['children'] as $child) { ?>

                                              <li class="parent check_if" style="cursor: pointer;min-height: 1rem;line-height: 2rem;padding: 0 1rem;">
                                                  <a class="neactiv_sublevel3 clicker valign-wrapper check_filt subcategory" href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
                                              </li>

                                          <?php } ?>
                                    </ul>
                                </div>
                              <?php } else { ?>
                                <div class="cat_thrd" style="display:none;">
                                    <ul class="tab">

                                          <li class="parent check_if" style="cursor: pointer;min-height: 1rem;line-height: 2rem;padding: 0 1rem;">
                                              <a class="neactiv_sublevel3 clicker valign-wrapper check_filt subcategory" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                          </li>

                                    </ul>
                                </div>
                              <?php } ?>
                            <?php } ?>
                        <?php } ?>
                      <style type="text/css">.cat_thrd{display:block !important;}.heading_title_cat{display:block;}</style>
                    </ul>
                  </div>
                </li>
              </ul>
            </div>
          <?php } ?>
        <?php } ?>
      <?php } ?>
      <?php foreach ($sub_cat as $value) { 
          if ($value == $child_id)  { ?>
            <div class="col s12 hide_scroll mCustomScrollbar hide_scroll<?php echo $hidescroll++; ?>" data-mcs-axis="y" data-mcs-theme="minimal-dark">
              <ul class="collapsible" data-collapsible="accordion" style="border:none;box-shadow:none;margin:0;">
                <li class="active">
                  <div style="font-size: 16px;font-weight: 400;" class="collapsible-header active">
                    <span><?php echo $cat_name; ?></span><i style="float: right;"><svg class="new-svg-icon" ><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-arrow-point-to-right"></use></svg></i>
                  </div>
                  <div class="filters_container collapsible-body">
                    <ul style="margin: 10px 0;">
                      <?php foreach ($categories as $category) { ?>
                        <?php if ($category['category_id'] == $category_id) { ?>
                            <?php if ($category['children']) { ?>
                              <div class="cat_thrd" style="display:none;">
                                  <ul class="tab">
                                      <!-- start 3rd -->
                                        <?php foreach ($category['children'] as $child) { ?>
                                            <?php if ($child['children']) { ?>

                                                <?php if ($child['category_id'] == $child_id) { ?>

                                                    <?php foreach ($child['children'] as $ch3) { ?>

                                                        <?php if ($ch3['category_id'] == $ch3_id) { ?>

                                                            <li class="parent" style="cursor: pointer;min-height: 1rem;line-height: 2rem;padding: 0 1rem;">
                                                              <i class="filter_ic_done_black" style="margin-left: 0; margin-right: 12px;"><svg class="new-svg-icon" width="15" height="15"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-ic_done_black_24px"></use></svg></i>
                                                                <a class="active_sublevel3 filter_name clicker valign-wrapper subcategory"><?php echo $ch3['name']; ?></a>
                                                            </li>

                                                        <?php } else { ?>

                                                            <li class="parent check_if" style="cursor: pointer;min-height: 1rem;line-height: 2rem;padding: 0 1rem;">
                                                                <a class="neactiv_sublevel3 clicker valign-wrapper check_filt subcategory" href="<?php echo $ch3['href']; ?>"><?php echo $ch3['name']; ?></a>
                                                            </li>

                                                        <?php } ?>

                                                    <?php } ?>

                                                <?php } ?>

                                            <?php } ?>

                                        <?php } ?>
                                  </ul>
                              </div>

                            <?php } else { ?>
                              <?php if ($child['category_id'] == $child_id) { ?>

                                  <li class="parent" style="cursor: pointer;min-height: 1rem;line-height: 2rem;padding: 0 1rem;">
                                    <i class="filter_ic_done_black" style="margin-left: 0; margin-right: 12px;"><svg class="new-svg-icon" width="15" height="15"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-ic_done_black_24px"></use></svg></i>
                                      <a class="active_sublevel3 filter_name clicker valign-wrapper subcategory"><?php echo $child['name']; ?></a>
                                  </li>

                              <?php } else { ?>

                                  <li class="parent check_if" style="cursor: pointer;min-height: 1rem;line-height: 2rem;padding: 0 1rem;">
                                      <a class="neactiv_sublevel3 clicker valign-wrapper check_filt subcategory" href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
                                  </li>

                              <?php } ?>
                            <?php } ?>

                        <?php }
                      } ?>
                      <style type="text/css">.cat_thrd{display:block !important;}.heading_title_cat{display:block;}</style>
                    </ul>
                  </div>
                </li>
              </ul>
            </div>
          <?php  } ?>
        <?php } ?>
    </div>
<?php } ?>
