
/*
    ======== A Handy Little QUnit Reference ========
    http://docs.jquery.com/QUnit

    Test methods:
      expect(numAssertions)
      stop(increment)
      start(decrement)
    Test assertions:
      ok(value, [message])
      equal(actual, expected, [message])
      notEqual(actual, expected, [message])
      deepEqual(actual, expected, [message])
      notDeepEqual(actual, expected, [message])
      strictEqual(actual, expected, [message])
      notStrictEqual(actual, expected, [message])
      raises(block, [expected], [message])
*/


(function() {
  var $;

  $ = jQuery;

  module('jQuery#aif_enable', {
    setup: function() {
      return this.elems = $('#qunit-fixture .adaptable');
    }
  });

  test('is chainable', 1, function() {
    return strictEqual(this.elems.aif_enable(), this.elems, 'should be chainable');
  });

  test('marks iframes only as adaptive', 1, function() {
    this.elems.aif_enable();
    return strictEqual($('iframe.aif-enabled').length, $('.aif-enabled').length, 'should only mark iframes');
  });

  module('jQuery.aif_relatedCSS', {
    setup: function() {
      this.cssTest = $('#css-test');
      return this.cssTestAIF = $('#css-test iframe').aif_enable();
    }
  });

  test('returns the relative background', 1, function() {
    return strictEqual($.aif_relatedCSS(this.cssTestAIF).background.color, this.cssTest.css('background-color'), 'should return the background colour of the surounding element');
  });

}).call(this);
