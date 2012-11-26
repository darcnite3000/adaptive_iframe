###
adaptive_iframe
https://github.com/darcnite3000/adaptive_iframe

Copyright (c) 2012 Tristan Smith
Licensed under the MIT license.
###

$ = jQuery

$.fn.aif_enable = ->
  @.filter('iframe').each ->
    $(this).addClass('aif-enabled')
  this

$.aif_relatedCSS = (element)->
  background:
    color: $(element).parent().css('background-color')
