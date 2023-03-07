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
				.textarea_banner {width: 450px !important;margin-left: 20px !important;}
				.htabs {padding: 0px 0px 0px 10px;height: 30px;line-height: 16px;border-bottom: 1px solid #DDDDDD;margin-bottom: 15px;}
				.htabs a {border-top: 1px solid #DDDDDD;border-left: 1px solid #DDDDDD;border-right: 1px solid #DDDDDD;background: #FFFFFF url('../image/tab.png') repeat-x;padding: 7px 15px 6px 15px;float: left;font-family: Arial, Helvetica, sans-serif;font-size: 13px;font-weight: bold;text-align: center;text-decoration: none;color: #000000;margin-right: 2px;display: none;}
				.htabs a.selected {padding-bottom: 7px;background: #FFFFFF;}
				.gpu_form span {font-weight:bold;}
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
                        <p><?php echo $text_code; ?></p>
                    </div>
                    <script type="text/javascript">
                    $.fn.tabs = function() {var selector = this;this.each(function() {var obj = $(this); $(obj.attr('href')).hide();$(obj).click(function() {$(selector).removeClass('selected');$(selector).each(function(i, element) {$($(element).attr('href')).hide();});$(this).addClass('selected');$($(this).attr('href')).show();return false;});});$(this).show();$(this).first().click();};
				</script>
                    
                    
                   <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> <a href="//smart.md/index.php?tracking=<?php echo $code; ?>">Smart.md - Cumpara destept!</a> <!-- SMART.MD Affiliate banner script END --></textarea>
                    
                    <div id="tab-apple" style="display: none;">
                    <!-- START -->
                        <div class="gpu_box_form">
                            <div class="gpu_form">
                                
                                <br />
                                <span>200x200</span>
                                <div>
                                <img src="//smart.md/image/affiliate/feb2014/apple/AdWords_iPhone_200x200.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> <a href="//smart.md/apple-iphone-5s-gold.html?tracking=<?php echo $code; ?>"><img src="//smart.md/image/affiliate/feb2014/apple/AdWords_iPhone_200x200.gif" alt="Apple iPhone 5S" title="Apple iPhone 5S" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <hr />
                                <br />
                                <span>250x250</span>
                                <div>
                                <img src="//smart.md/image/affiliate/feb2014/apple/AdWords_iPhone_250x250.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> <a href="//smart.md/apple-iphone-5s-gold.html?tracking=<?php echo $code; ?>"><img src="//smart.md/image/affiliate/feb2014/apple/AdWords_iPhone_250x250.gif" alt="Apple iPhone 5S" title="Apple iPhone 5S" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <hr />
                                <br />
                                <span>250x360</span>
                                <div>
                                <img src="//smart.md/image/affiliate/feb2014/apple/AdWords_iPhone_250x360.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> <a href="//smart.md/apple-iphone-5s-gold.html?tracking=<?php echo $code; ?>"><img src="//smart.md/image/affiliate/feb2014/apple/AdWords_iPhone_250x360.gif" alt="Apple iPhone 5S" title="Apple iPhone 5S" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <hr />
                                <br />
                                <span>300x250</span>
                                <div>
                                <img src="//smart.md/image/affiliate/feb2014/apple/AdWords_iPhone_300x250.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> <a href="//smart.md/apple-iphone-5s-gold.html?tracking=<?php echo $code; ?>"><img src="//smart.md/image/affiliate/feb2014/apple/AdWords_iPhone_300x250.gif" alt="Apple iPhone 5S" title="Apple iPhone 5S" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <hr />
                                <br />
                                <span>336x280</span>
                                <div>
                                <img src="//smart.md/image/affiliate/feb2014/apple/AdWords_iPhone_336x280.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> <a href="//smart.md/apple-iphone-5s-gold.html?tracking=<?php echo $code; ?>"><img src="//smart.md/image/affiliate/feb2014/apple/AdWords_iPhone_336x280.gif" alt="Apple iPhone 5S" title="Apple iPhone 5S" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <hr />
                                <br />
                                <span>468x60</span>
                                <div>
                                <img src="//smart.md/image/affiliate/feb2014/apple/AdWords_iPhone_468x60.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> <a href="//smart.md/apple-iphone-5s-gold.html?tracking=<?php echo $code; ?>"><img src="//smart.md/image/affiliate/feb2014/apple/AdWords_iPhone_468x60.gif" alt="Apple iPhone 5S" title="Apple iPhone 5S" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <hr />
                                <br />
                                <span>728x90</span>
                                <div>
                                <img src="//smart.md/image/affiliate/feb2014/apple/AdWords_iPhone_728x90.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> <a href="//smart.md/apple-iphone-5s-gold.html?tracking=<?php echo $code; ?>"><img src="//smart.md/image/affiliate/feb2014/apple/AdWords_iPhone_728x90.gif" alt="Apple iPhone 5S" title="Apple iPhone 5S" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                               
                                <hr />
                                <br />
                                <span>970x90</span>
                                <div>
                                <img src="//smart.md/image/affiliate/feb2014/apple/AdWords_iPhone_970x90.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> <a href="//smart.md/apple-iphone-5s-gold.html?tracking=<?php echo $code; ?>"><img src="//smart.md/image/affiliate/feb2014/apple/AdWords_iPhone_970x90.gif" alt="Apple iPhone 5S" title="Apple iPhone 5S" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <hr />
                                <br />
                                <span>980x120</span>
                                <div>
                                <img src="//smart.md/image/affiliate/feb2014/apple/AdWords_iPhone_980x120.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> <a href="//smart.md/apple-iphone-5s-gold.html?tracking=<?php echo $code; ?>"><img src="//smart.md/image/affiliate/feb2014/apple/AdWords_iPhone_980x120.gif" alt="Apple iPhone 5S" title="Apple iPhone 5S" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <hr />
                                <br />
                                <span>120x600</span>
                                <div>
                                <img src="//smart.md/image/affiliate/feb2014/apple/AdWords_iPhone_120x600.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> <a href="//smart.md/apple-iphone-5s-gold.html?tracking=<?php echo $code; ?>"><img src="//smart.md/image/affiliate/feb2014/apple/AdWords_iPhone_120x600.gif" alt="Apple iPhone 5S" title="Apple iPhone 5S" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <hr />
                                <br />
                                <span>160x600</span>
                                <div>
                                <img src="//smart.md/image/affiliate/feb2014/apple/AdWords_iPhone_160x600.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> <a href="//smart.md/apple-iphone-5s-gold.html?tracking=<?php echo $code; ?>"><img src="//smart.md/image/affiliate/feb2014/apple/AdWords_iPhone_160x600.gif" alt="Apple iPhone 5S" title="Apple iPhone 5S" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                            </div>
                        </div>
                        <!-- END -->
                    </div>
                    
           	 		<div id="tab-acer" style="display: none;">
                        <!-- START -->
                        <div class="gpu_box_form">
                            <div class="gpu_form">
                                
                                <br />
                                <span>120x600</span>
                                <div>
                                <img src="//smart.md/image/affiliate/mai2014/acer/Smart_AcerE1-532_120x600.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> 
								<a href="//smart.md/laptopuri/notebook/acer-aspire-e1-532-clarinet-black-nxmfveu015.html?tracking=<?php echo $code; ?>">
								<img src="//smart.md/image/affiliate/mai2014/acer/Smart_AcerE1-532_120x600.gif" alt="Acer Aspire E1-532" title="Acer Aspire E1-532" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                
                                <hr />
                                <br />
                                <span>160x600</span>
                                <div>
                                <img src="//smart.md/image/affiliate/mai2014/acer/Smart_AcerE1-532_160x600.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> 
								<a href="//smart.md/laptopuri/notebook/acer-aspire-e1-532-clarinet-black-nxmfveu015.html?tracking=<?php echo $code; ?>">
								<img src="//smart.md/image/affiliate/mai2014/acer/Smart_AcerE1-532_160x600.gif" alt="Acer Aspire E1-532" title="Acer Aspire E1-532" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <hr />
                                <br />
                                <span>300x250</span>
                                <div>
                                <img src="//smart.md/image/affiliate/mai2014/acer/Smart_AcerE1-532_300x250.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> 
								<a href="//smart.md/laptopuri/notebook/acer-aspire-e1-532-clarinet-black-nxmfveu015.html?tracking=<?php echo $code; ?>">
								<img src="//smart.md/image/affiliate/mai2014/acer/Smart_AcerE1-532_300x250.gif" alt="Acer Aspire E1-532" title="Acer Aspire E1-532" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <hr />
                                <br />
                                <span>320x50</span>
                                <div>
                                <img src="//smart.md/image/affiliate/mai2014/acer/Smart_AcerE1-532_320x50.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> 
								<a href="//smart.md/laptopuri/notebook/acer-aspire-e1-532-clarinet-black-nxmfveu015.html?tracking=<?php echo $code; ?>">
								<img src="//smart.md/image/affiliate/mai2014/acer/Smart_AcerE1-532_320x50.gif" alt="Acer Aspire E1-532" title="Acer Aspire E1-532" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <hr />
                                <br />
                                <span>468x60</span>
                                <div>
                                <img src="//smart.md/image/affiliate/mai2014/acer/Smart_AcerE1-532_468x60.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> 
								<a href="//smart.md/laptopuri/notebook/acer-aspire-e1-532-clarinet-black-nxmfveu015.html?tracking=<?php echo $code; ?>">
								<img src="//smart.md/image/affiliate/mai2014/acer/Smart_AcerE1-532_468x60.gif" alt="Acer Aspire E1-532" title="Acer Aspire E1-532" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <hr />
                                <br />
                                <span>728x90</span>
                                <div>
                                <img src="//smart.md/image/affiliate/mai2014/acer/Smart_AcerE1-532_728x90.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> 
								<a href="//smart.md/laptopuri/notebook/acer-aspire-e1-532-clarinet-black-nxmfveu015.html?tracking=<?php echo $code; ?>">
								<img src="//smart.md/image/affiliate/mai2014/acer/Smart_AcerE1-532_728x90.gif" alt="Acer Aspire E1-532" title="Acer Aspire E1-532" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>                               
                            </div>
                        </div>
                        <!-- END -->
                   
                    </div>
                   
                   
                    <div id="tab-samsung" style="display: none;">
                    <!-- START -->
                        <div class="gpu_box_form">
                            <div class="gpu_form">
                                
                                <br />
                                <span>200x200</span>
                                <div>
                                <img src="//smart.md/image/affiliate/feb2014/samsung/AdWords_Samsung_200x200.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> <a href="//smart.md/samsung-i9500-galaxy-s-iv-black-mist.html?tracking=<?php echo $code; ?>"><img src="//smart.md/image/affiliate/feb2014/samsung/AdWords_Samsung_200x200.gif" alt="Samsung Galaxy SIV" title="Samsung Galaxy SIV" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <hr />
                                <br />
                                <span>250x250</span>
                                <div>
                                <img src="//smart.md/image/affiliate/feb2014/samsung/AdWords_Samsung_250x250.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> <a href="//smart.md/samsung-i9500-galaxy-s-iv-black-mist.html?tracking=<?php echo $code; ?>"><img src="//smart.md/image/affiliate/feb2014/samsung/AdWords_Samsung_250x250.gif" alt="Samsung Galaxy SIV" title="Samsung Galaxy SIV" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <hr />
                                <br />
                                <span>250x360</span>
                                <div>
                                <img src="//smart.md/image/affiliate/feb2014/samsung/AdWords_Samsung_250x360.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> <a href="//smart.md/samsung-i9500-galaxy-s-iv-black-mist.html?tracking=<?php echo $code; ?>"><img src="//smart.md/image/affiliate/feb2014/samsung/AdWords_Samsung_250x360.gif" alt="Samsung Galaxy SIV" title="Samsung Galaxy SIV" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <hr />
                                <br />
                                <span>300x250</span>
                                <div>
                                <img src="//smart.md/image/affiliate/feb2014/samsung/AdWords_Samsung_300x250.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> <a href="//smart.md/samsung-i9500-galaxy-s-iv-black-mist.html?tracking=<?php echo $code; ?>"><img src="//smart.md/image/affiliate/feb2014/samsung/AdWords_Samsung_300x250.gif" alt="Samsung Galaxy SIV" title="Samsung Galaxy SIV" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <hr />
                                <br />
                                <span>336x280</span>
                                <div>
                                <img src="//smart.md/image/affiliate/feb2014/samsung/AdWords_Samsung_336x280.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> <a href="//smart.md/samsung-i9500-galaxy-s-iv-black-mist.html?tracking=<?php echo $code; ?>"><img src="//smart.md/image/affiliate/feb2014/samsung/AdWords_Samsung_336x280.gif" alt="Samsung Galaxy SIV" title="Samsung Galaxy SIV" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <hr />
                                <br />
                                <span>468x60</span>
                                <div>
                                <img src="//smart.md/image/affiliate/feb2014/samsung/AdWords_Samsung_468x60.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> <a href="//smart.md/samsung-i9500-galaxy-s-iv-black-mist.html?tracking=<?php echo $code; ?>"><img src="//smart.md/image/affiliate/feb2014/samsung/AdWords_Samsung_468x60.gif" alt="Samsung Galaxy SIV" title="Samsung Galaxy SIV" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <hr />
                                <br />
                                <span>728x90</span>
                                <div>
                                <img src="//smart.md/image/affiliate/feb2014/samsung/AdWords_Samsung_728x90.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> <a href="//smart.md/samsung-i9500-galaxy-s-iv-black-mist.html?tracking=<?php echo $code; ?>"><img src="//smart.md/image/affiliate/feb2014/samsung/AdWords_Samsung_728x90.gif" alt="Samsung Galaxy SIV" title="Samsung Galaxy SIV" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <hr />
                                <br />
                                <span>970x90</span>
                                <div>
                                <img src="//smart.md/image/affiliate/feb2014/samsung/AdWords_Samsung_970x90.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> <a href="//smart.md/samsung-i9500-galaxy-s-iv-black-mist.html?tracking=<?php echo $code; ?>"><img src="//smart.md/image/affiliate/feb2014/samsung/AdWords_Samsung_970x90.gif" alt="Samsung Galaxy SIV" title="Samsung Galaxy SIV" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <hr />
                                <br />
                                <span>980x120</span>
                                <div>
                                <img src="//smart.md/image/affiliate/feb2014/samsung/AdWords_Samsung_980x120.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> <a href="//smart.md/samsung-i9500-galaxy-s-iv-black-mist.html?tracking=<?php echo $code; ?>"><img src="//smart.md/image/affiliate/feb2014/samsung/AdWords_Samsung_980x120.gif" alt="Samsung Galaxy SIV" title="Samsung Galaxy SIV" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <hr />
                                <br />
                                <span>120x600</span>
                                <div>
                                <img src="//smart.md/image/affiliate/feb2014/samsung/AdWords_Samsung_120x600.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> <a href="//smart.md/samsung-i9500-galaxy-s-iv-black-mist.html?tracking=<?php echo $code; ?>"><img src="//smart.md/image/affiliate/feb2014/samsung/AdWords_Samsung_120x600.gif" alt="Samsung Galaxy SIV" title="Samsung Galaxy SIV" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                                <hr />
                                <br />
                                <span>160x600</span>
                                <div>
                                <img src="//smart.md/image/affiliate/feb2014/samsung/AdWords_Samsung_160x600.gif" />
                                <textarea class="textarea_banner"><!-- SMART.MD Affiliate banner script --> <a href="//smart.md/samsung-i9500-galaxy-s-iv-black-mist.html?tracking=<?php echo $code; ?>"><img src="//smart.md/image/affiliate/feb2014/samsung/AdWords_Samsung_160x600.gif" alt="Samsung Galaxy SIV" title="Samsung Galaxy SIV" /></a> <!-- SMART.MD Affiliate banner script END --></textarea>
                                </div>
                            </div>
                        </div>
                        <!-- END -->
                    </div>
                    
                   
                        <!--
                        <div class="gpu_box_form">
                            <div class="gpu_form">
                                <p><?php echo $text_generator; ?></p>
                                <div><input type="text" name="product" value="" /></div>
                            </div>
                            <div class="gpu_form">
                                <p><?php echo $text_link; ?></p>
                                <div><textarea name="link"></textarea></div>
                            </div>
                        </div>
                        -->
                    
                    <!--<div class="buttons">
                        <div class="right"><a href="<?php echo $continue; ?>" class="button"><i class="icon-share-alt"></i><?php echo $button_continue; ?></a></div>
                    </div>-->
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
<script type="text/javascript"><!--
$('#tabs a').tabs(); 
$('#vtab-option a').tabs();
//--></script> 
<?php echo $footer; ?>