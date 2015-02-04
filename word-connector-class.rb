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
  
  # Public: #print_two_items
  # Joins n number of items as specified by user with "and"
  #
  # Parameters:
  # None
  #
  # Returns:
  # Items joined by "and"
  #
  # State Changes:
  # None
  
  def print_two_items
    return @items[0..1].join(" and ") 
  end
  
  # Public: #print_three_or_more_items
  # Joins more than two items in a list separated by commas and "and"
  #
  # Parameters:
  # None
  #
  # Returns:
  # Items joined by commas and "and"
  #
  # State Changes:
  # None
  
  def print_three_or_more_items
    num = @items.length #number of items in array
    num -=2 #-1 to bring to 0 starting point, -2 to ignore last item
    comma_part = @items[0.."#{num}".to_i].join(", ")
    and_part = @items[-1]
    return "#{comma_part}, and #{and_part}"
  end

  
  
end
