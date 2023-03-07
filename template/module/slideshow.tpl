<script src="/catalog/view/smartv3/js/jssor.slider-27.5.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
    jssor_1_slider_init = function() {

        var jssor_1_SlideoTransitions = [
          [{b:-1,d:1,o:-0.7}],
          [{b:900,d:2000,x:-379,e:{x:7}}],
          [{b:900,d:2000,x:-379,e:{x:7}}],
          [{b:-1,d:1,o:-1,sX:2,sY:2},{b:0,d:900,x:-171,y:-341,o:1,sX:-2,sY:-2,e:{x:3,y:3,sX:3,sY:3}},{b:900,d:1600,x:-283,o:-1,e:{x:16}}]
        ];

        var jssor_1_options = {
          $AutoPlay: 1,
          $SlideDuration: 2000,
          $SlideEasing: $Jease$.$OutQuint,
          $CaptionSliderOptions: {
            $Class: $JssorCaptionSlideo$,
            $Transitions: jssor_1_SlideoTransitions
          },
          $ArrowNavigatorOptions: {
            $Class: $JssorArrowNavigator$
          },
          $BulletNavigatorOptions: {
            $Class: $JssorBulletNavigator$
          }
        };

        var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

        var MAX_WIDTH = 3000;

        function ScaleSlider() {
            var containerElement = jssor_1_slider.$Elmt.parentNode;
            var containerWidth = containerElement.clientWidth;

            if (containerWidth) {

                var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);

                jssor_1_slider.$ScaleWidth(expectedWidth);

            } else {
                window.setTimeout(ScaleSlider, 30);
            }
        }

        ScaleSlider();

        $Jssor$.$AddEvent(window, "load", ScaleSlider);
        $Jssor$.$AddEvent(window, "resize", ScaleSlider);
        $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
    };
</script>

<div class="new_hm_slider">
    <div id="jssor_1" class="jssor_1">
        <div data-u="slides" class="jssor_main_slider">
            <?php foreach ($banners as $banner) { ?>
            <?php if ($banner['link']) { ?>
            <div>
                <a href="<?php echo $banner['link']; ?>"><img width="1920" height="720" src="<?php echo $banner['image']; ?>" alt="internet magazin" /></a>
            </div>
            <?php } else { ?>
            <div>
                <img width="1920" height="720" src="<?php echo $banner['image']; ?>" alt="internet magazin" />
            </div>
            <?php } ?>
            <?php } ?>
        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb032" style="" data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
            <div data-u="prototype" class="i">
                <svg viewbox="0 0 16000 16000">
                    <circle class="b" cx="8000" cy="8000" r="5800"></circle>
                </svg>
            </div>
        </div>
        <!-- Arrow Navigator -->
        <div data-u="arrowleft" class="jssora051" style="left:25px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
            <i class="iicon-keyboard_arrow_left"></i>
        </div>
        <div data-u="arrowright" class="jssora051" style="right:25px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
            <i class="iicon-keyboard_arrow_right"></i>
        </div>
    </div>
</div>
<script type="text/javascript">jssor_1_slider_init();</script>