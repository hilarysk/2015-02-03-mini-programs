require 'minitest/autorun'
require_relative "paragraph-truncator-class.rb"
require "pry"

class ParagraphTruncatorTest < Minitest::Test
  def setup
    text = "One day we went walking along the beaches of Spain."
    @pt = ParagraphTruncator.new(text, 2, "done")
  end

  def test_print_text_method
    assert_equal("One daydone", @pt.truncate)
  end
  
  def test_wrong_input_for_text
    ptt = ParagraphTruncator.new("hello", 2, "done" )
    assert_equal("hellodone", ptt.truncate)
  end
  
  
end

binding.pry