<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
    <div class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <h1><?php echo $heading_title; ?></h1>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="content">   
                  <table class="form">
        <tr>
          <td><?php echo $entry_date_start; ?><br>
            <input type="text" name="filter_date_start" value="<?php echo $filter_date_start; ?>" id="date-start" size="12" /></td>
          <td><?php echo $entry_date_end; ?>
              <br>
            <input type="text" name="filter_date_end" value="<?php echo $filter_date_end; ?>" id="date-end" size="12" /></td>
          
          <td style="text-align: left;"><a onclick="clearvalue();" class="button"><span><?php echo $button_clear; ?></span></a></td>
          <td style="text-align: right;"><a onclick="filter();" class="button"><span><?php echo $button_filter; ?></span></a></td>
          
        </tr>
      </table>
      <table class="list">
                <thead>
                    <tr align="center">
                        <td><?php echo $column_count_transitions; ?></td>
                        <td><?php echo $column_count_orders; ?></td>
                        <td><?php echo $column_count_shopping; ?></td>
                        <td><?php echo $column_sum_orders; ?></td>
                        <td><?php echo $column_sum_shopping; ?></td>
                        <td><?php echo $column_sum_credited; ?></td>
                        <td><?php echo $column_sum_paid; ?></td>
                    </tr>

                </thead>
                <tbody>
                    <?php if ($affiliates) { ?>
                    <tr align="center">
                        <td><?php echo $affiliates['count_transitions']; ?></td>
                        <td><?php echo $affiliates['count_orders']; ?></td>
                        <td><?php echo $affiliates['count_shopping']; ?></td>
                        <td><?php echo $affiliates['sum_orders']; ?></td>
                        <td><?php echo $affiliates['sum_shopping']; ?></td>
                        <td><?php echo $affiliates['commission']; ?></td>
                        <td><?php echo $affiliates['paid']; ?></td>
                    </tr>
                    <?php } else { ?>
                    <tr>
                        <td class="center" colspan="7"><?php echo $text_no_results; ?></td>
                    </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
        <div class="buttons">
            <div class="left"><a href="<?php echo $back; ?>" class="button"><span><?php echo $button_back; ?></span></a></div>
            <div class="right"><a href="<?php echo $continue; ?>" class="button"><span><?php echo $button_continue; ?></span></a></div>
        </div>
    </form>

    <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
function filter() {
	url = 'index.php?route=affiliate/statistics';
	
	var filter_date_start = $('input[name=\'filter_date_start\']').attr('value');
	
	if (filter_date_start) {
		url += '&filter_date_start=' + encodeURIComponent(filter_date_start);
	}

	var filter_date_end = $('input[name=\'filter_date_end\']').attr('value');
	
	if (filter_date_end) {
		url += '&filter_date_end=' + encodeURIComponent(filter_date_end);
	}
	
	location = url;
}
//--></script> 
<script type="text/javascript"><!--
function clearvalue() {
	url = 'index.php?route=affiliate/statistics';
	
        $('input[name=\'filter_date_start\']').val("");
	$('input[name=\'filter_date_end\']').val("");
	
	location = url;
}
//--></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	$('#date-start').datepicker({dateFormat: 'yy-mm-dd'});
	
	$('#date-end').datepicker({dateFormat: 'yy-mm-dd'});
});
//--></script> 
<?php echo $footer; ?> 