
/*
adaptive_iframe
https://github.com/darcnite3000/adaptive_iframe

Copyright (c) 2012 Tristan Smith
Licensed under the MIT license.
*/


(function() {
  var $;

  $ = jQuery;

  $.fn.aif_enable = function() {
    this.filter('iframe').each(function() {
      return $(this).addClass('aif-enabled');
    });
    return this;
  };

  $.aif_relatedCSS = function(element) {
    return {
      background: {
        color: $(element).parent().css('background-color')
      }
    };
  };

}).call(this);
