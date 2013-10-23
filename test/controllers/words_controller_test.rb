require 'test_helper'
require 'mocha/setup'

class WordsControllerTest < ActionController::TestCase
  test "learn passes a random word" do
  	random_word = Word.new(pl: 'czesc', eng: 'hello')
  	Word.expects(:random).returns(random_word)
  	get :learn
  	# assert_kind_of Word, assigns('word')
  	assert_equal random_word, assigns('word')
  	assert_select	'div', /czesc/
  	assert_select 'div', /hello/
  end

end
