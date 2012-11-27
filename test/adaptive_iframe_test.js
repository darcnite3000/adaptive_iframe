
/*
global QUnit:false, module:false, test:false, asyncTest:false, expect:false
*/


/*
global start:false, stop:false ok:false, equal:false, notEqual:false, deepEqual:false
*/


/*
global notDeepEqual:false, strictEqual:false, notStrictEqual:false, raises:false
*/


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
      this.cssTestLink = $('#css-test a');
      return this.cssTestAIF = $('#css-test iframe').aif_enable();
    }
  });

  test('returns the relative background-color', 1, function() {
    return strictEqual($.aif_relatedCSS(this.cssTestAIF).body.background.color, this.cssTest.css('background-color'), 'should return the background colour of the surounding element');
  });

  test('returns the relative font-color', 1, function() {
    return strictEqual($.aif_relatedCSS(this.cssTestAIF).body.font.color, this.cssTest.css('color'), 'should return the font colour of the surounding element');
  });

  test('returns the relative font-family', 1, function() {
    return strictEqual($.aif_relatedCSS(this.cssTestAIF).body.font.family, this.cssTest.css('font-family'), 'should return the font-family of the surounding element');
  });

  test('returns the relative link background-color', 1, function() {
    return strictEqual($.aif_relatedCSS(this.cssTestAIF).link.background.color, this.cssTestLink.css('background-color'), 'should return the link background colour of the surounding element');
  });

  test('returns the relative link font-color', 1, function() {
    return strictEqual($.aif_relatedCSS(this.cssTestAIF).link.font.color, this.cssTestLink.css('color'), 'should return the link font colour of the surounding element');
  });

  test('returns the relative link font-family', 1, function() {
    return strictEqual($.aif_relatedCSS(this.cssTestAIF).link.font.family, this.cssTestLink.css('font-family'), 'should return the link font-family of the surounding element');
  });

}).call(this);
