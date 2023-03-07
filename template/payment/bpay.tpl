<div class="agreement-content" style="color: #9e9e9e;font-size: 12px;margin-bottom: 10px;">
	<?php echo $text_license_agreement; ?>
</div>
<div class="content" id="payment">
  <table class="form">

  </table>
</div>
<form action="<?php echo $action; ?>" method="post">
  <input type="hidden" name="data" value="<?php echo $data; ?>" />
  <input type="hidden" name="key" value="<?php echo $sign; ?>" />
<div class="buttons">
  <div class="right">
     <input type="submit" value="<?php echo $button_confirm; ?>" class="button" />
  </div>
</div>
</form>
