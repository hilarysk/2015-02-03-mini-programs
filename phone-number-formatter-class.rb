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
    areacode = @phone_number[0, 3]
    firstpart = @phone_number[3, 3]
    secondpart = @phone_number[6, 4]
    return "(#{areacode}) #{firstpart}-#{secondpart}"
  end
end
