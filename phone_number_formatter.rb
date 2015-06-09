module PhoneNumberFormatter
  
  # returns a number formatted as a phone number with dashes
  #   => 123-456-7890
  #
  # number - number or string
  #
  def self.return_phone_num_with_dashes(number)
   num = return_num_as_string(number)
    if each_char_is_a_num?(num)
      if phone_num_right_length?(num)
        join_phone_num_array_by_dashes(convert_string_to_phone_num_array(num))
      else
        not_right_num_digits
      end
    else
      not_a_num_error
    end
  end
  
  # returns a number formatted as a phone number with dashes
  #   => (123) 456-7890
  #
  # number - number or string
  #
  def self.return_phone_num_with_parentheses(number)
    num = return_num_as_string(number)
    if each_char_is_a_num?(num)
      if phone_num_right_length?(num)
        return_phone_num_array_with_parenthetical_notation(convert_string_to_phone_num_array(num))
      else
        not_right_num_digits
      end
    else
      not_a_num_error
    end
  end
  
  # joins the phone number array with dashes
  #
  # array - Array
  #
  # returns String
  def self.join_phone_num_array_by_dashes(array)
    array.join('-')
  end
  
  def self.return_phone_num_array_with_parenthetical_notation(array)
    "(#{array[0]}) #{array[1]}-#{array[2]}"
  end
  
  # returns an Array of size 3 in phone number format
  # => 1234567890 --> [123, 456, 7890] corresponding to area code, first three, last four digits in a phone number
  #
  # string - String
  #
  # returns Array
  def self.convert_string_to_phone_num_array(string)
    [string[0..2], string[3..5], string[6..9]]
  end
  
  # returns input as a String
  #
  # num could be anything but probably a FixedNum
  #
  # returns String
  def self.return_num_as_string(num)
    num.to_s
  end
  
  # checks whether phone number is the right length
  #
  # string - String
  #
  # returns boolean
  def self.phone_num_right_length?(string)
    string.length == 10
  end
  
  # checks whether each char in the string is an Integer
  #
  # string - String
  #
  # returns boolean
  def self.each_char_is_a_num?(string)
    is_num = true
    string.each_byte do |c|
      unless ascii_of_nums.include?(c)
        is_num = false
      end
    end
    is_num
  end
  
  # Array of the ascii numbers of number characters
  def self.ascii_of_nums
    (48..57)
  end
  # a string saying it wasn't a number
  def self.not_a_num_error
    "Not a number"
  end
  
  # a string saying it wasn't the correct number of digits
  def self.not_right_num_digits
    "Not the right number of digits."
  end
  
end