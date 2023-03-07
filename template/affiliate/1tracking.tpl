<?php echo $header; ?>
<div class="container-top">
    <div class="gpc">
    	<!-- START CONTENT TOP -->
        <div class="content-top">
            <!-- START BREADCRUMB -->
            <h1 class="page_title"><?php echo $heading_title; ?></h1>
            <!-- END BREADCRUMB -->
        </div>
        <!-- END CONTENT TOP -->
    </div>
</div>
<div class="container-bottom">
    <div class="gpc">
    	<?php echo $column_left; ?>

        <!-- START COLUMN CENTER -->
        <div class="column-center">
            <?php echo $content_top; ?> 
            <!-- START ACCOUNT PAGE -->
        	<div class="account-page" style="min-height: 0;">
                <div class="admin-panel" style="">
                <style>
				.aff_menu {background: #ededed;width: 100%; height:40px; font-weight:bold;}
				.aff_menu_li {width: auto;border-right: 1px solid #fff;height: 32px;padding-top: 10px;padding-left: 10px;display: block;float: left;padding-right: 10px; cursor:pointer;}
				.admin-panel ul li a {color: #999;}
				.admin-panel ul .selected {background:#ffcc33;}
				.admin-panel ul .selected a {color:#000 !important; }				td {font-size: 16px;}
				.aff_menu a {color:#999;}
				.aff_menu .selected {color:#000;}
				.aff_menu a:hover {color:#000;}
				</style>

                    <ul class="aff_menu">
                    <a href="<?php echo $account; ?>"><li class="aff_menu_li"><?php echo $text_my_account; ?></li></a>
                    <a href="<?php echo $edit; ?>"><li class="aff_menu_li"><?php echo $text_edit; ?></li></a>
                    <a href="<?php echo $password; ?>"><li class="aff_menu_li"><?php echo $text_password; ?></li></a>
                    <a href="<?php echo $payment; ?>"><li class="aff_menu_li"><?php echo $text_payment; ?></li></a>

                    <li class="aff_menu_li selected"><?php echo $text_tracking; ?></li>
                    <a href="<?php echo $history; ?>"><li class="aff_menu_li"><?php echo $text_history; ?></li></a>
                    <a href="<?php echo $help_page; ?>"><li class="aff_menu_li"><?php echo $text_help; ?></li></a>
                    <!--li class="aff_menu_li"><a href="<?php echo $transaction; ?>">FAQ</a></li-->
                    <a href="<?php echo $logout; ?>"><li class="aff_menu_li" style="float: right;"><b style="color:#000;"><?php echo $text_logout; ?></b></li></a>
                    </ul>
                </div>
            </div>
            <!-- END ACCOUNT PAGE -->
            <!-- START ACCOUNT PAGE -->
        	<div class="account-page">
                <div class="form-content">
                    <div class="info-form-content">
                        <p><?php echo $text_description; ?></p>
                    </div>
          
        <form>
        <?php foreach ($banners_cat  as $banner_cat) { ?>
        <select>
        
                    
                        <?php echo $banner_cat['cat_name']; ?>

                        	<?php foreach ($banners_cat_option  as $banner_cat_option) { ?>
                            <?php if ($banner_cat['cat_id'] == $banner_cat_option['cat_id']) { ?>
                            <option value="">ALL</option>
                         <option value="<?php echo $banner_cat_option['option_id']; ?>"> <?php echo $banner_cat_option['name']; ?></option>
                            <?php } } ?>
                        
                    
        
        </select>
        <?php } ?>
        </form>  
          
          
          <br /><br /><br />
                    
                    
 <script type="text/javascript" language="javascript" src="catalog/view/smart_root/javascript/filtering/tablefilter_all_min.js"></script>    
<link rel="stylesheet" type="text/css" href="catalog/view/smart_root/javascript/filtering/filtergrid.css">              
<style>.hidden {display:none;}</style>
<table cellspacing="0" cellpadding="0" id="table3">
          <tbody>
          <tr>
          <?php foreach ($banners_cat  as $banner_cat) { ?>
                 <td><span><?php echo $banner_cat['cat_name']; ?></span></td>
          <?php } ?>
          </tr>
          <tr>
          <?php foreach ($banners_cat  as $banner_cat) { ?>
          		<?php foreach ($banners_cat_option  as $banner_cat_option) { ?>
                            <?php if ($banner_cat['cat_id'] == $banner_cat_option['cat_id']) { ?>
                            <td><a href="<?php echo $banner_cat_option['option_id']; ?>"><?php echo $banner_cat_option['name']; ?></a></td>
                            <?php } else { ?>
                			<td></td>
                <?php } } ?>
          </tr>
          <?php } ?>
          </tr>
          </tbody>
        </tbody></table>                
<br /><br /><br /><br />
  <script language="javascript" type="text/javascript">
				//<![CDATA[
					var table3Filters = {
						col_0: "select",
						col_1: "select",
						btn: true						
					}
					var tf03 = new TF("table3",2,table3Filters);
					tf03.AddGrid();
				//]]>
				</script>  
                    
                    <!-- FILTER -->
                    <div class="filter-item" id="filter-item">
                    <?php foreach ($banners_cat  as $banner_cat) { ?>
                    <div class="select"><span><?php echo $banner_cat['cat_name']; ?></span>
                    	<div>
                        	<hr style="height: 0px;background: #fff;border: 1px #fff;" />
                            
                        	<?php foreach ($banners_cat_option  as $banner_cat_option) { ?>
                            <?php if ($banner_cat['cat_id'] == $banner_cat_option['cat_id']) { ?>
                            <a href="<?php echo $banner_cat_option['option_id']; ?>"><?php echo $banner_cat_option['name']; ?></a>
                            <?php } } ?>
                        </div>
                    </div>
                    <?php } ?>
                    </div>
                    <!-- /FILTER -->
                    
                        <!-- START -->
                        <div class="gpu_box_form">
                            <div class="gpu_form">
                               <?php foreach ($banners  as $banner) { ?>
                        		<div>
                                <?php echo $banner['id']; ?>
                                <?php echo $banner['name']; ?>
                                <?php echo $banner['language_id']; ?>
                                <?php echo $banner['option_id']; ?>
                                
                                <img src="<?php echo $banner['src']; ?>" />
                                <textarea style="max-width: 440px;"><!-- SMART.MD Affiliate banner script --> <a href="<?php echo $banner['name']; ?>?tracking=<?php echo $code; ?>"><img src="<img src="<?php echo $banner['src']; ?>" />" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <?php } ?>
                            </div>
                        </div>
                        <!-- END -->
          
                    </div> 
                </div>
            
            <!-- END ACCOUNT PAGE -->
        </div>
        <!-- END COLUMN CENTER -->
    	<!-- START CONTENT BOTTOM -->
        <div class="content-bottom">
            <?php echo $content_bottom; ?>
        </div>
        <!-- END CONTENT BOTTOM -->
    </div>
</div>
<style>
.styled-sort:hover select { color:#ffcc33; }
.styled-sort:hover select option { color:#666; }
	
div.select {display: inline-block;padding: 8px;outline: none;position: relative;z-index: 9;line-height: 15px;float: none !important;height: 35px;border-right: 1px solid #fff;}
div.select span {display: block;background: url('image/new_arrow.png') no-repeat 98% 7px;padding-right: 35px;margin: 10px 0 0 !important;cursor: pointer;height: 35px;overflow: hidden;}
div.select-active span {background:#ffcc33;}
div.select:hover {background:#ffcc33;}
div.select div {display: none;overflow-y: auto;left: 0;line-height: 26px;padding: 0px 0;position: absolute;top: 45px; border:2px solid #ffcc33; background:#fff;width: 180px;}
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
<script type="text/javascript"><!--
$('input[name=\'product\']').autocomplete({
	delay: 0,
	source: function(request, response) {
		$.ajax({
			url: 'index.php?route=affiliate/tracking/autocomplete&filter_name=' +  encodeURIComponent(request.term),
			dataType: 'json',
			success: function(json) {		
				response($.map(json, function(item) {
					return {
						label: item.name,
						value: item.link
					}
				}));
			}
		});
	},
	select: function(event, ui) {
		$('input[name=\'product\']').attr('value', ui.item.label);
		$('textarea[name=\'link\']').attr('value', ui.item.value);
						
		return false;
	},
	focus: function(event, ui) {
      return false;
   }
});
//--></script>
<?php echo $footer; ?>