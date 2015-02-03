require "pry"
require_relative "paragraph-truncator-class.rb"


puts "What text should we truncate?"
text = gets.chomp

puts "\nHow many characters do you want to show before the interruption? (Ie: 34)"
char_length = gets.chomp.to_i

puts "\nWhat should it say at the bottom? (Ie: ..., Read more, Keep reading, etc.)"

cut_off = gets.chomp

new_paragraph = ParagraphTruncator.new(text, char_length, cut_off)

puts new_paragraph.print_text

binding.pry 