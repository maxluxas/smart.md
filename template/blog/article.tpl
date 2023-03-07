<?php echo $header; ?>

<link rel="stylesheet" href="catalog/view/smartv3/css/category-landing.css?v=0.0.50"/>

<style>

	.article__container h1, .heading_title_style {
	font-size: 36px;
	}
	.article__container h2 {
	font-size: 33px;
	}
	.article__container p {
	font-size: 14px;
	}
	.article__banner {
		display: flex;
		justify-content: center;
		padding: 20px;
	}
	.breadcrumb {
		display: block;
	}

</style>


<div class="container content_in_main article__container">
	<!-- BREADCRUMB -->
	<div class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<span>
		<?php echo $breadcrumb['separator']; ?>
	</span>

		<a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>
	<!-- BREADCRUMB -->

	<div style="display: none;" class="referrer"><?php echo $_SERVER['HTTP_REFERER']; ?></div>
	<h1 class="heading_title_style heading_title_cat"><?=$heading_title?></h1>
	<div class="row">
		<div class="article__banner">
			<img src="<?=$image?>" alt="<?=$heading_title?>">
		</div>

		<div>
			<?=$description?>
		</div>
	</div>
</div>



<?php echo $footer; ?>
