module WordConnector
  
  # takes an array and makes it into an oxford sentence element
  #   ["apples", "oranges", "grapes"] => "apples, oranges, and grapes"
  #
  # array - Array
  #
  # returns string
  def self.join_this_array_as_a_sentence(array)
    sentence = ""
    array.each_with_index do |element, index|
      case index
      # for last element, remove comma and add 'and'
      when array.length - 1  
        sentence += " and #{element}"
      # for first element, start the sentence
      when 0
        sentence = "#{element}"
      # for all other elements, use a comma first
      else
        sentence += ", #{element}"
      end
    end
    sentence
  end

  
end