<!-- START BANNER -->
<div class="global-module module-banner" style="display:none;">
  <?php foreach ($banners as $banner) { ?>
  <div>
  <?php if ($banner['link']) { ?>
  <a class="banner-shop" href="<?php echo $banner['link']; ?>" onclick="ga('send', 'event', {
    eventCategory: 'Bannere HP mini',
      eventAction: '<?php echo $banner['image']; ?>',
       eventLabel: '<?php echo $banner['link']; ?>'
});"><img class="img_promo" src="<?php echo $banner['image']; ?>" /></a>
  <?php } else { ?>
  <img class="img_promo" class="banner-shop" src="<?php echo $banner['image']; ?>" />
  <?php } ?>
  </div>
  <?php } ?>
</div>
<!-- END BANNER -->

<div class="row" style="margin-bottom:150px;">
  <?php foreach ($banners as $banner) { ?>
  <?php if ($banner['link']) { ?>
    <div class="col s12 m6">
      <div class="card">
        <div class="card-image">
          <a class="banner-shop" href="<?php echo $banner['link']; ?>">
          <img class="img_promo" src="<?php echo $banner['image']; ?>" />
          </a>

          <a class="banner-shop" href="<?php echo $banner['link']; ?>"><span class="card-title"></span></a>
        </div>
        <div class="card-content" style="display:none;">
          <p><?php echo $banner['title']; ?></p>
        </div>
        <div class="card-action">
          <a class="banner-shop" href="<?php echo $banner['link']; ?>"><?php echo $text_ofeta; ?></a>
        </div>
      </div>
    </div>
    <?php } } ?>
</div>
