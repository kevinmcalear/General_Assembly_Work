require 'pry'

def longest_word(sentence)

  sentence.scan(/\w+/).split(' ').max
#  word_array = sentence.split(' ')

#  clean_word_array = word_array.map { | word | word.gsub(/\W/, '') }
# binding.pry
#  clean_word_array.group_by(&:size).max.last[0]

end

