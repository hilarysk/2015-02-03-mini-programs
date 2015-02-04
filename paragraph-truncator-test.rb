require 'minitest/autorun'
require_relative "paragraph-truncator-class.rb"
require "pry"

class ParagraphTruncatorTest < Minitest::Test
  def setup
    text = "One day we went walking along the beaches of Spain."
    @pt = ParagraphTruncator.new(text, 4, "Continue reading")
  end

  def test_print_text_method
    assert_equal("One  Continue reading", @pt.print_text)
  end
  
  def test_wrong_input_for_text
    ptt = ParagraphTruncator.new("hello", 5, "Continue reading")
    assert_equal("hello Continue reading", ptt.print_text)
  end
  
  
end

binding.pry