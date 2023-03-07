<?php echo $header; ?>
<div id="ccx_tr_2befcd2e1c6e65c43e3a1440eec2ea59"></div>
<div id="ccx_tr_2820114c4eed75d0b0fe92df77adf48f"></div>
<script type="text/javascript">
let ViselyResource = window.ViselyResource || {
 theme: 'default',
 page: 'collection',
 locale: '<?php echo $lang; ?>',
 currency: 'MDL',
 category: {
  id: <?php echo $category_id; ?>,
  landing: <?php if($category_lading) { ?> true <?php } else { ?>false<?php } ?>,
  hasProducts: <?php if(isset($has_products)) { ?>true<?php } else { ?>false<?php } ?>,
  <?php if($labels) { ?>
   labels:[
   <?php foreach ($labels as $label) { ?>
    <?php if(isset($label['static'])) { ?>
     '<a class="labels-a-element" href="<?php echo $label['url']; ?>"><div class="text-labels"><?php echo $label['text']; ?></div></a>',
    <?php } else { ?>
     '<a class="labels-a-element" href="<?php echo $label['url']; ?>"><div class="text-labels"><?php echo $label['text']; ?></div></a>',
    <?php } ?>
   <?php } ?>''
   ]
  <?php } else { ?>
   labels:[]
  <?php } ?>
 }
};
window.ViselyResource = ViselyResource;
</script>
<div itemscope itemtype="//schema.org/WebPage" id="content">
	<div style="display: none;">
		<span itemprop="name"><?php echo $heading_title; ?></span>
		<ol itemscope itemtype="http://schema.org/BreadcrumbList">
			<?php foreach ($breadcrumbs as $breadkey => $breadcrumb) { ?>
			<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
				<a itemprop="item" href="<?= $breadcrumb['href']; ?>">
					<span itemprop="name"><?= $breadcrumb['text']; ?></span></a>
				<meta itemprop="position" content="<?= $breadkey + 1; ?>" />
			</li>
			<?php } ?>
		</ol>
	</div>
</div>

<div itemscope itemtype="//schema.org/Product" id="content">
	<div style="display: none;">
		<meta itemprop="name" content="<?php echo $heading_title; ?>">
		<div itemprop = "offers" itemscope itemtype = "//schema.org/AggregateOffer">
			<meta itemprop="lowPrice" content="<?php echo $lowPrice; ?>" />
			<meta itemprop="priceCurrency" content="MDL" />
		</div>
	</div>
</div>

<link rel="stylesheet" type="text/css" href="catalog/view/smartv3/css/category.css?v=1.5.8537">

<div style="display: none;" class="referrer"><?php echo $_SERVER['HTTP_REFERER']; ?></div>

<?= $category_lading; ?>

