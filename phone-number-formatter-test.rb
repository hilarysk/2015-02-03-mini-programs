require 'minitest/autorun'
require_relative "phone-number-formatter-class.rb"
require "pry"

class PhoneFormatterTest < Minitest::Test
  def setup
    @pf = PhoneNumberFormatter.new("4147042787")
  end

  def test_format_phone_method
    assert_equal("(414) 704-2787", @pf.format_phone)
  end  
  
end

binding.pry
