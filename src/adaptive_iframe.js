
/*
adaptive_iframe
https://github.com/darcnite3000/adaptive_iframe

Copyright (c) 2012 Tristan Smith
Licensed under the MIT license.
*/


(function() {
  var $, getBodyCSS, getLinkCSS;

  $ = jQuery;

  $.fn.aif_enable = function() {
    this.filter('iframe').each(function() {
      return $(this).addClass('aif-enabled');
    });
    return this;
  };

  getBodyCSS = function(element) {
    return {
      background: {
        color: element.css('background-color')
      },
      font: {
        color: element.css('color'),
        family: element.css('font-family')
      }
    };
  };

  getLinkCSS = function(element) {
    var css, test;
    test = $('<a>test</a>');
    element.append(test);
    css = test.css();
    test.remove();
    return {
      background: {
        color: null
      },
      font: {
        color: null,
        family: null
      }
    };
  };

  $.aif_relatedCSS = function(element) {
    var $parent;
    $parent = $(element).parent();
    return {
      body: getBodyCSS($parent),
      link: getLinkCSS($parent)
    };
  };

}).call(this);
