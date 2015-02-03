require "pry"
require_relative "phone-number-formatter-class.rb"

puts "What's your phone number? (Ex: 4452326699)"
phone_number = gets.chomp.gsub(/\s+/, "")

until phone_number.length == 10 && phone_number.to_i != 0
  puts "Please enter your phone number again. (Ex: 4452326699)"
  phone_number = gets.chomp.gsub(/\s+/, "")
end

number = PhoneNumberFormatter.new(phone_number)

puts number.format_phone


binding.pry