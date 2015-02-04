require "active_support/core_ext/string/filters.rb"

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
# #truncate


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
  
  def initialize(text, word_num, cut_off)
    @word_num = word_num
    @cut_off = cut_off
    @text = text
  end
  
  # Public: #truncate
  # Basically just runs the ActiveSupport method #truncate_words
  #
  # Parameters:
  # None
  #
  # Returns:
  # The shortened text and user's choice for ending text
  #
  # State Changes:
  # None
  
  def truncate
    @text.truncate_words(@word_num, omission: "#{@cut_off}")
 end
end
