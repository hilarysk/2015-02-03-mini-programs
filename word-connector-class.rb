# Class: WordConnector
#
# Makes different word combinations from an array
#
# Attributes:
# @items - Array: Contains the words to combine
#
# Public Methods:
# #print_first_n_items

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
  
  # Public: #print_first_n_items
  # Joins n number of items as specified by user with "and"
  #
  # Parameters:
  # num    - number of items to join
  # joiner - string to put in-between words
  #
  # Returns:
  # Items joined by joiner
  #
  # State Changes:
  # None
  
  def print_first_n_items(num, joiner)
    num -= 1
    return @items[0.."#{num}".to_i].join(" #{joiner} ") 
  end
end
