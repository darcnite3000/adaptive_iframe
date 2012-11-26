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
    @cssTestAIF = $('#css-test iframe').aif_enable()

test 'returns the relative background', 1, ->
  strictEqual $.aif_relatedCSS(@cssTestAIF).background.color,
              @cssTest.css('background-color'),
              'should return the background colour of the surounding element'
# module 'jQuery#awesome',
#   setup: ->
#     @elems = $('#qunit-fixture').children()
# 
# test 'is chainable', 1, ->
#   strictEqual this.elems.awesome(), this.elems, 'should be chaninable'
# 
# test 'is awesome', 1, ->
#   strictEqual this.elems.awesome().text(), 'awesomeawesomeawesome', 'should be thoroughly awesome'
# 
# module 'jQuery.awesome'
# 
# test 'is awesome', 1, ->
#   strictEqual $.awesome(), 'awesome', 'should be thoroughly awesome'
# 
# module ':awesome selector'
#   setup: ->
#     @elems = $('#qunit-fixture').children()
# 
# test 'is awesome', 1, ->
#   # Use deepEqual & .get() when comparing jQuery objects.
#   deepEqual this.elems.filter(':awesome').get(), this.elems.last().get(), 'knows awesome when it sees it'