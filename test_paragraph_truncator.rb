require "minitest/autorun"
require_relative "paragraph_truncator.rb"

class CheckSplitterTest < Minitest::Test
  # One of my specs is that the tip_amount method should blah blah blah.

  # Another spec is that the total_amount method should blah blah blah.
  
  def test_paragraph_truncator
    long_string = 'a'*100
    half_string = ParagraphTruncator.truncate(long_string, 50)
    assert_equal(half_string.length, 50)
  end
  
  def test_truncate_text_and_tail
    long_string = 'a'*100
    
    #should be a string of length 50, and the last three characters are "..."
    half_string = ParagraphTruncator.truncate_text_and_tail(long_string, 50, "...")
    
    #which should be the same as 47 characters of 'a' plus "..."
    half_string_plus_dots = 'a'*47 +'...'
    
    assert_equal(half_string_plus_dots, half_string)
  end
  
  def test_max_you_can_truncate
    long_string = 'a'*100
    #try to cut off 50 from a string of length 100.  Should be able to take off 50
    num_you_can = ParagraphTruncator.max_you_can_truncate(long_string, 50)
    assert_equal(num_you_can, 50)
    
    # try to cutt of 101 from a string of length 100.  Should only be able to take off 100
    num_you_can = ParagraphTruncator.max_you_can_truncate(long_string, 101)
    assert_equal(num_you_can, 100)
  end
  
  
  
end