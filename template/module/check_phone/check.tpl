<div id="confirm-sms-box">
	<?php if($is_expired) { ?>
		<h2 id="confirm-sms-header"><?= $text_ne_pare_rau; ?></h2>
		<div id="g-recaptcha-confirm-phone" class="g-recaptcha" data-callback="gRecaptchaSubmitConfirm" data-sitekey="<?= RECAPTCHA_CONFIRM_PUBLIC; ?>"></div>
		<style>
			#g-recaptcha-confirm-phone {
				margin-top: 10px;
			}
			#g-recaptcha-confirm-phone > div {
				margin: 0 auto;
			}
		</style>

		<h2 id="confirm-sms-header-or"><?= $text_sau; ?></h2>
		<div class="__new_chats_block_sms">
			<a href="viber://pa?chatURI=smartclick">
				<img src="/catalog/view/smartv3/img/__new_chats/Viber.png" alt="detalii in viber">
			</a>
			<a href="https://m.me/smart.md.moldova">
				<img src="/catalog/view/smartv3/img/__new_chats/Messenger.png" alt="facebook messenger">
			</a>
			<a href="https://t.me/Smart_md_Bot">
				<img src="/catalog/view/smartv3/img/__new_chats/Telegram.png" alt="scrie in telegram">
			</a>
		</div>
	<?php } else { ?>
		<h2 id="confirm-sms-header"><?= $text_introduceti_codul; ?></h2>
		<input type="text" name="code" id="confirm-sms-phone" autocomplete="off">
		<div id="confirm-sms-buttons">
			<button id="confirm-sms-ok"><?= $text_confirma; ?></button>
			<p id="expire-sms-message" style="display: none;"><?= $text_codul_expira_in; ?> <span id="resend-sms-timer"></span></p>
		</div>
	<?php } ?>
</div>