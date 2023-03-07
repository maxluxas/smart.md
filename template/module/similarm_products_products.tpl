<div id="additional_colors" class="jcarousel-skin-colors" style="list-style-type: none">
<div>
<script type="text/javascript"><!--
$("[rel=tooltip]").tooltip({ html : true });
//--></script>
<style>
.color_title {display: none;}
.sim_link {font-size: 18px;margin-right: 5px;color:#000;}
.sim_link:hover {color:#007fd4;text-decoration:underline;}
.sim_div {width:16px; height:16px; border-radius:10px; display: inline-block; margin-right: 4px;vertical-align: text-bottom;}
</style>
<link rel="stylesheet" type="text/css" href="//darwin.md/catalog/view/theme/cartmaniac/stylesheet/bootstrap-tooltip2.css" media="all" />
  

    <div class="row circles">
    <?php print_r($memories); ?>
  <?php foreach ($memories as $product) { ?>
  
  	<?php if (strpos($product['color_text'],'White') !== false) { ?>


    	<a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
    	
    	</a>
		<?php } elseif (strpos($product['color_text'],'Rose Gold') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>

		</a>
	 <?php } elseif (strpos($product['color_text'],'Green') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
		</a>
     <?php } elseif (strpos($product['color_text'],'Gray') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
		</a>
    <?php } elseif (strpos($product['color_text'],'Black') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
		</a>
    <?php } elseif (strpos($product['color_text'],'Red') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
		</a>
    <?php } elseif (strpos($product['color_text'],'Blue') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
		</a>
    <?php } elseif (strpos($product['color_text'],'Yellow') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
        </a>
    <?php } elseif (strpos($product['color_text'],'Pink') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
         
        </a>
    <?php } elseif (strpos($product['color_text'],'Aluminium') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
        </a>
    <?php } elseif (strpos($product['color_text'],'Brown') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
        </a>
    <?php } elseif (strpos($product['color_text'],'Champagne') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
        </a>
    <?php } elseif (strpos($product['color_text'],'Chrome') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle" style="border:1px solid #E3DEDB; background:#E3DEDB;"></aside></div>
        
        </a>
    <?php } elseif (strpos($product['color_text'],'Gold') !== false) {?>
            
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
            
        </a>
    <?php } elseif (strpos($product['color_text'],'Silver') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
        </a>
    <?php } elseif (strpos($product['color_text'],'Cyan') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
        </a>
    <?php } elseif (strpos($product['color_text'],'Chocolate') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
        </a>
    <?php } elseif (strpos($product['color_text'],'Golden') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
        </a>
	 <?php } elseif (strpos($product['color_text'],'Coral') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
        </a>
    <?php } elseif (strpos($product['color_text'],'Graphite') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
        </a>
    <?php } elseif (strpos($product['color_text'],'Orange') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
        </a>
    <?php } elseif (strpos($product['color_text'],'Magenta') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
        </a>
    <?php } elseif (strpos($product['color_text'],'Mint') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
        </a>
    <?php } elseif ($product['color_text'] == 'Navy') {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
        </a>
    <?php } elseif ($product['color_text'] == 'Orchid') {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
        </a>
    <?php } elseif ($product['color_text'] == 'Peaco') {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
        </a>
    <?php } elseif (strpos($product['color_text'],'Purple') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">\
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
        </a>
    <?php } elseif (strpos($product['color_text'],'Reef') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
        </a>
    <?php } elseif (strpos($product['color_text'],'Wave') !== false) {?>
    	 <a onclick="_gaq.push(['_trackEvent', 'Butoane_Produs', 'Alte culori']);" href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col-xs-3 col_aria"><aside class="cirle mem"><p><?php echo $product['color_text']; ?></p></aside></div>
        
        </a>
    <?php } ?>
    
  <?php } ?>
  </div>
  </div>
  
  
  <?php foreach ($similarm as $product) { ?>
  <span class="additional_color" style="display:none;">
    <?php if ($product['thumb']) { ?>
    <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" style="width:80px;" /></a>
    <?php } ?>
  </span>
  <?php } ?>
</div>
<?php if ($show_pagination) { ?>
<div class="pagination no_bottom_margin"><?php echo $pagination; ?></div>
<?php } ?>
<script>
/* $('.additional_color').mouseover(function(){
$.ajax({
		url: $(this).find('a').attr('href'),
		type: 'get',
		dataType: 'html',
		success: function(data){
			$('#main_image').attr('src',$(data).find('#main_image').attr('src'));
			$('#zoom1').attr('href',$(data).find('#zoom1').attr('href'));
		}
		});
}); */
</script>  
