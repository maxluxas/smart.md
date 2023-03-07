<!-- <?php if (!$status_input) { ?>
  <div id="search" class="visible-desktop">
  <div class="button-search"></div>
         <input name="filter_name" placeholder="<?php echo $text_search; ?> " onChange="this.style.color='#ffb300'" onfocus="this.style.color='#ffb300'" id="<?php echo $input_id; ?>" value="<?php echo $filter_name; ?>"  type="text" style="display:block;" />                
</div>
<?php } ?>
<script type="text/javascript">
var key = 0;
$(document).ready(function () {
	var input_id = '#<?php echo $input_id; ?>';
	var radio = '';
	<?php if ($setting['status_name']) { ?>
	radio += '<input type="radio" name="key_' + key + '" value="name" checked="checked" /> <?php echo $setting["label_name"]; ?><br />';
	<?php } if ($setting['status_model']) { ?>
	radio += '<input type="radio" name="key_' + key + '" value="model" /> <?php echo $setting["label_model"]; ?><br />';
	<?php } if ($setting['status_sku']) { ?>
	radio += '<input type="radio" name="key_' + key + '" value="sku" /> <?php echo $setting["label_sku"]; ?><br />';
	<?php } ?>
	SearchAjax(input_id, radio);
	key++;
});
</script> -->