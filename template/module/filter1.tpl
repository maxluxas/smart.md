<?php
if ($category_options) { ?>
<style>
.styled-sort:hover select { color:#ffcc33; }
.styled-sort:hover select option { color:#666; }
	
div.select {display: inline-block;padding: 8px;outline: none;position: relative;z-index: 9;line-height: 15px;float: none !important;height: 51px;border-right: 1px solid #fff;}
div.select span {display: block;background: url('image/new_arrow.png') no-repeat 98% 7px;padding-right: 35px;margin: 10px 0 0 !important;cursor: pointer;height: 35px;overflow: hidden;}
div.select-active span {background:#ffcc33;}
div.select:hover {background:#ffcc33;}
div.select div {max-height: 480px;display: none;overflow-y: auto;left: 0;line-height: 26px;padding: 0px 0;position: absolute;top: 45px; border:2px solid #ffcc33; background:#fff;width: 180px;}
div.select div b {display: block;color: #000;font-size: 12px;font-weight: normal;text-decoration: none;padding-left: 6px;}
div.select div a, div.select div b {display: block;color: #000;font-size: 14px;font-weight: normal;text-decoration: none;padding-left: 15px;line-height: 26px;width: 80%;margin-left: 10px;}
div.select div a:hover, div.select div b:hover  {background:#ffcc33;}
div.select-active {z-index: 10; background:#ffcc33; color:#000;}
.filter-item .selected {border: 1px solid #FF8900;}
.filter-item .select {}
.filter-item {background:#ededed; height:51px;}
div.select-active div {display: block;}
.button_reset {font-size: 12px;display: inline-block;text-decoration: none;border: none;margin: 0;padding: 7px 10px; color:#000;}
.filters_top {}
.filters_bottom {}
</style>
<script>
          $(document).ready(function() {
            $( ".close-filter" ).click(function() {
                $( ".filter-item" ).removeClass( "activated" );
                 $( ".close-filter" ).removeClass( "activated" );
                 $( ".filter-item-bg" ).removeClass( "activatedbg" );
                });
          });
// Custom select styler
    $('.select').each(function() {
      var select = $(this), selected = $('.selected', select), span = $('span', select);
      if (selected.length) span.text(selected.text());
    });

    $('.select span').live('click', function() {
      var select = $(this).parent('.select'), active = select.hasClass('select-active');
      $('.select').removeClass('select-active');

      if (active) {
        select.removeClass('select-active');
      } else {
        select.addClass('select-active');
      }
    });

    $('.select a').live('click', function() {
      var select = $(this).parents('.select'), input = $('input', select), value = $(this).attr('rel');
    	if (input.length) input.val(value);
      $('span', select).text($(this).text()).trigger('click');
    });

    $(document).click(function(e){
      if ($(e.target).parents().filter('.select').length != 1) {
        $('.select').removeClass('select-active');
      }
    });
</script>
<div id="product-tab3" class=""></div>

<div class="box">
  <div class="box-heading"></div>
  <div class="box-content">
  
  <div class="filter-item" id="filter-item">
  <div class="close-filter" style="display:none;"><img style="vertical-align: middle;" src="image/reset_filter.png" /></div>
  <?php foreach ($category_options as $category_option) { ?>
  
    <div class="select" style="background:<?php if ($category_option['values']) { ?>
          <?php foreach ($category_option['values'] as $value) { ?>
            <?php if (in_array($value['value_id'], $filter_values_id)) { ?>#ffcc33;<?php } else { ?><?php } ?><?php } ?><?php } ?>">
		<span><?php echo $category_option['name']; ?></span>

        <div>
        <hr style="height: 0px;background: #fff;border: 1px #fff;" />
        <?php if ($category_option['values']) { ?>
          <?php foreach ($category_option['values'] as $value) { ?>
            <?php if (in_array($value['value_id'], $filter_values_id)) { ?>
              <a style="background:#ffcc33; margin-top:3px;" href="<?php echo $value['href']; ?>" onclick="window.location='<?php echo $value['href']; ?>';ga('send', 'event', {
    eventCategory: 'Filtre',
      eventAction: 'Reset'
});"><?php echo $value['name']; ?> <img style="float: right;margin-right: 5px;margin-top: 5px;" src="image/reset_filter.png" /></a>
            <?php } else { ?>
              <?php if ($value['products']) { ?>
                <a href="<?php echo $value['href']; ?>" onclick="window.location='<?php echo $value['href']; ?>';ga('send', 'event', {
    eventCategory: 'Filtre',
      eventAction: '<?php echo $value['name']; ?>'
});" ><?php echo $value['name']; ?> (<?php echo $value['products']; ?>)</a>
              <?php } else { ?>
               <!-- <b class=""><?php echo $value['name']; ?> (<?php echo $value['products']; ?>)</b>-->
              <?php } ?>
            <?php } ?>
          <?php } ?>
        <?php } ?>
        <hr style="height: 0px;background: #fff;border: 1px #fff;" />
        </div>
    </div>
    
  <?php } ?>
  <div class="reset-filter" style="background: #ededed;display: inline-block;margin: 3px 0 3px -3px;padding: 6px 0;outline: none;position: relative;z-index: 9;float: right !important;">
  <img class="close-filter-icon" style="vertical-align: middle;" src="image/reset_filter.png" />
  <a class="button_reset" onclick="ga('send', 'event', {
    eventCategory: 'Filtre',
      eventAction: 'Reset'
});" href="index.php?route=product/category&path=<?php echo $this->request->get['path']; ?>"><?php echo $button_reset; ?></a></div>

  </div>
  </div>
  <div class="bottom">&nbsp;</div>
</div>
<?php } ?>