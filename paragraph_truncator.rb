#ParagraphTruncator

#   Takes a long string (i.e. a paragraph) and truncates it to X characters and sticks a ... at the end.
#   Should be able to take an argument to define X and also define an alternative set of characters for the ... (e.g. "Read More")

module ParagraphTruncator
    
  # Truncates a string to num_chars (including tail)
  # string    - string
  # num_chars - integer
  # tail      - string of what to add to the tail
  #
  # returns a string   
  def self.truncate_text_and_tail(string, num_chars, tail)
    # total length of string = num_chars + tail.length.  
    # so the length of the string from string is num_chars - tail.length
    len_string = num_chars - tail.length
    if len_string < 0
      tail
    else
      "#{self.truncate(string, len_string)}#{tail}"
    end
  end
  
  # Truncates string to number of chars supplied by the user
  #
  # string    - String
  # num_chars - integer of number of chars to truncate to
  #
  # returns a string  
  def self.truncate(string, num_chars)
    # weird results if the number of chars is > string.length
    # check that first in max_you_can_truncate
    string[0..max_you_can_truncate(string, num_chars)- 1]
  end
  
  # checks the maximum number of characters you can truncate from this string
  # 
  # string - String
  # num_chars - Integer of how many you want to truncate
  #
  # returns Integer
  def self.max_you_can_truncate(string, num_chars_to_cut)
    [num_chars_to_cut, string.length].min
  end 

end