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

			<!-- statistic -->   
				<div style="text-align:center;">         
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
							  <td><?php echo $text_today; ?></td>
							  <td><?php if (isset($day_stat)) { echo $day_stat; } else { ?>0<?php } ?></td>
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
            <!-- tranzactii start -->
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
                        <b><?php if ($transaction['order_status_id'] == '7') { echo $text_status_2; } elseif ($transaction['order_status_id'] == '5') { echo $text_status_1; } else { echo $text_status_0; } ?></b>
                        <div style="font-size:10px;line-height: 15px;color: #999;">
                        <?php if ($transaction['payment_code'] == 'cod') { echo $text_plivrare; } elseif ($transaction['payment_code'] == '468') { echo $text_scredit; } elseif ($transaction['payment_code'] == 'bpay') { echo $text_pcard; } ?>
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
			<!-- tranzactii end -->
            <!-- produse vizualizate -->
			<div>
                <div class="transaction-info">
                	<div style="font-size: 20px;font-weight: bold;margin-bottom: 15px;"><?php echo $top_titlu; ?></div>
                   	<table>
                   		<tr>
                        	<td style="vertical-align: top;">
                            <?php if (isset($produse_viz)) { ?>
								<table class="list p_viewed" style="border:none; width:465px;">
                                    <thead style="border-bottom: 2px solid #ccc;">
                                        <tr>                        
                                            <td class="left" colspan="2"><?php echo $top_vizualizate; ?></td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                        <?php foreach ($produse_viz as $p_v) { 
                                        foreach ($p_v as $key => $value) { ?>
                                        <?php
                                        function get_word_counts($phrases) {
                                           $counts = array();
                                            foreach ($phrases as $phrase) {
                                                $words = explode(',', $phrase);
                                                foreach ($words as $word) {
                                                  $word = preg_replace("#[^0-9\-]#", "", $word);
                                                  echo '<div style="display:none;">';
                                                    $counts[$word] += 1;
                                                    echo '</div>';
                                                }
                                            }
                                            return $counts;
                                        }
                                        $phrases = array(" . $value . ");
                                        $counts = get_word_counts($phrases);
                                        arsort($counts); ?>
                                        <?php $this->load->model('catalog/product'); 
                                            if ($counts) {
                                            foreach ($counts as $key=>$value) {
                                              $product_viewed_info = $this->model_catalog_product->getProduct($key);
                                                if ($product_viewed_info) {
                                                    $product_viewed[] = array (
                                                    'product_viewed' => $product_viewed_info['name'],
                                                    'key'			 => $product_viewed_info['product_id'],
                                                    'value'			 => $value
                                                    );
                                                }
                                            } ?> 
                                        <?php foreach ($product_viewed as $p_view) { ?>
                                        <tr class="tr_last">
                                            <td class="left">
                                            <?php echo $p_view['product_viewed']; ?>
                                            </td>
                                            <td class="right">
                                            <?php echo $p_view['value'] ?>
                                            </td>
                                        </tr>
                                        <?php } } } } ?>
                                    </tbody>
                                </table>
                                 <a href="javascript:" class="more" style="display:none"><?php echo $vezi_toate; ?></a>
                                 <a href="javascript:" class="more2"><?php echo $ascunde; ?></a> 
                                <?php } ?>
                                <style>
								.p_viewed tbody tr:nth-child(n+6) {display:none;}
								.more2 {display:none;float: right;}
								.more {float: right;}
								</style>
                                <script>
								$(document).ready(function () {
									var dt = $(".p_viewed tbody tr").length;
									if (dt>5) {
										$('.more').css("display","block");
										
									$('.more').click(function() {
										$('.p_viewed tbody tr').show();
										$('.more').css("display","none");
										$('.more2').css("display","block");
									});
									$('.more2').click(function() {
										$('.p_viewed tbody tr:nth-child(n+6)').css("display","none");
										$('.more2').css("display","none");
										$('.more').css("display","block");
									});
									}
								});
								</script>
                  			</td>
                  			<td style="vertical-align: top; width:50px;"></td>
                  			<td style="vertical-align: top;">
                            <?php if (isset($produse_added)) { ?>
                                <table class="list p_added" style="border:none; width:465px;">
                                        <thead style="border-bottom: 2px solid #ccc;">
                                            <tr>                        
                                                <td class="left" colspan="2"><?php echo $top_adaugate; ?></td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                                
                                                <?php foreach ($produse_added as $p_a) { 
                                                foreach ($p_a as $key_a => $value_a) { ?>
                                                <?php
                                                function get_added_counts($phrases_a) {
                                                   $counts_a = array();
                                                    foreach ($phrases_a as $phrase_a) {
                                                        $words_a = explode(',', $phrase_a);
                                                        foreach ($words_a as $word_a) {
                                                          $word_a = preg_replace("#[^0-9\-]#", "", $word_a);
                                                          echo '<div style="display:none;">';
                                                            $counts_a[$word_a] += 1;
                                                            echo '</div>';
                                                        }
                                                    }
                                                    return $counts_a;
                                                }
                                                $phrases_a = array(" . $value_a . ");
                                                $counts_a = get_added_counts($phrases_a);
                                                arsort($counts_a); ?>
                                                <?php $this->load->model('catalog/product'); 
                                                    if ($counts_a) {
                                                    foreach ($counts_a as $key_a=>$value_a) {
                                                      $product_viewed_info = $this->model_catalog_product->getProduct($key_a);
                                                        if ($product_viewed_info) {
                                                            $product_added[] = array (
                                                            'product_added' => $product_viewed_info['name'],
                                                            'key_a'			 => $product_viewed_info['product_id'],
                                                            'value_a'			 => $value
                                                            );
                                                        }
                                                    } ?> 
                                                <?php foreach ($product_added as $p_added) { ?>
                                        <tr class="tr_last">
                                            <td class="left">
                                            <?php echo $p_added['product_added']; ?>
                                            </td>
                                            <td class="right">
                                            <?php echo $p_added['value_a'] ?>
                                            </td>
                                        </tr>
                                            <?php } } } } ?>    
                                    </tbody>
                                </table>
                                <a href="javascript:" class="more_a" style="display:none"><?php echo $vezi_toate; ?></a>
                                <a href="javascript:" class="more_a2"><?php echo $ascunde; ?></a> 
                                <?php } ?>
                                <style>
								.p_added tbody tr:nth-child(n+6) {display:none;}
								.more_a2 {display:none;float: right;}
								.more_a {float: right;}
								</style>
                                <script>
								$(document).ready(function () {
									var dt = $(".p_added tbody tr").length;
									if (dt>5) {
										$('.more_a').css("display","block");
										
									$('.more_a').click(function() {
										$('.p_added tbody tr').show();
										$('.more_a').css("display","none");
										$('.more_a2').css("display","block");
									});
									$('.more2').click(function() {
										$('.p_added tbody tr:nth-child(n+6)').css("display","none");
										$('.more_a2').css("display","none");
										$('.more_a').css("display","block");
									});
									}
								});
								</script>
                            </td>
                        </tr>
                    </table>
                </div> 
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

<?php echo $footer; ?></table>