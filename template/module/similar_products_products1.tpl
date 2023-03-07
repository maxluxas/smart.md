<div id="additional_colors" class="jcarousel-skin-colors" style="list-style-type: none">
<div>
<script type="text/javascript"><!--
$("[rel=tooltip]").tooltip({ html : true });
//--></script>
<style>
.color_title {display: none;}
.sim_link {}
.sim_link:hover {}
.sim_div {width:16px; height:16px; border-radius:10px; display: inline-block; margin-right: 4px;vertical-align: text-bottom;}
</style>



    <div class="row circles">
  <?php if (isset($colors)) { foreach ($colors as $product) { ?>

  	<?php if (strpos($product['color_text'],'White') !== false) { ?>


    	<a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #e0e0e0; background:#fff;"></aside></div>
    	<div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
    	</a>
		<?php } elseif (strpos($product['color_text'],'Rose Gold') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #EDCCBD; background:#EDCCBD ;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
		</a>
	 <?php } elseif (strpos($product['color_text'],'Green') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #70ca66; background:#70ca66;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
		</a>
    <?php } elseif (strpos($product['color_text'],'Grey') !== false) {?>
         <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #bdbdbd; background:#bdbdbd;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
        </a>
     <?php } elseif (strpos($product['color_text'],'Gray') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #bdbdbd; background:#bdbdbd;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
		</a>
    <?php } elseif (strpos($product['color_text'],'Black') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #272626; background:#272626;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
		</a>
    <?php } elseif (strpos($product['color_text'],'Red') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #f35656; background:#f35656;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
		</a>
    <?php } elseif (strpos($product['color_text'],'Blue') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #7694e8; background:#7694e8;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
		</a>
    <?php } elseif (strpos($product['color_text'],'Yellow') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #e6d510; background:#e6d510;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
        </a>
    <?php } elseif (strpos($product['color_text'],'Pink') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
         <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #f159ad; background:#f159ad;"></aside></div>
         <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
        </a>
    <?php } elseif (strpos($product['color_text'],'Aluminium') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #ADB2BD; background:#ADB2BD;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
        </a>
    <?php } elseif (strpos($product['color_text'],'Brown') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #a56e2a; background:#a56e2a;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
        </a>
    <?php } elseif (strpos($product['color_text'],'Champagne') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #F7E7CE; background:#F7E7CE;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
        </a>
    <?php } elseif (strpos($product['color_text'],'Chrome') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #E3DEDB; background:#E3DEDB;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
        </a>
    <?php } elseif (strpos($product['color_text'],'Gold') !== false) {?>

    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
            <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #e4c56c; background:#e4c56c;"></aside></div>
            <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
        </a>
    <?php } elseif (strpos($product['color_text'],'Silver') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #DDDFDE; background:#DDDFDE;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
        </a>
    <?php } elseif (strpos($product['color_text'],'Cyan') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
         <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #5cf9f9; background:#5cf9f9;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
        </a>
    <?php } elseif (strpos($product['color_text'],'Chocolate') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
         <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #713204; background:#713204;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
        </a>
    <?php } elseif (strpos($product['color_text'],'Golden') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
         <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #e4c56c; background:#e4c56c;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
        </a>
	 <?php } elseif (strpos($product['color_text'],'Coral') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #ff7f50; background:#ff7f50;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
        </a>
    <?php } elseif (strpos($product['color_text'],'Graphite') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
         <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #2b2b2b; background:#2b2b2b;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
        </a>
    <?php } elseif (strpos($product['color_text'],'Orange') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #f1ad48; background:#f1ad48;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
        </a>
    <?php } elseif (strpos($product['color_text'],'Magenta') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #ff76ff; background:#ff76ff;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
        </a>
    <?php } elseif (strpos($product['color_text'],'Mint') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #98ff98; background:#98ff98;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
        </a>
    <?php } elseif ($product['color_text'] == 'Navy') {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #000080; background:#000080;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
        </a>
    <?php } elseif ($product['color_text'] == 'Orchid') {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #B565A7; background:#B565A7;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
        </a>
    <?php } elseif ($product['color_text'] == 'Peaco') {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #61C0FF; background:#61C0FF;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
        </a>
    <?php } elseif (strpos($product['color_text'],'Purple') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">\
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #87244C; background:#87244C;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
        </a>
    <?php } elseif (strpos($product['color_text'],'Reef') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #00A3A9; background:#00A3A9;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
        </a>
    <?php } elseif (strpos($product['color_text'],'Wave') !== false) {?>
    	 <a href="<?php echo $product['color_link']; ?>" class="sim_link" rel="tooltip" data-placement="bottom"  data-original-title="<img src='image/<?php echo $product['color_img']; ?>' style='width:100px;'>">
        <div class="col s3 col_aria"><aside class="cirle" style="border:1px solid #1e9bb5; background:#1e9bb5;"></aside></div>
        <div class="visible-desktop color_title"><?php echo $product['color_text']; ?></div>
        </a>
    <?php } ?>

  <?php } } ?>
  </div>
  </div>


  <?php foreach ($similar as $product) { ?>
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
