require "minitest/autorun"
require_relative "word_connector.rb"

class WordConnectorTest < Minitest::Test
  
  
  def test_join_this_array_as_a_sentence
    
    assert_equal("apples, oranges, and bananas", WordConnector.join_this_array_as_a_sentence(["apples", "oranges", "bananas"]))
    assert_equal("apples and oranges", WordConnector.join_this_array_as_a_sentence(["apples", "oranges"]))
    assert_equal("apples", WordConnector.join_this_array_as_a_sentence(["apples"]))
    
  end
end