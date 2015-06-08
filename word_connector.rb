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
      when array.length - 1
        sentence += " and #{element}"
      when 0
        sentence = "#{element}"
      else
        sentence += ", #{element}"
      end
    end
    sentence
  end

end