<?php echo $header; ?>
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/smart/stylesheet/simple.css?v=0.0.2" />
    <script type="text/javascript" src="catalog/view/javascript/simplecheckout.js?v=0.0.85"></script>
<div class="container-top">
    <div class="gpc">
    	<!-- START CONTENT TOP -->
        <div class="content-top">
            <!-- START BREADCRUMB -->
            
            <div class="breadcrumb">
            	<h2>
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                <?php } ?>
                </h2>
            </div>
            <!-- END BREADCRUMB -->
            <h1 class="page_title"><?php echo $heading_title; ?></h1>
        </div>
        <!-- END CONTENT TOP -->
    </div>
</div>