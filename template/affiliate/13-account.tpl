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
            <div class="page_notification">
                <?php if ($success) { ?>
                <div class="success"><i class="icon-ok info_icon"></i><?php echo $success; ?></div>
                <?php } ?>
            </div>
            <?php echo $content_top; ?> 
            <!-- START ACCOUNT PAGE -->
        	<div class="account-page" style="min-height: 0;">
                <div class="admin-panel" style="">
                <style>
				.dashboard-content {float: left;width: 43%;text-align: left;margin-bottom: 60px;}
				.statistic {width: 50%;float: right;}
				.aff_menu {background: #ededed;width: 100%; height:40px; font-weight:bold}
				.aff_menu_li {width: auto;border-right: 1px solid #fff;height: 32px;padding-top: 10px;padding-left: 10px;display: block;float: left;padding-right: 10px; cursor:pointer;}
				td {font-size: 16px;}
				table.list {line-height: 30px;}
				table.list .left {padding-left: 20px;}
				table.list .right {border-right:none; text-align:center;}
				table.list .left:last {border-bottom:2px solid #ccc;}
				table.list .right:last {border-bottom:2px solid #ccc;}
				table.list > thead > tr > td { font-weight:bold;}
				table.list .tr_last:last-child {border-bottom:2px solid #ccc;}
				.admin-panel ul li a {color: #999;}
				.admin-panel ul .selected {background:#ffcc33;}
				.admin-panel ul .selected a {color:#000 !important; }
				.aff_menu a {color:#999;}
				.aff_menu .selected {color:#000;}
				.aff_menu a:hover {color:#000;}
				</style>

                    <ul class="aff_menu">
                    <li class="aff_menu_li selected"><?php echo $text_my_account; ?></li>
                    <a href="<?php echo $edit; ?>"><li class="aff_menu_li"><?php echo $text_edit; ?></li></a>
                    <a href="<?php echo $password; ?>"><li class="aff_menu_li"><?php echo $text_password; ?></li></a>
                    <a href="<?php echo $payment; ?>"><li class="aff_menu_li"><?php echo $text_payment; ?></li></a>

                    <a href="<?php echo $tracking; ?>"><li class="aff_menu_li"><?php echo $text_tracking; ?></li></a>
                    <a href="<?php echo $history; ?>"><li class="aff_menu_li"><?php echo $text_history; ?></li></a>
                    <a href="<?php echo $help_page; ?>"><li class="aff_menu_li"><?php echo $text_help; ?></li></a>
                    <!--li class="aff_menu_li"><a href="<?php echo $transaction; ?>">FAQ</a></li-->
                    <a href="<?php echo $logout; ?>"><li class="aff_menu_li" style="float: right;"><b style="color:#000;"><?php echo $text_logout; ?></b></li></a>
                    </ul>
                </div>
            </div>
            <!-- END ACCOUNT PAGE -->
            <div style="text-align:center;">
<!-- statistic -->            
            <div class="dashboard-content" style="background: #ededed;margin-right: 25px;padding: 20px;">
            <div style="font-size: 20px;font-weight: bold;margin-bottom: 15px;"><?php echo $text_stats; ?></div>
          <table style="width: 90%;">
            <tr>
              <td><?php echo $text_total_sale; ?></td>
              <td><?php echo $total_sale; ?> <?php echo $currency; ?></td>
            </tr>
            <tr valign="top" style="height:34px;">
              <td><?php echo $text_total_sale_year; ?></td>
              <td><?php echo $total_sale_year; ?> <?php echo $currency; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_clicks; ?></td>
              <td><?php echo $affiliates['count_transitions']; ?></td>
          	</tr>
            <tr>
              <td><?php echo $text_cart_clicks; ?></td>
              <td><?php echo $total_cart; ?></td>
          	</tr>
            <tr valign="top" style="height:34px;">
              <td><?php echo $text_total_order; ?></td>
              <td><?php echo $total_order; ?></td>

          </tr>
          <tr>
          	<td><?php echo $text_balance; ?></td>
            <td><a href="//smart.md/index.php?route=affiliate/history" style="color:#000;"><b><?php echo $balance; ?> <?php echo $currency; ?></b></a></td>
          </tr>
          </table>
        </div>
      
      <div class="statistic">
      <div class="dashboard-heading" style="text-align: left;font-size: 20px;font-weight: bold;"><?php echo $text_statistics; ?></div>
        <div class="range" style="float: right;margin-top: -29px;margin-bottom: 23px;">&nbsp;
          <select id="range" onchange="getSalesChart(this.value)">
          <option value="month"><?php echo $text_month; ?></option>
          <option value="week"><?php echo $text_week; ?></option>
          <option value="day"><?php echo $text_day; ?></option>
          
          <option value="year">-<?php echo $text_year; ?>-</option>
          </select>
        </div>
        
        <div class="dashboard-content">
          <div id="report" style="width: 485px;height: 170px;margin: 15px 0px 32px 0px;padding: 0px;position: relative;"></div>
        </div>
      </div>
      </div>
      <script type="text/javascript" src="admin/view/javascript/jquery/flot/jquery.flot.js"></script> 
<script type="text/javascript"><!--
function getSalesChart(range) {
	$.ajax({
		type: 'get',
		url: 'index.php?route=affiliate/account/chart&range=' + range,
		dataType: 'json',
		async: false,
		success: function(json) {
			var option = {	
				shadowSize: 0,
				lines: { 
					show: true,
					fill: true,
					lineWidth: 1
				},
				grid: {
					backgroundColor: '#FFFFFF'
				},	
				xaxis: {
            		ticks: json.xaxis
				}
			}

			$.plot($('#report'), [json.order, json.customer], option);
		}
	});
}

getSalesChart($('#range').val());
//--></script> 
<!-- /statistic -->
            
            
            <div class="transaction-info">
                   <div style="font-size: 20px;font-weight: bold;margin-bottom: 15px;"><?php echo $text_list_orders; ?></div>
                    <table class="list" style="border:none;">
                    <thead style="border-bottom: 2px solid #ccc;">
                      <tr>
                        <td class="left"><?php echo $column_date_added; ?></td>
                        <td class="left"><?php echo $column_order_id; ?></td>
                        <td class="left"><?php echo $column_description; ?></td>
                        <td class="left"><?php echo $column_amount; ?> (<?php echo $currency; ?>)</td>
                        <td class="right"><?php echo $column_status; ?></td>
                      </tr>
                    </thead>
                    <tbody>
                      <?php if ($transactions) { ?>
                      <?php foreach ($transactions  as $transaction) { ?>
                      <tr class="tr_last">
                        <td class="left"><?php echo $transaction['date_added']; ?></td>
                        <td class="left">#<?php if (isset($transaction['order_id'])) { echo $transaction['order_id']; } else { ?>-<?php } ?></td>
                        <td class="left"><?php echo $transaction['name']; ?></td>
                        <td class="left"><?php echo $transaction['commission']; ?></td>
                        <td class="right">
                        <b><?php if ($transaction['order_status_id'] == '7') { echo $text_status_0; } elseif ($transaction['order_status_id'] == '5') { echo $text_status_1; } else { echo $text_status_2; } ?></b>
                        <div style="font-size:10px;line-height: 15px;color: #999;">
                        <?php if ($transaction['payment_code'] == 'cod') { echo $text_plivrare; } elseif ($transaction['payment_code'] == '468') { echo $text_scredit; } elseif ($transaction['payment_code'] == 'cod') { echo $text_pcard; } ?>
                        </div>
                        </td>
                      </tr>
                      <?php } ?>
                      <?php } else { ?>
                      <tr>
                        <td class="center" colspan="6"><?php echo $text_empty; ?></td>
                      </tr>
                      <?php } ?>
                    </tbody>
                    </table>
                    <div class="pagination"><?php echo $pagination; ?></div>
                    
                </div>
            
            <!-- produse vizualizate -->
                <div class="transaction-info">
                   <div style="font-size: 20px;font-weight: bold;margin-bottom: 15px;">Produse vizualizate</div>
                   <table><tr><td style="vertical-align: top;">
                    <table class="list" style="border:none;">
                    <thead style="border-bottom: 2px solid #ccc;">
                      <tr>                        
                        <td class="left">Produse vizualizate de catre utilizatori</td>
                      </tr>
                    </thead>
                    <tbody>
                        
                      <?php if ($transactions_product) { ?>
                      
          			  <?php foreach ($transactions_product as $transaction_product) { ?>
                      	                        
                        <?php foreach ($transaction_product['products_viewed'] as $viewed) { ?>
                        <tr class="tr_last">
                        <td class="left">
                        <?php echo $viewed['product_viewed']; ?>
                        
                        <?php } ?>
                        </td>
                        </tr>
                      <?php } ?><?php } ?>
                      
                    </tbody>
                    </table>
                  </td><td style="vertical-align: top;">  
                    <table class="list" style="border:none;">
                    <thead style="border-bottom: 2px solid #ccc;">
                      <tr>                        
                        <td class="left">Produse adaugate in cos</td>
                      </tr>
                    </thead>
                    <tbody>
                        
                      <?php if ($transactions_product) { ?>
                      
          			  <?php foreach ($transactions_product as $transaction_product) { ?>
                      	                        
                        <?php foreach ($transaction_product['cart_contents'] as $product_name) { ?>
                        <tr class="tr_last">
                        <td class="left">
                        <?php echo $product_name['product_name']; ?>
                      
                        
                          
                        </td>
                        </tr>
                        <?php } } } ?>
                      
                    </tbody>
                    </table>
                  </td></tr></table>  
                   
                    
                    
                </div>
            <!-- end produse vizualizate -->
            </div>
        </div>
        <!-- END COLUMN CENTER -->
    	<!-- START CONTENT BOTTOM -->
        <div class="content-bottom">
            <?php echo $content_bottom; ?>
        </div>
        <!-- END CONTENT BOTTOM -->
    </div>
</div>
<?php echo $footer; ?>