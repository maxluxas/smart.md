<?php if ($reviews) { ?>

<script type="text/javascript">
  $(document).ready(function(){
    $('ul.tabs').tabs('select_tab', 'tab_id');
    $('.materialboxed').materialbox();
  });
  function add_vote(id,target) {
        $.ajax({
          type: "POST",
          url: "index.php?route=product/product/add_vote",
          data:{review_id:id},
          success: function (data) {
            console.log("up_vote_"+id);
            //  $("#vote_tks").show();
              $("#up_vote_"+id).hide();
              $("#down_vote_"+id).hide();
              $("#up_voted_"+id).show();
              $("#down_voted_"+id).show();
              $("#up_voted_"+id+" i").css( "color", "green" );
              $("#up_voted_"+id+" span").css( "color", "green" );
              $("#down_voted_"+id+" span").css( "color", "red" );

              var counter =$("#count_up_"+id).val();
              counter++;
              $(".count_up_"+id).text(counter);
          }
        });
  }
  function down_vote(id,target) {
        $.ajax({
          type: "POST",
          url: "index.php?route=product/product/down_vote",
          data:{review_id:id},
          success: function (data) {
            console.log("up_vote_");
            //  $("#vote_tks").show();
              $("#up_vote_"+id).hide();
              $("#down_vote_"+id).hide();
              $("#up_voted_"+id).show();
              $("#down_voted_"+id).show();
              $("#down_voted_"+id+" i").css( "color", "red" );
              $("#up_voted_"+id+" span").css( "color", "green" );
              $("#down_voted_"+id+" span").css( "color", "red" );
              var counter =$("#count_down_"+id).val();
              counter++;
              $(".count_down_"+id).text(counter);
          }
        });
      }
</script>
<?php foreach ($reviews as $review) { ?>
  <div class="row com_rec">
    <div class="clo s12  hr_line_coment"> <hr> </div>
    <div class="col m2 l2 s3 img_com_cont">
      <div class="prof_pic_cont1" style="text-align:center;">
        <?php if ($review['user_type']!="0") { ?>
              <a href="<?php echo $review['profile_url']; ?>" target="_blank" style="color:#333; text-decoration:none;">
              <img src="<?php echo $review['image_fb']; ?>" class="prof_pic_cont" width="105" height="105" style="" />
          <?php if ($review['user_type']=="1") { ?>
              <img class="socil_ico" src="catalog/view/smartv3/img/fb_ic.png" alt="Facebook">
          <?php } else if ($review['user_type']=="3") { ?>
              <img class="socil_ico" src="//www.smart.md/image/themezee_social_icons/vkontakte.png" />
          <?php } else if ($review['user_type']=="4") { ?>
              <img class="socil_ico" src="//www.smart.md/image/themezee_social_icons/google.png" />
          <?php } else if ($review['user_type']=="5") { ?>
              <img class="socil_ico" src="//www.smart.md/image/themezee_social_icons/mailru.png" />
          <?php } ?>
            </a>
        <?php } else { ?>
              <a style="color:#000;">
                <i class="iicon-person UNK_user_profiel" style="font-size: 57px;color: #999;"></i>
              </a>
        <?php } ?>
      </div>
    </div>
    <div class="col l10 s9 mob_com_top_inf">
      <h2 class="name_prf"><?php echo $review['author']; ?></h2>
      <span class="label label-default puten_rg">
        <?php echo $review['rating']; ?> <i class="iicon-ic_grade_black_24px"></i>
      </span>
      <p class="date_post"><?php echo $review['city']; ?><?php if ($review['city']) { ?>, <?php } ?><?php echo $review['date_added']; ?></p>
      <ul class="list-inline likes_status">
        <li class="like up_button" id="up_vote_<?php echo $review['review_id'];?>" onClick="add_vote(<?php echo $review['review_id'];?>,'count_up_<?php echo $review['review_id'];?>')"><span class="count_up_<?php echo $review['review_id'];?>"><?php echo $review['up'];?></span> <i class="iicon-ic_thumb_up_black_24px"></i></li>
        <li class="like" id="up_voted_<?php echo $review['review_id'];?>" class="up_button" style="display: none;"><span class="count_up_<?php echo $review['review_id'];?>"><?php echo $review['up'];?></span><i class="iicon-ic_thumb_up_black_24px"></i></li>

        <li class="unlike" id="down_vote_<?php echo $review['review_id'];?>" onClick="down_vote(<?php echo $review['review_id'];?>,'count_down_<?php echo $review['review_id'];?>')" class="down_button"><span class="count_down_<?php echo $review['review_id'];?>"><?php echo $review['down'];?></span><i class="iicon-ic_thumb_down_black_24px"></i></li>
        <li class="unlike" id="down_voted_<?php echo $review['review_id'];?>" class="down_button" style="display: none;"><span class="count_down_<?php echo $review['review_id'];?>"><?php echo $review['down'];?></span><i class="iicon-ic_thumb_down_black_24px"></i></li>
        <input type="text" id="count_down_<?php echo $review['review_id'];?>" name="count_down" style="display: none;" value="<?php echo $review['down'];?>"></input>
        <input type="text" id="count_up_<?php echo $review['review_id'];?>" name="count_up" style="display: none;" value="<?php echo $review['up'];?>"></input>
      </ul>
    </div>
  </div>

        <script type="text/javascript">
          $(document).ready(function(){
            var inputc = document.getElementById('inputG').value;
            var outputc = emojione.shortnameToImage(inputc);
            document.getElementById('outputG').innerHTML = outputc;

            var inputc = document.getElementById('inputText').value;
            var outputc = emojione.shortnameToImage(inputc);
            document.getElementById('outputText').innerHTML = outputc;

            var input = document.getElementById('inputB').value;
            var output = emojione.shortnameToImage(input);
            document.getElementById('outputB').innerHTML = output;
          });
        </script>

  <!--Coment section from boottom-->
  <div class="row comment_row">
    <div class="col m2 l2 s3 comment_dot" style="opacity: 0;">.</div>
    <div class="col m10 l10 detalii_comment animated c1">
      <?php if ($review['goods']){?>
      <h4 class="tema_baz hgoods">
         <span style="float:left;padding-right:5px;"><?php echo $pro_comment; ?>:</span>
        <input type="text" style="display:none;" id="inputG" name="inputG" value="<?php echo $review['goods']; ?>">
        <?php if (strpos($review['goods'], ':') !== false) { ?> 
        <p class="extend_comm" id="outputG" style="float:none;padding-top:0px; position: relative; top: -1px;"></p>
        <?php } else { ?>
        <p class="extend_comm" id="outputG" style="float:none;padding-top:0px; position: relative; top: -1px;"><?php echo $review['goods']; ?></p>
        <?php } ?>
        <!--script type="text/javascript">
          $(document).ready(function(){
            var input = $('#inputG').value;
            var output = emojione.shortnameToImage(input);
            $('#outputG').innerHTML = output;
          });
        </script-->
      </h4>
      <?php } ?>
      <?php if ($review['bads']){?>
      <h4 class="tema_baz hbads">
        <span style="float:left;padding-right:5px;"><?php echo $contra_comment; ?>:</span> 
        <input type="text" style="display:none" id="inputB" name="inputB" value="<?php echo $review['bads']; ?>">
        <?php if (strpos($review['bads'], ':') !== false) { ?> 
        <p class="extend_comm" id="outputB" style="float:none;padding-top:0px;  position: relative; top: -1px;"></p>
        <?php } else { ?>
        <p class="extend_comm" id="" style="float:none;padding-top:0px;  position: relative; top: -1px;"><?php echo $review['bads']; ?></p>
        <?php } ?>
        <!--script type="text/javascript">
          $(document).ready(function(){
            var input = $('#inputB').value;
            var output = emojione.shortnameToImage(input);
            $('#outputB').innerHTML = output;
          });
        </script-->
      </h4>
      <?php } ?>
      <?php if ($review['text']){?>
      <h4 class="tema_baz hcomment">
         <span style="float:left;padding-right:5px;"><?php echo $text_comment; ?>:</span>

        <input type="hidden" id="inputText" name="inputText" value="<?php echo $review['text']; ?>">
        <?php if (strpos($review['text'], ':') !== false) { ?> 
        <p class="extend_comm" id="outputText" style="float:none;padding-top:0px;  position: relative; top: -1px;"></p>
        <?php } else { ?>
        <p class="extend_comm" id="outputText" style="float:none;padding-top:0px;  position: relative; top: -1px;"><?php echo $review['text']; ?></p>
        <?php } ?>
        <!--script type="text/javascript">
          $(document).ready(function(){
            var input = $('#inputText').value;
            var output = emojione.shortnameToImage(input);
            $('#outputText').innerHTML = output;
          });
        </script-->
      
        <?php if(empty($review['answer']) && $review['answer'] !== "0" && $review['answer'] !== 0) {?><?php } else { ?>
        <div class="row" style="background:#e2e2e2;padding:10px;">
        <div class="col m1 s5"><img src="image/doinita.png" style="width:35px;height:35px;border-radius:20px" /><br><span style="font-size:12px;color:#000;">Alina</span></div>
        <div class="col m11 s5" style="color:#000;font-size:14px;"><?php echo $review['answer']; ?></div>
        </div>
        <?php } ?>
      </h4>
      <?php } ?>
      <?php if ($review['img_path1'] && $review['img_path1'] !== 'undefined'){?>
      <h4 class="tema_baz">
        <b>Galerie:</b> <br class="spacer">
        <ul class="cropped-images">
        <li>
        <a href="image/comment/<?php echo $review['img_path1']; ?>">
        <img class="" src="image/comment/<?php echo $review['img_path1']; ?>" width="75"></a>
        </li>
        <?php if ($review['img_path2'] && $review['img_path2'] !== 'undefined'){?>
        <li>
        <a href="image/comment/<?php echo $review['img_path2']; ?>">
        <img class="" src="image/comment/<?php echo $review['img_path2']; ?>" alt="Photo"></a>
        </li>
        <?php } ?>
        <?php if ($review['img_path3'] && $review['img_path3'] !== 'undefined'){?>
        <li>
        <img class="" src="image/comment/<?php echo $review['img_path3']; ?>" alt="Photo">
        </li>
        <?php } ?>
        <?php if ($review['img_path4'] && $review['img_path4'] !== 'undefined'){?>
        <li>
        <img class="" src="image/comment/<?php echo $review['img_path4']; ?>" alt="Photo">
        </li>
        <?php } ?>
        <?php if ($review['img_path5'] && $review['img_path5'] !== 'undefined'){?>
        <li>
        <img class="" src="image/comment/<?php echo $review['img_path5']; ?>" alt="Photo">
        </li>
        <?php } ?>
        </ul>
      </h4>
      <?php } ?>
    </div>
  </div>
  
<?php } ?>
<script type="text/javascript" src="https://feimosi.github.io/baguetteBox.js/js/baguetteBox.js"></script>
<script type="text/javascript" src="https://feimosi.github.io/baguetteBox.js/js/plugins.js"></script>
<link rel="stylesheet" href="https://feimosi.github.io/baguetteBox.js/css/baguetteBox.css">
<script>
window.onload = function() {
    if (typeof oldIE === 'undefined' && Object.keys) {
        hljs.initHighlighting();
    }

    baguetteBox.run('.cropped-images');
};
</script>
<style type="text/css">
  .cropped-images li {
    width: 80px;
    height: 80px;
    display: inline-block;
    vertical-align: top;
  }
  .cropped-images li img {
    object-fit: cover;
    width:80px;
    height:80px;
  }
</style>
<div class="pagination"><?php echo $pagination; ?></div>
<?php } ?></div>
