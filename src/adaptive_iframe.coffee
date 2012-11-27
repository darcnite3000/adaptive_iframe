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

getBodyCSS = (element)->
  background:
    color: element.css('background-color')
  font:
    color: element.css('color')
    family: element.css('font-family')

getLinkCSS = (element)->
  test = $('<a>test</a>')
  element.append(test)
  css = test.css()
  test.remove()
  background:
    color: null
  font:
    color: null
    family: null

$.aif_relatedCSS = (element)->
  $parent = $(element).parent()
  body: getBodyCSS($parent)
  link: getLinkCSS($parent)