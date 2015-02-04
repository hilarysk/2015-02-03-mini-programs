require "pry"
require_relative "paragraph-truncator-class.rb"


puts "What text should we truncate?"
text = gets.chomp
text_array = text.split(" ")

puts "\nHow many words do you want to show before the interruption? (Ie: 34)"
word_num = gets.chomp.to_i

until word_num <= text_array.length
  puts "Hmm, that's more than the number of words you entered in the first place. Please pick a number less than #{text_array.length}:" 
  word_num = gets.chomp
end

puts "\nWhat should it say at the bottom? (Ie: ..., Read more, Keep reading, etc.)"

cut_off = gets.chomp

new_paragraph = ParagraphTruncator.new(text, word_num, cut_off)

puts new_paragraph.truncate

binding.pry 