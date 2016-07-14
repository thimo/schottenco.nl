# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  # Revolution Slider
  if $('.slider-banner-container').length > 0
    $('.slider-banner-container .slider-banner-fullwidth').show().revolution
      delay: 8000
      startwidth: 1140
      startheight: 450
      navigationArrows: 'solo'
      navigationStyle: 'preview2'
      navigationHAlign: 'center'
      navigationVAlign: 'bottom'
      navigationHOffset: 0
      navigationVOffset: 20
      soloArrowLeftHalign: 'left'
      soloArrowLeftValign: 'center'
      soloArrowLeftHOffset: 0
      soloArrowLeftVOffset: 0
      soloArrowRightHalign: 'right'
      soloArrowRightValign: 'center'
      soloArrowRightHOffset: 0
      soloArrowRightVOffset: 0
      fullWidth: 'on'
      spinner: 'spinner2'
      stopLoop: 'off'
      stopAfterLoops: -1
      stopAtSlide: -1
      onHoverStop: 'off'
      shuffle: 'off'
      hideTimerBar: 'on'
      autoHeight: 'off'
      forceFullWidth: 'off'
      hideThumbsOnMobile: 'off'
      hideNavDelayOnMobile: 1500
      hideBulletsOnMobile: 'off'
      hideArrowsOnMobile: 'off'
      hideThumbsUnderResolution: 0
      hideSliderAtLimit: 0
      hideCaptionAtLimit: 0
      hideAllCaptionAtLilmit: 0
      startWithSlide: 0
  return
