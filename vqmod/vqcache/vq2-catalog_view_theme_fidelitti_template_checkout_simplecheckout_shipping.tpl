<div class="simplecheckout-block" id="simplecheckout_shipping" <?php echo $hide ? 'data-hide="true"' : '' ?> <?php echo $display_error && $has_error ? 'data-error="true"' : '' ?>>
    <?php if ($display_header) { ?>
        <div class="checkout-heading panel-heading"><?php echo $text_checkout_shipping_method ?></div>
    <?php } ?>
    <div class="simplecheckout-warning-block" <?php echo $display_error && $has_error_shipping ? '' : 'style="display:none"' ?>><?php echo $error_shipping ?></div>
    <div class="simplecheckout-block-content">
        <?php if (!empty($shipping_methods)) { ?>
            <?php if ($display_type == 2 ) { ?>
                <?php $current_method = false; ?>
                <select data-onchange="reloadAll" name="shipping_method">
                    <?php foreach ($shipping_methods as $shipping_method) { ?>
                        <?php if (!empty($shipping_method['title'])) { ?>
                        <optgroup label="<?php echo $shipping_method['title']; ?>">
                        <?php } ?>
                        <?php if (empty($shipping_method['error'])) { ?>
                            <?php foreach ($shipping_method['quote'] as $quote) { ?>
                                <option value="<?php echo $quote['code']; ?>" <?php echo !empty($quote['dummy']) ? 'disabled="disabled"' : '' ?> <?php echo !empty($quote['dummy']) ? 'data-dummy="true"' : '' ?> <?php if ($quote['code'] == $code) { ?>selected="selected"<?php } ?>><?php 
                if (isset($quote['image']) and !empty($quote['image']) ) {
                ?>
                    <img src="<?php echo HTTP_IMAGE.$quote['image'];?>" class="1"/>
                <?php
                    echo '<span style="vertical-align:10px;">'.$quote['title'].'</span>';
                }
                else {
                    echo $quote['title'];
                }

                if (isset($quote['error']) and $quote['error'] != false and $quote['error'] != true) {
                    echo '<br/>'.$quote['error'];
                }
            
             ?><?php echo !empty($quote['text']) ? ' - '.$quote['text'] : ''; ?></option>
                                <?php if ($quote['code'] == $code) { $current_method = $quote; } ?>
                            <?php } ?>
                        <?php } else { ?>
                            <option value="<?php echo $shipping_method['code']; ?>" disabled="disabled"><?php echo $shipping_method['error']; ?></option>
                        <?php } ?>
                        <?php if (!empty($shipping_method['title'])) { ?>
                        </optgroup>
                        <?php } ?>
                    <?php } ?>
                </select>
                <?php if ($current_method) { ?>
                    <?php if (!empty($current_method['description'])) { ?>
                        <div class="simplecheckout-methods-description"><?php echo $current_method['description']; ?></div>
                    <?php } ?>
                    <?php if (!empty($rows)) { ?>
                        <?php foreach ($rows as $row) { ?>
                          <?php echo $row ?>
                        <?php } ?>
                    <?php } ?>
                <?php } ?>
            <?php } else { ?>

                <?php foreach ($shipping_methods as $shipping_method) { ?>
                    <?php if (!empty($shipping_method['title'])) { ?>
                    <p><b><?php echo $shipping_method['title']; ?></b></p>
                    <?php } ?>
                    <?php if (!empty($shipping_method['warning'])) { ?>
                        <div class="simplecheckout-error-text"><?php echo $shipping_method['warning']; ?></div>
                    <?php } ?>
                    <?php if (empty($shipping_method['error'])) { ?>
                        <?php foreach ($shipping_method['quote'] as $quote) { ?>
                            <div class="radio">
                                <label for="<?php echo $quote['code']; ?>">
                                    
                <?php if (isset($quote['error']) and $quote['error'] != false) {
                    ?><input type="radio" data-onchange="reloadAll" name="shipping_method" class="" disabled="disabled" <?php
                } else {
                ?><input type="radio" data-onchange="reloadAll" name="shipping_method" class="" <?php
                }?>
            
             <?php echo !empty($quote['dummy']) ? 'disabled="disabled"' : '' ?> <?php echo !empty($quote['dummy']) ? 'data-dummy="true"' : '' ?> value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" <?php if ($quote['code'] == $code) { ?>checked="checked"<?php } ?> />
                                    <?php if (!empty($quote['img'])) { ?>
                                        <img src="<?php echo $quote['img']; ?>" width="60" height="32" border="0" style="display:block;margin:3px;">
                                    <?php } ?>
                                    <?php 
                if (isset($quote['image']) and !empty($quote['image']) ) {
                ?>
                    <img src="<?php echo HTTP_IMAGE.$quote['image'];?>" class="2"/>
                <?php
                    if (!empty($quote['title'])) {
                        echo '<span style="vertical-align:10px;">'.$quote['title'].'</span>';
                    }
                }
                else {
                    echo !empty($quote['title']) ? $quote['title'] : '';
                }

                if (isset($quote['error']) and $quote['error'] != false and $quote['error'] != true) {
                    echo '<br/>'.$quote['error'];
                }
            
             ?><?php echo !empty($quote['text']) ? ' - ' . $quote['text'] : ''; ?>
                                </label>
                            </div>
                            <?php if (!empty($quote['description'])) { ?>
                                <div class="form-group">
                                    <label for="<?php echo $quote['code']; ?>"><?php echo $quote['description']; ?></label>
                                </div>
                            <?php } ?>
                            <?php if ($quote['code'] == $code && !empty($rows)) { ?>
                                    <?php foreach ($rows as $row) { ?>
                                      <?php echo $row ?>
                                    <?php } ?>
                            <?php } ?>
                        <?php } ?>
                    <?php } else { ?>
                        <div class="simplecheckout-error-text"><?php echo $shipping_method['error']; ?></div>
                    <?php } ?>
                <?php } ?>

            <?php } ?>
            <input type="hidden" name="shipping_method_current" value="<?php echo $code ?>" />
            <input type="hidden" name="shipping_method_checked" value="<?php echo $checked_code ?>" />
        <?php } ?>
        <?php if (empty($shipping_methods) && $address_empty && $display_address_empty) { ?>
            <div class="simplecheckout-warning-text"><?php echo $text_shipping_address; ?></div>
        <?php } ?>
        <?php if (empty($shipping_methods) && !$address_empty) { ?>
            <div class="simplecheckout-warning-text"><?php echo $error_no_shipping; ?></div>
        <?php } ?>
    </div>
</div>



 

  <div id="myDiv2">
    <p>Параграф с текстом</p>
  </div>