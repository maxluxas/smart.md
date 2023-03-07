<?php if ($show_similar) { ?>
<style type="text/css">
<?php if ($lazy_load) { ?>
.similar_container{position:relative;width:100%;height:200px;overflow:hidden;}
<?php } else { ?>
.similar_container{position:relative;width:100%;overflow:hidden;}
<?php } ?>
.similar_overlay{width:100%;height:100%;position:absolute;top:0;left:0;z-index:1000;display:none;background-color:#ffffff;}
.similar_list{background-color:#ffffff;}
.upper_layer{z-index:999;}
.lower_layer{z-index:998;}
.div_table{display:table;width:100%;height:100%;}
.div_table_cell{display:table-cell;vertical-align:middle;text-align:center;}
.div_table_cell img{display:inline;}
.no_bottom_margin{margin-bottom:0px !important;}
.similar_product{margin-right:9px !important;margin-left:10px !important;}
</style>
<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <div id="similar_container" class="similar_container">
      <div id="similar_overlay" class="similar_overlay">
        <div class="div_table">
          <div class="div_table_cell"><img src="catalog/view/theme/default/image/loading_similar.gif" /></div>
        </div>
      </div>
      <div class="lower_layer similar_list" id="similar_products"><?php echo $similar; ?></div>
    </div>
  </div>
</div>
<script type="text/javascript">
var ajax_error_msg = '<?php echo $error_ajax_request; ?>';
(function(c,q){var m="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///ywAAAAAAQABAAACAUwAOw==";c.fn.imagesLoaded=function(f){function n(){var b=c(j),a=c(h);d&&(h.length?d.reject(e,b,a):d.resolve(e));c.isFunction(f)&&f.call(g,e,b,a)}function p(b){k(b.target,"error"===b.type)}function k(b,a){b.src===m||-1!==c.inArray(b,l)||(l.push(b),a?h.push(b):j.push(b),c.data(b,"imagesLoaded",{isBroken:a,src:b.src}),r&&d.notifyWith(c(b),[a,e,c(j),c(h)]),e.length===l.length&&(setTimeout(n),e.unbind(".imagesLoaded",
p)))}var g=this,d=c.isFunction(c.Deferred)?c.Deferred():0,r=c.isFunction(d.notify),e=g.find("img").add(g.filter("img")),l=[],j=[],h=[];c.isPlainObject(f)&&c.each(f,function(b,a){if("callback"===b)f=a;else if(d)d[b](a)});e.length?e.bind("load.imagesLoaded error.imagesLoaded",p).each(function(b,a){var d=a.src,e=c.data(a,"imagesLoaded");if(e&&e.src===d)k(a,e.isBroken);else if(a.complete&&a.naturalWidth!==q)k(a,0===a.naturalWidth||0===a.naturalHeight);else if(a.readyState||a.complete)a.src=m,a.src=d}):
n();return d?d.promise(g):g}})(jQuery);
<?php if ($lazy_load) { ?>
jQuery.fn.bullseye=function(a,b){function f(a){a.data(c,false)}function e(a){a.data(c,true)}function d(a){return a.data(c)}a=jQuery.extend({offsetTop:0,offsetHeight:0,extendDown:false},a);var c="is-focused";return this.each(function(){var c=$(this),g=$(b==null?window:b);var h=function(){var b=c.outerWidth(),h=c.outerHeight()+a.offsetHeight,i=g.width(),j=g.height(),k=g.scrollTop(),l=g.scrollLeft(),m=l+b,n=k+j,o=c.offset().left,p=o+b,q=c.offset().top+a.offsetTop,r=q+h;var s=function(){if(!d(c)){e(c);c.trigger("enterviewport")}};var t=function(){if(d(c)){f(c);c.trigger("leaveviewport")}};if(n<q||(a.extendDown?false:k>r)||m<o||m>p)t();else s()};g.scroll(h).resize(h);h()})}
$(document).ready(function(){<?php if ($content) { ?>$('#similar_products').bind('enterviewport',function(e){get_similar_products('index.php?route=module/similar_products/get&product_id=<?php echo $product_id; ?><?php echo $path; ?>');$('#similar_products').unbind('enterviewport');}).bullseye();
<?php } else { ?>get_similar_products('index.php?route=module/similar_products/get&product_id=<?php echo $product_id; ?><?php echo $path; ?>');<?php } ?>});
<?php } ?>
function get_similar_products(e){$.ajax({type:"GET",url:e,dataType:"html",beforeSend:function(){$("#similar_overlay").fadeTo(300,.8)},success:function(e,t,n){update_similar(e,false)},error:function(e,t,n){var r=ajax_error_msg+e.status+" "+e.statusText;update_similar(r,true)}})}function update_similar(e,t){var n;$("#similar_products").clone().attr("id","file_list_clone").css({height:"100%",width:"100%",position:"absolute",top:0,left:0}).removeClass("lower_layer").addClass("upper_layer").appendTo("#similar_container");if(!t){n=$("#similar_products").html(e).removeClass("warning").removeClass("no_bottom_margin").outerHeight(true)}else{n=$("#similar_products").html(e).addClass("warning").addClass("no_bottom_margin").outerHeight(true)}$("#similar_products").fadeOut(0);$("#similar_products").imagesLoaded(function(e,t,r){n=$("#similar_products").outerHeight(true);$("#file_list_clone").fadeOut(function(){$(this).remove()});$("#similar_container").animate({height:n+"px"},400,"linear",function(){$("#similar_products").fadeIn();$("#similar_overlay").fadeOut();$("#file_list_clone").remove()})})}$("#similar_products .pagination a").live("click",function(){$("#similar_container").css("height",$("#similar_products").outerHeight(true)+"px");get_similar_products(this.href);return false})
</script>
<?php } ?>