<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
  <?php echo $content_top; ?>
  <div class="breadcrumb">
	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
	<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
	<?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <?php if ($image) { ?>
  <div style="text-align:center;width:100%;">
  <img src="<?php echo $image; ?>" alt="<?php echo $heading_title; ?>" />
  </div>
  <?php } ?>
  <p><?php echo $description; ?></p> 
</div>
<?php echo $content_bottom; ?>
<?php echo $footer; ?>