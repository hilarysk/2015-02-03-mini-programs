require "active_support/core_ext/numeric/conversions.rb"

# Class: WordConnector
#
# Makes different word combinations from an array
#
# Attributes:
# @items - Array: Contains the words to combine
#
# Public Methods:
# #print_2_items
# #print_3_or_more_items

class WordConnector
  
  # Private: #initialize
  # Creates instance variables
  #
  # Parameters:
  # @items - words to combine
  #
  # Returns:
  # Nil
  #
  # State Changes:
  # Sets instance variable @items
  
  def initialize(items)
    @items = items
  end
  
  # Public: #print_items
  # Prints items in a list separated by commas and "and"
  #
  # Parameters:
  # None
  #
  # Returns:
  # Items joined by commas and "and"
  #
  # State Changes:
  # None
  
  def print_items
    @items.to_sentence
  end
  

  # This method accepts three options:
  #
  # :two_words_connector: What is used for arrays of length 2. Default is " and ".
  # :words_connector: What is used to join the elements of arrays with 3 or more elements, except for the last two. Default is ", ".
  # :last_word_connector: What is used to join the last items of an array with 3 or more elements. Default is ", and ".
  #
  #
  # # Public: #print_two_items
  # # Joins n number of items as specified by user with "and"
  # #
  # # Parameters:
  # # None
  # #
  # # Returns:
  # # Items joined by "and"
  # #
  # # State Changes:
  # # None
  #
  # def print_two_items
  #   return @items[0..1].join(" and ")
  # end
  
  
end
