<?php echo $header; ?>
<div class="container-top">
    <div class="gpc">
    	<!-- START CONTENT TOP -->
        <div class="content-top">
            <!-- START BREADCRUMB -->
            <h1 class="page_title"><?php echo $heading_title; ?></h1>
            <div class="breadcrumb">
            	<h2>
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                <?php } ?>
                </h2>
            </div>
            <!-- END BREADCRUMB -->
        </div>
        <!-- END CONTENT TOP -->
    </div>
</div>
<div class="container-bottom">
    <div class="gpc">

<?php
 
$ref=$_SERVER['HTTP_REFERER'];
$ref_site = parse_url($ref, PHP_URL_HOST);
 
if (preg_match("/l.facebook.com/i" , $ref_site))
{
echo "Hello FB visitor!";
} elseif (preg_match("/google.com/i" , $ref_site)) {
echo "Hello Google visitor!";
} else {

}
 
?>



<script type="text/javascript">
    function setCookie(c_name, value, exdays) {
        var exdate = new Date();
        exdate.setDate(exdate.getDate() + exdays);
        var c_value = escape(value) + ((exdays == null) ? "" : "; expires=" + exdate.toUTCString());
        document.cookie = c_name + "=" + c_value;
    }
    function getCookie(c_name) {
        var i, x, y, ARRcookies = document.cookie.split(";");
        for (i = 0; i < ARRcookies.length; i++) {
            x = ARRcookies[i].substr(0, ARRcookies[i].indexOf("="));
            y = ARRcookies[i].substr(ARRcookies[i].indexOf("=") + 1);
            x = x.replace(/^\s+|\s+$/g,"");
            if (x == c_name) {
                return unescape(y);
            }
        }
    }

    $(document).mousemove(function(e){
    if( e.target.id === 'top_bar'){
        $('#modal1').modal('open');
        var popupamo = getCookie("popup");
        if (popupamo == null || popupamo == "") {
            setCookie("popup", "1", 30);
         //   $('#modal1').modal('open');
            $( document ).ready(function() {
                $.post(
                    "https://www.google-analytics.com/collect",
                    {
                        v: '1',
                        tid: 'UA-41587863-1',
                        cid: 'popup-abonare',
                        t: 'event',
                        ec: 'popup-abonare',
                        ea: 'Aparut',
                        cd1: '3'
                    },
                    onAjaxSuccess
                );
                function onAjaxSuccess() {
                }
            });
        } else {
          //  alert('cookie installed already');
        }
    }
    });
  function add_amo_popup() {
      //amo contact
      var cname = {
        productname: $("input[name$='produs']").val() + ' (Abonare PopUP)',
              price:$("input[name$='suma']").val(),
              name: $("#camoname").val(),
              phone:$("#camoemail").val(),
              email:$("#cpopemail").val(),
              status_id: '13557009',
              web: 'Abonare PopUp'
      }
      $.ajax({
        url: '//www.smart.md/amocrm/handler.php',
        type: 'post',
        dataType: 'json',
        success: function (data) {
        },
        data: cname
      });
       $('.succes-abon-amo').show();
       $('.succes-abon-popup').hide();
       $('.close-final').show();
      }
      function add_email_popup() {
      $.ajax({
        url: '//www.smart.md/amocrm/mailchimp-pop.php',
        type: 'POST',
        data: {
          email: $("#cpopemail").val(),
          fname: $("#cpopname").val(),
          lname: $("input[name$='produs']").val()
        },
        success: function(data){
          $('.error-abon-popup').show();
          if(data.indexOf("Invalid") > -1) {
          $('.error-abon-popup').html('Adresa de email nu este corecta').css('color', 'red');
          } else if(data.indexOf('is already') > -1) {
          $('.error-abon-popup').html('Deja esti abonat.').css('color', '#000');
          } else if(data.indexOf('Got it') > -1) {
          $('.succes-abon-popup').show(); 
          $('.mituri').hide();
          $('.error-abon-popup').hide();
          var fiveMinutes = 60 * 5,
          display = document.querySelector('#time');
          startTimer(fiveMinutes, display);
          }
        },
        error: function() {
          $('.error-abon-popup').html('Sorry, an error occurred.').css('color', 'red');
        }
      });
      }
    function startTimer(duration, display) {
        var timer = duration, minutes, seconds;
        setInterval(function () {
            minutes = parseInt(timer / 60, 10);
            seconds = parseInt(timer % 60, 10);
            minutes = minutes < 10 ? "0" + minutes : minutes;
            seconds = seconds < 10 ? "0" + seconds : seconds;
            display.textContent = minutes + ":" + seconds;
            if (--timer < 0) {
                timer = duration;
            }
        }, 1000);
    }
    
  </script>

<style>#zile, #ore, #minute, #secunde {font-size: 26px;}#modal1{top: 20% !important;overflow: hidden;}.spray-abonare{margin-top:0px !important;}.spray-abonare,.spray-abonare i {opacity:1 !important;}button.spray-abonare{background: #ffcc33;color: #fff;}input.spray-abonare{width: 80% !important;float: right;}@media screen and (max-width: 600px){.abon_title{font-size:18px;}.abon_subtitle{font-size: 14px;}input.spray-abonare{width: 67% !important;}</style>
<?php echo $popup_abonare; ?>













    	<?php echo $column_left; ?>
        <?php echo $column_right; ?>
        <!-- START COLUMN CENTER -->
        <div class="column-center">
            <?php echo $content_top; ?> 
            <!-- START SITE MAP PAGE -->
        	<div class="sitemap-page">
                <div class="sitemap-info">
                <div class="left">
                  <ul>
                    <?php foreach ($categories as $category_1) { ?>
                    <li><a href="<?php echo $category_1['href']; ?>" title="<?php echo $category_1['name']; ?>"><?php echo $category_1['name']; ?></a>
                      <?php if ($category_1['children']) { ?>
                      <ul>
                        <?php foreach ($category_1['children'] as $category_2) { ?>
                        <li><a href="<?php echo $category_2['href']; ?>" title="<?php echo $category_2['name']; ?>"><?php echo $category_2['name']; ?></a>
                          <?php if ($category_2['children']) { ?>
                          <ul>
                            <?php foreach ($category_2['children'] as $category_3) { ?>
                            <li><a href="<?php echo $category_3['href']; ?>" title="<?php echo $category_3['name']; ?>"><?php echo $category_3['name']; ?></a></li>
                            <?php } ?>
                          </ul>
                          <?php } ?>
                        </li>
                        <?php } ?>
                      </ul>
                      <?php } ?>
                    </li>
                    <?php } ?>
                  </ul>
                </div>
                <div class="right">
                  <ul>
                    <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                    <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
                      <ul>
                        <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
                        <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
                        <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
                        <li><a href="<?php echo $history; ?>"><?php echo $text_history; ?></a></li>
                        <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                      </ul>
                    </li>
                    <li><a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a></li>
                    <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
                    <li><a href="<?php echo $search; ?>"><?php echo $text_search; ?></a></li>
                    <li><?php echo $text_information; ?>
                      <ul>
                        <?php foreach ($informations as $information) { ?>
                        <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                        <?php } ?>
                        <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                      </ul>
                    </li>
                  </ul>
                </div>
                </div>
            </div>
            <!-- END SITE MAP PAGE -->
        </div>
        <!-- END COLUMN CENTER -->
    	<!-- START CONTENT BOTTOM -->
        <div class="content-bottom">
            <?php echo $content_bottom; ?>
        </div>
        <!-- END CONTENT BOTTOM -->
    </div>
</div>
<?php echo $footer; ?>