def reverse_words(sentence)
  words_array = sentence.split(' ')
  reversed_sentence = words_array.reverse
  reversed_sentence.join(' ')
end

def reverse_each_word(sentence)
  words_array = sentence.split(' ')
  reversed_words = words_array.map { | word | word.reverse }
  reversed_words.join(' ')
end