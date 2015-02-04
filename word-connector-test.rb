require 'minitest/autorun'
require_relative "word-connector-class.rb"
require "pry"

class WordConnectorTest < Minitest::Test
  def setup
    @wc = WordConnector.new(["simon", "fish", "cat"])
  end
  
  def test_print_three_items_method
    assert_equal("simon, fish, and cat", @wc.print_items)
  end
  
  def test_print_two_items_method
    wcc = WordConnector.new(["simon", "cat"])
    assert_equal("simon and cat", wcc.print_items)
  end
  
  # def test_wrong_input_for_text
#     ptt = ParagraphTruncator.new("hello", 5, "Continue reading")
#     assert_equal("hello Continue reading", ptt.print_text)
#   end
#
  
end

binding.pry