<?php echo $header; ?>

<link rel="stylesheet" href="catalog/view/smartv3/css/category-landing.css?v=0.0.50"/>

<style>

	.post_blog_title {
		font-size: 45px;
		border: 0;
		font-weight: 400;
		margin-top: 10px;
		margin-bottom: 30px;
		color: #4f6472;
	}
	.post_description {
		color: #4f6472;
	}
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
	.post_image {
		max-width: 300px;
		width: 100%;
		margin: 10px;
		display: flex;
		align-items: center;
		justify-content: center;
	}

	.post_image img {
		width: 100%;
		padding: 15px;
	}
	.post_excerpt {
		width: 100%;
		margin-left: 20px;
	}
	.post_link {
		max-height: 300px;
		margin-bottom: 30px;
		border: 2px solid #8c8c8c;
		border-radius: 10px;
		background: #fff;
		padding: 15px 20px;
		display: flex;
		align-items: center;
		justify-content: center;
		cursor: pointer;
		position: relative;
		transition: .13s linear all;
		-o-transition: .13s linear all;
		-webkit-transition: .13s linear all;
		-moz-transition: .13s linear all;
	}

	.post_link:hover {
		box-shadow: 0 0 14px 3px #d7d7d7;
	}
	@media screen and (max-width: 1000px) {
		.post_link {
			flex-flow: column;
			max-height: none;
			align-items: center;
		}
		.post_excerpt {
			padding: 10px;
			margin-left: 0px;
		}
		.post_image {
			max-width: none;
		}
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
	<?php if($articles) { foreach($articles as $article) { ?>
	<div class="col-md-6">
		<a href="<?=$article['href']?>" class="post_link">
			<?php if(isset($article['image'])) {  ?>
			<picture class="post_image">
				<img src="<?php echo $article['image'] ?? $default_image  ?>">
			</picture>
			<?php } ?>
			<div class="post_excerpt">
				<h2 class="post_blog_title"><? echo $article['title'] ?></h2>
				<div class="post_description">
					<?=$article['excerpt']?>
				</div>
			</div>
		</a>
	</div>
	<?php }} ?>
	<div class="row">

	</div>
</div>



<?php echo $footer; ?>
