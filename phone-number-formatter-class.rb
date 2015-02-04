require "active_support/core_ext/numeric/conversions.rb"

# Class: PhoneNumberFormatter
#
# Formats phone numbers.
#
# Attributes:
# @phone_number   - String: The user's phone number.
#
# Public Methods:
# #format_phone

class PhoneNumberFormatter
  
  # Private: #initialize
  # Creates instance variables
  #
  # Parameters:
  # @phone_number - the user's phone number
  #
  # Returns:
  # Nil
  #
  # State Changes:
  # None
  
  def initialize(phone_number)
    @phone_number = phone_number
  end
  
  # Public: #format_phone
  # Splits up phone number
  #
  # Parameters:
  # None
  #
  # Returns:
  # A string of the number w/ the correct formatting
  #
  # State Changes:
  # None
  
  def format_phone
    @phone_number.to_s(:phone, area_code: true)
  end
end
