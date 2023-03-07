

<style>.simplecheckout-customer-block input{font-weight: 400;}</style>

<div class="simplecheckout-block-content formular_total_block">
<h4 class="form_heading"><?php echo $customer_action; ?></h4>
    <input type="hidden" name="<?php echo Simple::SET_CHECKOUT_CUSTOMER ?>[address_id]" id="customer_address_id" value="<?php echo $customer_address_id ?>" />
    <?php $split_previous = false; ?>
    <?php $user_choice = false; ?>
    <div class="simplecheckout-customer-block">
    <div class="<?php echo $simple_customer_two_column ? 'simplecheckout-customer-two-column-left' : 'simplecheckout-customer-one-column' ?>">
        <?php $email_field_exists = false; ?>
        <?php $i = 0; ?>
        <?php foreach ($checkout_customer_fields as $field) { ?>

            <?php if ($field['type'] == 'hidden') { ?>
                <?php continue; ?>
            <?php } else { ?>

                <?php if ($field['id'] == 'main_email') { ?>
                    <?php if (!$customer_logged) { ?>
                        <?php if (!$simple_customer_action_register &&  !$simple_customer_view_email && !$simple_customer_view_customer_type) { continue; } ?>
                        <?php $split_previous = false; ?>
                        <?php if (!($simple_customer_view_email == Simple::EMAIL_NOT_SHOW && ($simple_customer_action_register == Simple::REGISTER_NO || ($simple_customer_action_register == Simple::REGISTER_USER_CHOICE && !$register)))) { ?>
                        <?php $email_field_exists = true; ?>
                        <tr>
                            <td class="simplecheckout-customer-left">
                                <?php if ($field['required']) { ?>
                                <?php } ?>
                                <?php echo $field['label'] ?>
                            </td>
                            <td class="simplecheckout-customer-right">
                                <?php echo $simple->html_field($field) ?>
                                <?php if (!empty($field['error']) && $simple_show_errors) { ?>
                                    <span class="simplecheckout-error-text"><?php echo $field['error']; ?></span>
                                <?php } ?>
                            </td>
                        </tr>
                        <?php } ?>
                    <?php } ?>
                    <?php if ($customer_logged) { continue; } ?>
                <?php } else { ?>
                    <tr class="simple_table_row test" <?php echo !empty($field['place']) ? 'place="'.$field['place'].'"' : '' ?>>
                        <td class="simplecheckout-customer-left">
                            <?php if ($field['required']) { ?>
                              
                            <?php } ?>
                            <?php echo $field['label'] ?>
                        </td>
                        <td class="simplecheckout-customer-right">
                            <?php echo $simple->html_field($field) ?>
                            <?php if (!empty($field['error']) && $simple_show_errors) { ?>
                                <span class="simplecheckout-error-text"><?php echo $field['error']; ?></span>
                            <?php } ?>
                        </td>
                    </tr>
                    <?php $split_previous = false; ?>
                <?php } ?>
                <?php $i++; ?>
            <?php } ?>
        <?php } ?>

    </div>
    <div class="why_email" style="text-align: left;font-size: 12px;color: #b5b5b5;font-weight:400;"><?php echo $text_why_email; ?></div>
    <?php foreach ($checkout_customer_fields as $field) { ?>
        <?php if ($field['type'] == 'hidden') { ?>
        <?php echo $simple->html_field($field) ?>
        <?php } ?>
    <?php } ?>
    </div>
</div>


<?php if ($simple_debug) print_r($customer); ?>
<?php if ($simple_debug) print_r($comment); ?>