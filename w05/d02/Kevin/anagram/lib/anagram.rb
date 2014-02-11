# def word_value(word)
#  letters_array = ("a".."z").to_a
#  word_array = word.split('')
#  word_value = []
#  word_array.each { | letter | word_value << (letters_array.index( letter ).to_i + 1) }
#  return word_value
# end

# def same_length(word1, word2)
#   word1.length == word2.length
# end

def same_letters(word1, word2)
  word1.split('').sort == word2.split('').sort
end

def is_anagram(word1, *comparing_words)
  comparing_words.select {| word | same_letters(word1, word) }
end