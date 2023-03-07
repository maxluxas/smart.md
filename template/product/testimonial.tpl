<?php echo $header; ?>
<link rel="stylesheet" href="catalog/view/smartv3/css/informations.css?v=1.1.7">
<script type="text/javascript">
  $(document).ready(function(){
    $('ul.tabs').tabs('select_tab', 'tab_id');
  });
  function view_answer(id,target) {
 //   alert('test'+target);
         $('.answer_block_'+id).toggle('show');
  }
  function add_vote(id,target) {
        $.ajax({
          type: "POST",
          url: "index.php?route=product/testimonial/add_vote",
          data:{testimonial_id:id},
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
          url: "index.php?route=product/testimonial/down_vote",
          data:{testimonial_id:id},
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
<?php
//Afisarea recenziilor lasate pe metalk
  $lkLogin = 's.banari@smart.md';
  $lkPass = 'Suricat.2018';
  $lkSite = 'vcd2v63fdfzvonijc0eby5ddnzh6x3wj';
  $lkStart = date('Y-m-d');
  $lkStop = date('Y-m-d',time()-15552000);
  $rw = json_decode(file_get_contents('https://me-talk.ru/lcabApi/online/getRates.php?login='.$lkLogin.'&password='.$lkPass.'&siteID='.$lkSite.'&start='.$lkStart.'&stop='.$lkStop));
  $reviews = $rw->data;
// End afisare recenzii metalk
?>

    <div class="info_heading"></div>
    <div class="container content_in_main contetn_in_info">
      <img src="catalog/view/smartv3/img/opinii_heding.jpg" alt="">
      <div class="col s6 mobile-view" style="margin-top: -65px;margin-left: 10px;"><a class="waves-effect waves-light btn lasa_opp_btn" href="<?php echo $write_url;?>"><?php echo $write;?></a></div>
      <section id="opinii_head">
        <div class="container content_in_main">
          <h2 class="titl_opinii opp_top_TT">
            <span><?php echo $heading_title; ?></span>
            <div class="custom_opp_line"></div>
          </h2>
          <p class="lasa_opp_txt"><?php echo $sub_title; ?></p>
          <a class="waves-effect waves-light btn lasa_opp_btn deksck_scrie_opp_butt" href="<?php echo $write_url;?>"><?php echo $write;?></a>
        </div>
      </section>
    </div>
    <section id="opinii_blocks_section">
      <div class="container content_in_main">
        <div class="row desktop-view">
          <div class="col s6" style="display:none;">
            <h2 class="titl_opinii">
              <span><?php echo $opiniile_clientilor; ?> (<?php echo $total_opinii; ?> <?php echo $nropinii; ?>)</span>
              <div class="custom_opp_line"></div>
            </h2>
            <div class="col auto_WC"  id="op_sort">
                <div id="rating_ord_dup" class="wrapper-dropdown_select" tabindex="1">
                    <span><?php echo $sorteaza; ?></span>
                    <svg class="new-svg-icon" width="14" height="14"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-keyboard_arrow_down"></use></svg>
                    <ul class="dropdown_select">
                        <li onclick="location.href='opinii_companie'"><a class="sort_date" href="index.php?route=product/testimonial"><?php echo $sortare_data; ?></a></li>
                        <li onclick="location.href='index.php?route=product/testimonial&sort=relevanta'"><a class="sort_relevanta" href="index.php?route=product/testimonial&sort=relevanta"><?php echo $sortare_relevanta; ?></a></li>
                    </ul>
                </div>
              </div>
          </div>

          <div class="col s6 opinii_row">
            <div class="row">
              <!-- <div class="bloc_lasa_opinia"> -->
                <a href="https://www.facebook.com/pg/smart.md.moldova/reviews/?ref=page_internal" target="_blank">
                  <div class="row_bloc_opinii valign-wrapper">
                    <img src="catalog/view/smartv3/img/op_new/fb_ic_new.png" class="bloc_opinii_img">
                      <div class="opinii_position">
                      <span><?php echo $opinii_fb; ?></span><br>
                      <img class="opinii_stars" src="catalog/view/smartv3/img/op_new/google+.png">
                      <span class="rating_opinii">Rating 4.7</span>
                    </div>
                  </div>
                </a>
                <a href="https://goo.gl/krMZq3" target="_blank">
                  <div class="row_bloc_opinii valign-wrapper">
                    <img src="catalog/view/smartv3/img/op_new/g_plus_new.png" class="bloc_opinii_img">
                    <div class="opinii_position">
                      <span><?php echo $opinii_g; ?></span><br>
                      <img class="opinii_stars" src="catalog/view/smartv3/img/op_new/google+.png">
                      <span class="rating_opinii">Rating  4.5</span>
                    </div>
                  </div>
                </a>
                <a href="/opinii_companie" target="_blank">
                <div class="row_bloc_opinii valign-wrapper" >
                  <img src="catalog/view/smartv3/img/suricat_msg_sfat.png" class="bloc_opinii_img">
                  <span class="opinii_position"><?php echo $opinii_site; ?></span>
                </div>
                </a>
            <!-- </div> -->
          </div>
        </div>
        <div class="row mobile-view" style="margin-bottom: 0px;">
        <div class="col s12">
            <div class="row" style="margin-bottom: 0px;">

              <div class="col op-fb-mobile">
                <a href="https://www.facebook.com/pg/smart.md.moldova/reviews/" class="waves-effect waves-light btn socials_btn" style="">
                  <svg class="new-svg-icon left facebook_ic" width="18" height="35"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-facebook"></use></svg>
                <span>|</span>
                500+ <?php echo $nropinii; ?>  •  4.7
                <svg class="new-svg-icon" width="18" height="18"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-ic_grade_black_24px"></use></svg></a>
              </div>

              <div class="col op-g-mobile">
                <a href="https://www.google.com/search?q=opinii+google+smart.md&oq=opinii+google+smart.md&aqs=chrome..69i57.7317j0j7&sourceid=chrome&ie=UTF-8#q=smart+md&lrd=0x40c97dbe8378a37f:0xc49f62f72c0d4144,1" class="waves-effect waves-red btn socials_btn_g">
                  <svg class="new-svg-icon left facebook_ic" width="18" height="35"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-gplus"></use></svg>
                <span>|</span>
                150+ <?php echo $nropinii; ?>  •  4.5
                <svg class="new-svg-icon" width="18" height="18"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-ic_grade_black_24px"></use></svg></a>
              </div>

            </div>
          </div>
        <div class="col s12">
            <h2 class="titl_opinii" style="margin-bottom: 0px;">
              <span><?php echo $opiniile_clientilor; ?> (<?php echo $total_opinii; ?> <?php echo $nropinii; ?>)</span>
              <div class="custom_opp_line"></div>
            </h2>
          </div>
        <div class="col s12">
            <div id="rating_ord_dup" class="wrapper-dropdown_select" style="" tabindex="1">
                <span><?php echo $sorteaza; ?></span>
                <svg class="new-svg-icon" width="14" height="14"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-keyboard_arrow_down"></use></svg>
                <ul class="dropdown_select">
                    <li onclick="location.href='opinii_companie'"><a class="sort_date" href="index.php?route=product/testimonial"><?php echo $sortare_data; ?></a></li>
                    <li onclick="location.href='index.php?route=product/testimonial&sort=relevanta'"><a class="sort_relevanta" href="index.php?route=product/testimonial&sort=relevanta"><?php echo $sortare_relevanta; ?></a></li>
                </ul>
            </div>
          </div>



        </div>
        <!-- Incepe sectiunea blocurilor pentru opinii -->

<!-- Recenzii metalk -->

  <style type="text/css">
    .image_opinii_chat {
      border-radius: 50%; 
      max-height: 100px; 
      background: #37474f; 
      height: 100px; 
      width: 100px; 
      padding: 20px; 
      object-fit: scale-down;
    }
    .span_opinii_chat {
      width: 100%; 
      float: left; 
      text-align: center; 
      margin-top: 5px; 
      color: #fc3;
    }
  </style>

  <section id="opinii_blocks_section">
          <?php $j=0;
            foreach ($reviews as $review) { 
              $j++;
            ?>
            <div class="Block_opinie_general sp_display">
              <div class="cont_opinie">
                <table>
                  <tr>
                    <td class="image_profile">
                          <img src="catalog/view/smartv3/images/header/chat.png" class="header_chat_btn image_opinii_chat">
                          <span class="span_opinii_chat">Opinie chat</span>
                    </td>
                    <td class="info_comm">
                      <span class="product_testimonial product_testimonials_star">
                        <?php for ($i=0; $i < $review->rate[0]; $i++) { ?>
                          <svg class="new-svg-icon" width="18" height="18"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-star"></use></svg>

                        <?php } ?>
                      </span>
                      <h2 class="name_prf" style="color:#000;">
                            <?php echo $review->client->descr; ?>
                      </h2>
                      <p class="date_post"><?php echo date("d.m.Y", strtotime($review->datetime)); ?></p>

                      <div class="coment_txt_data">
                        <p><?php echo $review->comment; ?></p>
                      </div>
                      
                    </td>
                  </tr>
                </table>
              </div>
            </div>
        <?php if($j > 20) {
          break;
        } } ?>
  </section>

<!-- End recenzii metalk -->


<?php if (isset($_GET['sort'])) { ?>
    <style type="text/css">.sort_relevanta{border-bottom:2px dotted;}</style>
<?php } else { ?>
    <style type="text/css">.sort_date{border-bottom:2px dotted;}</style>
<?php } ?>
    <style type="text/css">.reply{display:none}</style>


      <?php foreach ($testimonials as $testimonial) { ?>
        <div class="Block_opinie_general sp_display">
          <div class="cont_opinie">
            <table>
              <tr>
                <td class="image_profile">
                  <?php if ($testimonial['user_type']!="0") { ?>
                    <a href="<?php echo $testimonial['uid']; ?>" target="_blank" style="color:#333; text-decoration:none;">
                      <img src="<?php echo $testimonial['image']; ?>">
                      <?php if ($testimonial['user_type']=="1") { ?>
                      <img class="social_img" src="image/fb_logo.png" style="width: 24px;">
                      <?php } else if ($testimonial['user_type']=="3") { ?>
                      <img class="social_img" src="image/themezee_social_icons/vkontakte.png" style="">
                      <?php } else if ($testimonial['user_type']=="4") { ?>
                      <img class="social_img" src="catalog/view/smartv3/img/op_new/g_plus_new.png" style="">
                      <?php } else if ($testimonial['user_type']=="5") { ?>
                      <img class="social_img" src="image/themezee_social_icons/mailru.png">
                      <?php } ?>
                    </a>
                  <?php } else { ?>
                    <a style="color:#000;">
                      <i class="icon-user" style="font-size: 57px;color: #999;float: left;margin-left: 11px;margin-top: 5px;"></i>
                    </a>
                  <?php } ?>
                </td>
                <td class="info_comm">

                  <span class="product_testimonial product_testimonials_star">
                    <?php if ($testimonial['rating'] == 1){ ?>
                    <svg class="new-svg-icon" width="18" height="18"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-star"></use></svg>

                    <?php } ?>
                    <?php if ($testimonial['rating'] == 2){ ?>
                    <svg class="new-svg-icon" width="18" height="18"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-star"></use></svg>
                      <svg class="new-svg-icon" width="18" height="18"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-star"></use></svg>

                    <?php } ?>
                    <?php if ($testimonial['rating'] == 3){ ?>
                    <svg class="new-svg-icon" width="18" height="18"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-star"></use></svg>
                      <svg class="new-svg-icon" width="18" height="18"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-star"></use></svg>
                      <svg class="new-svg-icon" width="18" height="18"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-star"></use></svg>

                    <?php } ?>
                    <?php if ($testimonial['rating'] == 4){ ?>
                    <svg class="new-svg-icon" width="18" height="18"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-star"></use></svg>
                      <svg class="new-svg-icon" width="18" height="18"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-star"></use></svg>
                      <svg class="new-svg-icon" width="18" height="18"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-star"></use></svg>
                      <svg class="new-svg-icon" width="18" height="18"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-star"></use></svg>

                    <?php } ?>
                    <?php if ($testimonial['rating'] == 5){ ?>
                    <svg class="new-svg-icon" width="18" height="18"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-star"></use></svg>
                      <svg class="new-svg-icon" width="18" height="18"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-star"></use></svg>
                      <svg class="new-svg-icon" width="18" height="18"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-star"></use></svg>
                      <svg class="new-svg-icon" width="18" height="18"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-star"></use></svg>
                      <svg class="new-svg-icon" width="18" height="18"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-star"></use></svg>

                    <?php } ?>
                  </span>
                  <h2 class="name_prf">
                    <?php if ($testimonial['user_type']!="0") { ?>
                      <?php if ($testimonial['name']!="") { ?>
                        <a href="<?php echo $testimonial['uid']; ?>" style="color:#000;">
                        <?php echo $testimonial['name'];?> </a>
                      <?php } else { ?>
                        <a href="<?php echo $testimonial['uid']; ?>" style="color:#000;">
                        <?php echo  $testimonial['name']; ?></a>
                      <?php } ?>
                        <a href="<?php echo $testimonial['uid']; ?>" style="color:#000;"><?php echo $testimonial['city']; ?></a>
                    <?php } ?>

                  </h2>
                  <p class="date_post"><?php echo $testimonial['date_added']; ?></p>

                  <div class="coment_txt_data">
                    <h6><?php echo $testimonial['title']; ?><span>
                    </span> </h6>
                    <p><?php echo $testimonial['description'] ; ?></p>
                    <?php if(empty($testimonial['answer']) && $testimonial['answer'] !== "0" && $testimonial['answer'] !== 0) {?><?php } else { ?>
                    <div><a id="view_answer_<?php echo $testimonial['testimonial_id'];?>" onClick="view_answer(<?php echo $testimonial['testimonial_id'];?>,'answer_block_<?php echo $testimonial['testimonial_id'];?>')" class="view_answer"><?php echo $comentariu; ?> (1)</a></div>
                    <?php } ?>
                  </div>
                  <!-- Mobile Coment row -->
                  <!-- <td colspan="2" class="mobile_comm_cont"></td> -->
                  <!-- end Mobile Coment row -->
                  <div class="likes">
                  <ul class="list-inline likes_status">

                    <li class="like up_button" id="up_vote_<?php echo $testimonial['testimonial_id'];?>" onClick="add_vote(<?php echo $testimonial['testimonial_id'];?>,'count_up_<?php echo $testimonial['testimonial_id'];?>')"><span class="count_up_<?php echo $testimonial['testimonial_id'];?>"><?php echo $testimonial['up'];?></span><svg class="new-svg-icon" width="22" height="22"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-ic_thumb_up_black_24px"></use></svg></li>
                    <li class="like up_button" id="up_voted_<?php echo $testimonial['testimonial_id'];?>" style="display: none;"><span class="count_up_<?php echo $testimonial['testimonial_id'];?>"><?php echo $testimonial['up'];?></span><svg class="new-svg-icon" width="22" height="22"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-ic_thumb_up_black_24px"></use></svg></li>

                    <li class="unlike down_button" id="down_vote_<?php echo $testimonial['testimonial_id'];?>" onClick="down_vote(<?php echo $testimonial['testimonial_id'];?>,'count_down_<?php echo $testimonial['testimonial_id'];?>')"><span class="count_down_<?php echo $testimonial['testimonial_id'];?>"><?php echo $testimonial['down'];?></span><svg class="new-svg-icon" width="22" height="22"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-ic_thumb_down_black_24px"></use></svg></li>
                    <li class="unlike down_button" id="down_voted_<?php echo $testimonial['testimonial_id'];?>" style="display: none;"><span class="count_down_<?php echo $testimonial['testimonial_id'];?>"><?php echo $testimonial['down'];?></span><svg class="new-svg-icon" width="22" height="22"><use xlink:href="/catalog/view/smartv3/svg/smart-sprite.svg?#svg-icon-ic_thumb_down_black_24px"></use></svg></li>

                    <input type="text" id="testimonial_id" name="id" style="display: none;" value="<?php echo $testimonial['testimonial_id'];?>"></input>
                    <input type="text" id="count_down_<?php echo $testimonial['testimonial_id'];?>" name="count_down" style="display: none;" value="<?php echo $testimonial['down'];?>"></input>
                    <input type="text" id="count_up_<?php echo $testimonial['testimonial_id'];?>" name="count_up" style="display: none;" value="<?php echo $testimonial['up'];?>"></input>
                    <input type="text" id="answer_block_<?php echo $testimonial['testimonial_id'];?>" name="answer_block" style="display: none;" value="<?php echo $testimonial['up'];?>"></input>

                  </ul>
                </div>
                </td>
              </tr>
            </table>
          </div>
        </div>



        <?php if(empty($testimonial['answer']) && $testimonial['answer'] !== "0" && $testimonial['answer'] !== 0) {?><?php } else { ?>
        <div class="Block_opinie_general reply answer_block_<?php echo $testimonial['testimonial_id'];?>" >
          <div class="cont_opinie">
            <table>
              <tr>
                <td class="image_profile">
                  <img src="image/doinita.png" />
                </td>
                <td class="info_comm">
                  <h2 class="name_prf">Alina</h2>
                  <p class="date_post"></p>
                  <div class="coment_txt_data">
                    <p><?php echo $testimonial['answer']; ?></p>
                  </div>
                </td>
              </tr>
              <!-- Mobile Coment row -->
              <tr><td colspan="2" class="mobile_comm_cont"></td></tr>
              <!-- end Mobile Coment row -->
            </table>
          </div>
        </div>
        <?php } ?>
      <?php } ?>


      <?php if ( isset($pagination)) { ?>
        <div class="pagination desktop-view"><?php echo $pagination;?></div>
      <?php }?>



    </div>
  </section>
<script type="text/javascript">
  var Mobile = window.matchMedia( "(max-width: 680px)" );
$(document).ready(function() {
  // Custom select Box JS
  function DropDown(el) {
      this.dd = el;
      this.placeholder = this.dd.children('span');
      this.opts = this.dd.find('ul.dropdown_select > li');
      this.val = '';
      this.index = -1;
      this.initEvents();
  }
  DropDown.prototype = {
      initEvents : function() {
          var obj = this;

          obj.dd.on('click', function(event){
              $(this).toggleClass('active');
              return false;
          });

          obj.opts.on('click',function(){
              var opt = $(this);
              obj.val = opt.text();
              obj.index = opt.index();
              obj.placeholder.text(obj.val);
          });
      },
      getValue : function() {
          return this.val;
      },
      getIndex : function() {
          return this.index;
      }
  }
  var d2 = new DropDown($('#rating_ord_dup'));

  // click autside element  when you click on the window !
  $(window).click(function() {
    $('.wrapper-dropdown_select').removeClass('active');
  });

  // Appending data on mobile coment text
  $(window).on("load resize",function(){
    if (Mobile.matches) {
      $(".cont_opinie").each(function(){
        $(this).find('.mobile_comm_cont').append($(this).find('.coment_txt_data'));
      });
    }
    else{
      $(".cont_opinie").each(function(){
        $(this).find('.info_comm').append($(this).find('.mobile_comm_cont > .coment_txt_data'));
      });
    }
  });
});
</script>
<style type="text/css">
  .roistat-promo-wrap {
    display: none !important;
  }
</style>
<?php echo $footer; ?>
