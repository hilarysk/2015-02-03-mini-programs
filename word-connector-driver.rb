require "pry"
require_relative "word-connector-class.rb"



puts "Give me at least two items, separated by a comma:"

@items = gets.chomp.split(",")

until @items.length >= 2
  puts "Oops, you didn't give me enough items. Please enter a few more, separated by a comma:"
  more_items = gets.chomp.split(", ")
  @items.concat(more_items)
end

words = WordConnector.new(@items)

if @items.length == 2 
  puts words.print_two_items
else 
  puts words.print_three_or_more_items
end
  



binding.pry