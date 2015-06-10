require "active_support"
require "active_support/core_ext/array/conversions.rb"

module WordConnector
  
  # takes an array and makes it into an oxford sentence element
  #   ["apples", "oranges", "grapes"] => "apples, oranges and grapes"
  #
  # array - Array
  #
  # returns string
  def self.join_this_array_as_a_sentence(array)
    array.to_sentence
  end

  
end