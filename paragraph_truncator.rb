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
  def self.truncate_text_and_and_tail(string, num_chars, tail)
    "#{self.truncate(string, num_chars - tail.length)}#{tail}"
  end
    
    
  # Truncates string to number of chars supplied by the user
  #
  # string    - String
  # num_chars - integer of number of chars to truncate to
  #
  # returns a string  
  def self.truncate(string, num_chars)
    string[0..[num_chars, string.length].min]
  end
    

end