<?php if(isset($has_products)) { ?>
<section id="category_section" <?php if($category_id == 28337) { ?> style="display: none;" <?php } ?>>


<input type="text" value="<?php echo $category_id; ?>" id="category_id" style="display:none;">
<input type="text" value="<?php echo $category_path; ?>" id="category_path" style="display:none;">

<div class="container content_in_main">

	<!-- Custom banners -->

  <?php $custom__banners = false; ?>

  <?php if ($custom__banners) { ?>
    <a href="#" class="custom__banners_desk">
        <img src="https://www.smart.md/image/data/results-photos/banners/visadecdesk.png">
    </a>

    <a href="#" class="custom__banners_mob">
        <img src="https://smart.md/image/data/results-photos/banners/visadecmob.png">
    </a>
  <?php } ?>

  <!-- Custom banners -->

	<?php if ($image) { ?>
	<div class="row">
		<div class="col s12">
			<img src="image/<?php echo $image; ?>" class="banners">
		</div>
	</div>
	<?php } ?>
	<div class="row special_padding">
		<div class="col m10 s12 demumire">
			<?php echo $content_bottom; ?>
			<?php if(!$category_lading) { ?>
			<!-- BREADCRUMB -->
			<div class="breadcrumb">
				<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<a href="<?php echo $breadcrumb['href']; ?>"> <?php echo $breadcrumb['text']; ?></a><?php echo $breadcrumb['separator']; ?>
				<?php } ?>
			</div>
			<!-- BREADCRUMB -->
			<?php } ?>
			<h1 class="heading_title_style heading_title_cat">
				<?php echo $heading_title." ($pagination_total)"; ?>
			</h1>
		</div>
		
	</div>
	
	<div visely-results-top-container></div>

	<?php if (true) { ?>
	<?php if ($category_id==412 || $category_id==437 || $category_id==414 || $category_id==440) { ?>
	<?php if ($category_id==437 || $category_id==440) { ?>
	<script type="text/javascript">
		$(document).ready(function () {
			("#search_accesoriu").attr("placeholder", "<?php echo $introdu_tablet; ?>");
		});
	</script>
	<?php } ?>
	<style type="text/css">
		.cautare_accesorii {
			display: block;
		}
	</style>
	<input type="hidden" name="categoria" id="categoria" value="<?php echo $category_id; ?>">
	<?php } else { ?>
	<style type="text/css">
		.cautare_accesorii {
			display: none;
		}
	</style>
	<?php } ?>

	

	<?php } ?>
	<!-- products block part -->

	<div class="__new_description_category">
		<?php if($description && strpos($description, '</h2>') === false) { ?>
		<span class="__new_heading_descriere_category"><?php echo $descriere_categorie; ?></span>
		<?php } ?>
		<div class="__new_description_category_content">
			<?php echo $description; ?>
		</div>
	</div>
	<div class="__new_chats_home">
		<div class="__new_chats_container">
			<div class="__new_chats_block1">
				<span class="__new_chats_title"><?php echo $hai_sa_vorbim; ?></span>
				<img src="catalog/view/smartv3/img/__new_chats/Megafon.png" alt="magazinul" />
			</div>
			<div class="__new_chats_block2">
				<a href="viber://pa?chatURI=smartclick">
					<img src="catalog/view/smartv3/img/__new_chats/Viber.png" alt="detalii in viber" />
				</a>
				<a href="https://m.me/smart.md.moldova">
					<img src="catalog/view/smartv3/img/__new_chats/Messenger.png" alt="facebook messenger" />
				</a>
				<a href="https://t.me/Smart_md_Bot">
					<img src="catalog/view/smartv3/img/__new_chats/Telegram.png" alt="scrie in telegram" />
				</a>
			</div>
		</div>
	</div>

</div>
<script>
	window.dataLayer = window.dataLayer || [];
	window.dataLayer.push({
		'section_of_website' : 'category',
		'event' : 'productcategoryview',
		<?php if(isset($categories_path)) foreach($categories_path as $key => $path){ ?>
      'prod_cat_<?=$key?>' : '<?=$path?>',
      <?php } ?>
	});
</script>
<script>
	gtag('event', 'view_item_list', {
		'send_to': 'AW-984413743',
		'dynx_pagetype': 'searchresults',
		'google_business_vertical': 'custom'
	});
</script>


<script defer src="catalog/view/smartv3/js/jquery.pjax.js?v=1.0.4"></script>
<script src="catalog/view/smartv3/js/lazyload.min.js?v=1.0.0"></script>
<script defer src="catalog/view/smartv3/js/category.js?v=1.0.291"></script>
<script>
	$('#lading_title').remove();
	$('#lading_description').remove();
	$('.heading_title_cat').appendTo('#title_cat');
	
	
		$('.custom__banners_mob').prependTo('#title_cat').css("margin-top","10px");
		$('.custom__banners_desk').prependTo('#title_cat').css("margin-top","20px");

	

	$(document).on('click', ".__new_filtreaza_mobile", function() {
		$('#aq_filter').click();
	})
</script>
</section>
<?php } ?>

<!-- END CONTENT BOTTOM edited 18.01.2023 -->




<?php echo $footer; ?>
