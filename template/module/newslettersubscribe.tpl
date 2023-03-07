<div class="box" style="position:relative;height: 0px;">
  <div class="extra-nav">
  <style>
  .extra-nav {
height: 36px;
z-index: 50;
width: 100%;
position: fixed;
bottom: 0;
left: 0;
background: #363636;
color: #fff;
line-height: 25px;
}
.button_nl {
z-index: 2;
min-width: 960px;
height: 36px;
position: relative;
margin: 0 auto;
background: #363636;
}
.button_txt_nl {float: left;position: relative;margin-left: 50px;padding: 5px 15px 0 50px;height: 30px;}
.button_txt_nl:hover {background: #4a4a4a;cursor: pointer;}
.frms_subscribe {display: block;position: absolute;margin-top: -208px;color: #000;border: 1px solid #333;background: #fff;margin-left: 50px;padding: 32px;border-top: 15px solid #333;padding-bottom: 8px;height: 153px;}
.button_sbs {margin-bottom: 20px;text-transform: lowercase !important;padding: 4px 15px 4px 15px !important; background:#333; border-radius:2px; color:#ffcc33;}
.button_sbs:hover {background:#ffcc33; color:#333;}

.frms_subscribe.hide {display: none;}
.frms_subscribe.show {display: block;}
.error {color:#F00;}
</style>
<script>
$(document).ready(function(){
    $('.toggler').live('click',function(){
      $(this).parent().children().toggle();
      $(this).parent().parent().find('.frms_subscribe').slideToggle();  
  });
});
</script>
 
  <?php 
   if($thickbox) { ?>

   <div class="button_txt_nl">
    
    	<a class="toggler" onClick="ga('send', 'event', { eventCategory: 'Newsletter', eventAction: 'Click deschide' });">
        <img src="image/bottommail_icon.png" alt="oferte telefoane mobile" style="margin-left: -49px;position: absolute;margin-top: -11px;width: 45px;z-index: 9;" /> <?php echo($text_subscribe); ?> 
        </a>
       
        <a class="toggler" onClick="ga('send', 'event', { eventCategory: 'Newsletter', eventAction: 'Click inchide' });" style="display:none;">
        <img alt="oferte telefoane mobile" src="image/bottommail_icon.png" style="margin-left: -49px;position: absolute;margin-top: -11px;width: 45px;z-index: 9;" /><?php echo($text_subscribe); ?> 
        <div style="position: absolute;margin-top: -253px;margin-left: 265px;font-size: 35px;z-index: 9;">
        <span onClick="ga('send', 'event', { eventCategory: 'Newsletter', eventAction: 'Click inchide Top' });" style="cursor:pointer;"><img alt="oferte telefoane mobile" src="image/min_sbs.jpg" width="15" height="2" /></span>
        </div>
        </a>
        
        
    </div>

  <?php }  ?>
  <?php 
   if($thickbox) { ?> <div class="frm_subscribe_hidden"> <?php } ?>
  <div class="frms_subscribe" id="frms_subscribe" style="display:none">
  
  <div style="margin-top: -18px;margin-left: 7px;padding-left:90px;line-height: 22px;"><img alt="oferte telefoane mobile" src="image/surricat_sbs.jpg" style="position: absolute;margin-left: -115px;" width="91" height="152" /><?php echo $heading_txt; ?></div>
  <form name="subscribe" id="subscribe" style="margin-left: 92px;">
  <table border="0" cellpadding="2" cellspacing="2">
   <tr>
     <td align="left" style="width: 159px;"><input onClick="ga('send', 'event', {
    eventCategory: 'Newsletter',
      eventAction: 'Introducere email'
});" type="text" value="" placeholder="email" style="width: 160px !important;max-width: 160px !important;min-width: 160px !important;" name="subscribe_email" id="subscribe_email" /></td>
   </tr>
   <?php 
     for($ns=1;$ns<=$option_fields;$ns++) {
     $ns_var= "option_fields".$ns;
   ?>
   <tr>
    <td align="left">
      <?php 
       if($$ns_var!=""){
         echo($$ns_var."&nbsp;<br/>");
         echo('<input type="text" value="" name="option'.$ns.'" id="option'.$ns.'">');
       }
      ?>
     </td>
   </tr>
   <?php 
     }
   ?>
   <tr>
     <td align="left">
     <a class="button_sbs" onclick="email_subscribe();ga('send', 'event', { eventCategory: 'Newsletter', eventAction: 'Abonat' });"><span><?php echo $entry_button; ?></span></a><?php if($option_unsubscribe) { ?>
          <a class="button" onclick="email_unsubscribe()"><span><?php echo $entry_unbutton; ?></span></a>
      <?php } ?>    
      <div id="subscribe_result" style="font-size: 14px;float: right;position: absolute;margin-top: 5px;color: #090;"></div>
     </td>
   </tr>
  
  </table>
  </form>
  </div>
  <?php if($thickbox) { ?> </div> <?php } ?>
  </div>
 

<script language="javascript">


	<?php 
  		if(!$thickbox) { 
	?>	
function email_subscribe(){
	$.ajax({
			type: 'post',
			url: 'index.php?route=module/newslettersubscribe/subscribe',
			dataType: 'html',
            data:$("#subscribe").serialize(),
			success: function(html) {

			eval(html);}});
			 
}
function email_unsubscribe(){
	$.ajax({
			type: 'post',
			url: 'index.php?route=module/newslettersubscribe/unsubscribe',
			dataType: 'html',
            data:$("#subscribe").serialize(),
			success: function (html) {
				eval(html);
			}}); 
}
   <?php }else{ ?>
function email_subscribe(){
	$.ajax({
			type: 'post',
			url: 'index.php?route=module/newslettersubscribe/subscribe',
			dataType: 'html',
            data:$("#subscribe").serialize(),
			success: function(html) {

			eval(html);}}); 
}
function email_unsubscribe(){
	$.ajax({
			type: 'post',
			url: 'index.php?route=module/newslettersubscribe/unsubscribe',
			dataType: 'html',
            data:$("#subscribe").serialize(),
			success: function (html) {
				eval(html);
				
			}}); 
}
   <?php } ?>
   
$('.fancybox_sub').fancybox({
	autoDimensions: true
});
</script>
</div>
