<a href="/index.php?route=checkout/simplecheckout" class="__new_buy-btn __new_buy <?php if($text_items==0) { ?>hide-count<?php } ?>">
	<img src="catalog/view/smartv3/img/__new_header/Cos.png" alt="cumpara">
	<span class="__new_count_opt __new_cnt_2" id="__cos_count__"><?php echo $text_items; ?></span>
	<span class="__new_menu-title __new_cos-title"><?=$text_cart;?></span>
</a>
<style type="text/css">.hide-count{display:none;}</style>
<script type="text/javascript">
$(document).ready(function(){
    $(".add_compare").click(function(){
        $(".count_opt_compare").removeClass('hide-count');
    });
});</script>