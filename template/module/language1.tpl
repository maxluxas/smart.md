<?php if (count($languages) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    
    <div id="language" class="options-responsive" style="position: absolute;margin-top: 26px;border-radius: 23px;background: #000;width: 22px;padding-left: 5px;padding-top: 4px;height: 23px;">
        <?php foreach ($languages as $language) { ?>
        <?php if ($language['code'] == $language_code) { ?>
        <?php } else { ?>
     <a style="color:#ffcc33; font-size:14px; font-weight:bold;" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $(this).parent().parent().submit();"><?php echo $language['name']; ?></a>
        <?php } ?>
        <?php } ?>
    </div>
<input type="hidden" name="language_code" value="" />
<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
<?php } ?>