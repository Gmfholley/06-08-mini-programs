require "minitest/autorun"
require_relative "phone_number_formatter.rb"
 
class PhoneNumberFormatterTest < Minitest::Test
  
  def test_return_phone_num_with_dashes
    assert_equal(PhoneNumberFormatter.return_phone_num_with_dashes(1234567890), "123-456-7890")
    assert_equal(PhoneNumberFormatter.return_phone_num_with_dashes("1234567890"), "123-456-7890")
  end
  
  def test_return_phone_num_with_parentheses
    assert_equal(PhoneNumberFormatter.return_phone_num_with_parentheses(1234567890), "(123) 456-7890")
    assert_equal(PhoneNumberFormatter.return_phone_num_with_parentheses("1234567890"), "(123) 456-7890")
  end
  
  def test_phone_num_right_length?
    assert_equal(PhoneNumberFormatter.phone_num_right_length?("1234567890"),true)
    assert_equal(PhoneNumberFormatter.phone_num_right_length?("12345678900"),false)
    assert_equal(PhoneNumberFormatter.phone_num_right_length?("123456789"),false)
  end
  
  def test_each_char_is_a_num?
    assert_equal(PhoneNumberFormatter.each_char_is_a_num?("1234567890"),true)
    assert_equal(PhoneNumberFormatter.each_char_is_a_num?("123456789f"),false)
    assert_equal(PhoneNumberFormatter.each_char_is_a_num?("sally"),false)
  end
  
  def test_convert_string_to_phone_num_array
    assert_equal(PhoneNumberFormatter.convert_string_to_phone_num_array("1234567890"),["123", "456", "7890"])
  end
  
  def test_return_num_as_string
    assert_equal(PhoneNumberFormatter.return_num_as_string(1234567890),"1234567890")
  end
  
end