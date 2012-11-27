###
global QUnit:false, module:false, test:false, asyncTest:false, expect:false
###
###
global start:false, stop:false ok:false, equal:false, notEqual:false, deepEqual:false
###
###
global notDeepEqual:false, strictEqual:false, notStrictEqual:false, raises:false
###
###
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
###

$ = jQuery

module 'jQuery#aif_enable'
  setup: ->
    @elems = $('#qunit-fixture .adaptable')
  
test 'is chainable', 1, ->
  strictEqual @elems.aif_enable(),
              this.elems,
              'should be chainable'

test 'marks iframes only as adaptive', 1, ->
  @elems.aif_enable()
  strictEqual $('iframe.aif-enabled').length,
              $('.aif-enabled').length,
              'should only mark iframes'
  
module 'jQuery.aif_relatedCSS'
  setup: ->
    @cssTest = $('#css-test')
    @cssTestLink = $('#css-test a')
    @cssTestAIF = $('#css-test iframe').aif_enable()

test 'returns the relative background-color', 1, ->
  strictEqual $.aif_relatedCSS(@cssTestAIF).body.background.color,
              @cssTest.css('background-color'),
              'should return the background colour of the surounding element'

test 'returns the relative font-color', 1, ->
  strictEqual $.aif_relatedCSS(@cssTestAIF).body.font.color,
              @cssTest.css('color'),
              'should return the font colour of the surounding element'

test 'returns the relative font-family', 1, ->
  strictEqual $.aif_relatedCSS(@cssTestAIF).body.font.family,
              @cssTest.css('font-family'),
              'should return the font-family of the surounding element'

test 'returns the relative link background-color', 1, ->
  strictEqual $.aif_relatedCSS(@cssTestAIF).link.background.color,
              @cssTestLink.css('background-color'),
              'should return the link background colour of the surounding element'

test 'returns the relative link font-color', 1, ->
  strictEqual $.aif_relatedCSS(@cssTestAIF).link.font.color,
              @cssTestLink.css('color'),
              'should return the link font colour of the surounding element'

test 'returns the relative link font-family', 1, ->
  strictEqual $.aif_relatedCSS(@cssTestAIF).link.font.family,
              @cssTestLink.css('font-family'),
              'should return the link font-family of the surounding element'
