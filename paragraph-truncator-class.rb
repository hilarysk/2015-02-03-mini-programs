# Class: ParagraphTruncator
#
# Truncates a paragraph
#
# Attributes:
# @text        - String: The paragraph to truncate.
# @char_length - Integer: Number of characters to leave showing.
# @cut_off     - String: Text to show at end of truncated paragraph.
#
# Public Methods:
# #print_text


class ParagraphTruncator
  
  # Private: #initialize
  # Creates instance variables
  #
  # Parameters:
  # @text        - The paragraph to truncate.
  # @char_length - Number of characters to leave showing.
  # @cut_off     - Text to show at end of truncated paragraph.
  #
  # Returns:
  # Nil
  #
  # State Changes:
  # Sets instance variables @text, @char_length, @cut_off
  
  def initialize (text, char_length, cut_off)
    @text = text
    @char_length = char_length
    @cut_off = cut_off
  end
  
  # Public: #print_text
  # Creates a variable to represent the shortened text
  #
  # Parameters:
  # None
  #
  # Returns:
  # The shortened text and user's choice for ending text
  #
  # State Changes:
  # None
  
  def print_text
   shortened_text = @text[0, @char_length]
   return "#{shortened_text} #{@cut_off}"
 end
end
