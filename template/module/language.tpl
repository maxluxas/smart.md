<? if (count($languages) > 1): ?>
<form style="margin-bottom: 0px;" action="<?=$action?>" method="post" enctype="multipart/form-data">
    
    <div id="language">
        <? foreach ($languages as $language): ?>
        <? if ($language['code'] == $language_code): ?>
        <? else: ?>
        	<img onclick="$('input[name=\'language_code\']').attr('value', '<?=$language['code']?>'); $(this).parent().parent().submit();" class="__new_language_mobile_img" src="catalog/view/smartv3/img/__new_header/flag.png" alt="stoc">
     		<p onclick="$('input[name=\'language_code\']').attr('value', '<?=$language['code']?>'); $(this).parent().parent().submit();"><?=$language['name']?><p>
        <? endif; ?>
        <? endforeach; ?>
    </div>
<input type="hidden" name="language_code" value="" />
<input type="hidden" name="redirect" value="<?=$redirect?>" />
</form>
<? endif; ?>