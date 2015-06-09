module WordConnector
  
  # takes an array and makes it into an oxford sentence element
  #   ["apples", "oranges", "grapes"] => "apples, oranges and grapes"
  #
  # array - Array
  #
  # returns string
  def self.join_this_array_as_a_sentence(array)
    case array.length
    when 1
      sentence = array[0]
    when 2
      sentence = "#{array[0]} and #{array[1]}"
    else 
      sentence = array[0..-2].join(", ") + ", and " + array[-1]
    end
  end

  
end