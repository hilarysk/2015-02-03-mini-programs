require "pry"
require_relative "word-connector-class.rb"



puts "Give me at least two items, separated by a comma:"

items = gets.chomp.split(", ")

until items.count >= 2
  puts "Oops, you didn't give me enough items. Please enter a few more, separated by a comma:"
  more_items = gets.chomp.split(", ")
  items.concat(more_items)
end

puts "How many of the items, starting the beginning, would you like joined together in a list?"

num = gets.chomp.to_i

puts "Would you like them joined with \"and\"? \"or\"? Something else?"

joiner = gets.chomp

words = WordConnector.new(items)

puts words.print_first_n_items(num, joiner)

binding.pry