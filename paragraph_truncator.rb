#ParagraphTruncator

#   Takes a long string (i.e. a paragraph) and truncates it to X characters and sticks a ... at the end.
#   Should be able to take an argument to define X and also define an alternative set of characters for the ... (e.g. "Read More")
require "active_support"
require "active_support/core_ext/string/filters.rb"
module ParagraphTruncator
    
  # Truncates a string to num_chars (including tail)
  # string    - string
  # num_chars - integer
  # tail      - string of what to add to the tail
  #
  # returns a string   
  def self.truncate_text_and_tail(string, num_chars, tail=nil)
    if tail.nil?
      string.truncate(num_chars)
    else
      string.truncate(num_chars, omission: tail)
    end
  end
  
  def self.truncate(string, num_chars)
    string.truncate(num_chars)
  end

end